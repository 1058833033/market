package com.qf.market.controller;

import com.qf.market.pojo.CartItem;
import com.qf.market.pojo.FreshGoods;
import com.qf.market.service.FreshGoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * (Cart)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:20
 */
@Controller
public class CartController {
    /**
     * 服务对象
     */
    @Resource
    private FreshGoodsService freshGoodsService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
   /* @GetMapping("selectOne")
    public Cart selectOne(Integer id) {
        return this.cartService.queryById(id);
    }*/

    // 购物车添加商品
    @PostMapping("cart")
    public String addCart(@RequestParam(value = "fdid", required = false) Integer fdid,
                          HttpSession session, Model model) {
        Map<Integer, CartItem> cart = null;
        Object oCart = session.getAttribute("cart");
        // 用于添加图片
        Map<Integer, String> imgs = new HashMap<>();

        // 不使用添加功能进入购物车的时候
        if (fdid == null) {
            return "cart";
        }
        FreshGoods freshGoods = freshGoodsService.queryById(fdid);
        if (oCart == null) {
            cart = new HashMap<>();
            CartItem cartItem = new CartItem();
            cartItem.setCount(1);
            cartItem.setFreshGoods(freshGoods);
            cart.put(fdid, cartItem);
        } else {
            cart = (Map<Integer, CartItem>) oCart;
            CartItem cartItem = null;
            if (cart.containsKey(fdid)) {
                cartItem = cart.get(fdid);
                cartItem.setCount(cartItem.getCount() + 1);
            } else {
                cartItem = new CartItem();
                cartItem.setCount(1);
                cartItem.setFreshGoods(freshGoods);
            }
            cart.put(fdid, cartItem);
        }

        for (Integer key : cart.keySet()) {
            String img = cart.get(key).getFreshGoods().getImg().split("-")[0];
            imgs.put(cart.get(key).getFreshGoods().getFdid(), img);
        }
        session.setAttribute("imgs", imgs);
        session.setAttribute("cart", cart);
        return "cart";
    }

}