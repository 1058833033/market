package com.qf.market.controller;

import com.qf.market.pojo.*;
import com.qf.market.service.AddressService;
import com.qf.market.service.OrderDetialService;
import com.qf.market.service.OrdersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * (Orders)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Controller
public class OrdersController {
    /**
     * 服务对象
     */
    @Resource
    private OrdersService ordersService;
    @Resource
    private OrderDetialService orderDetialService;
    @Resource
    private AddressService addressService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    /*@GetMapping("selectOne")
    public Orders selectOne(Integer id) {
        return this.ordersService.queryById(id);
    }*/

    // 添加订单与订单详情
    @PostMapping("addOrders")
    public String payMoney(@RequestParam(value = "goods", required = false) List<Integer> fdids,
                           HttpSession session, Model model) {
        if (fdids == null) {
            return "cart";
        }
        Map<Integer, CartItem> cart = (Map<Integer, CartItem>) session.getAttribute("cart");
        Object oUsers = session.getAttribute("users");
        if (oUsers == null) {
            return "cart";
        }
        Users users = (Users) oUsers;
        // 封装购物车中选中的商品条目
        List<CartItem> cartItems = new ArrayList<>();
        Double totalPrice = 0.0;
        for (int i = 0; i < fdids.size(); i++) {
            cartItems.add(cart.get(fdids.get(i)));
        }
        for (int i = 0; i < cartItems.size(); i++) {
            totalPrice += cartItems.get(i).getFreshGoods().getPrice() * cartItems.get(i).getCount()
                    * cartItems.get(i).getFreshGoods().getDiscount() / 100;
        }
        // 添加订单到数据库
        Orders orders = ordersService.insert(new Orders(null, users.getUserId(), null,
                totalPrice, 0, 0));
        // 添加订单详情到数据库
        for (int i = 0; i < cartItems.size(); i++) {
            orderDetialService.insert(new OrderDetial(null, orders.getOid(), cartItems.get(i).getFreshGoods().getFdid(),
                    cartItems.get(i).getCount()));
        }
        return "redirect:gotoOrders";
    }

    // 得到用户所有订单
    @GetMapping("gotoOrders")
    public String gotoOrders(HttpSession session, Model model) {
        Users users = (Users) session.getAttribute("users");
        List<Orders> ordersList = ordersService.queryAll(new Orders(null, users.getUserId(), null, null, null, null));
        model.addAttribute("orders", ordersList);
        List<Address> addrList = addressService.queryAll(new Address(null, users.getUserId(), null, null, null, null
                , null));
        Address addr = null;
        if (addrList.size() != 0) {
            addr = addrList.get(addrList.size() - 1);
        }
        model.addAttribute("orders", ordersList);
        model.addAttribute("addr", addr);
        return "orders";
    }

    @PostMapping("deleteOrders")
    public String deleteOrders(@RequestParam(value = "orders", required = false) List<Integer> oids) {
        if (oids == null) {
            return "redirect:gotoOrders";
        }
        for (int i = 0; i < oids.size(); i++) {
            ordersService.deleteById(oids.get(i));
        }
        return "redirect:gotoOrders";
    }
}