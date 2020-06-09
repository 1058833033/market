package com.qf.market.controller;

import com.qf.market.dto.DetailDTO;
import com.qf.market.pojo.FreshGoods;
import com.qf.market.pojo.OrderDetial;
import com.qf.market.service.FreshGoodsService;
import com.qf.market.service.OrderDetialService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * (OrderDetial)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Controller
public class OrderDetialController {
    /**
     * 服务对象
     */
    @Resource
    private OrderDetialService orderDetialService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    /*@GetMapping("selectOne")
    public OrderDetial selectOne(Integer id) {
        return this.orderDetialService.queryById(id);
    }*/
    @GetMapping("ordersDetail")
    public String ordersList(@RequestParam("oid") Integer oid, Model model) {
        List<DetailDTO> detailDTOS = orderDetialService.queryDetailDTO(oid);
        for (DetailDTO detailDTO : detailDTOS) {
            detailDTO.setImg(detailDTO.getImg().split("-")[0]);
        }
        model.addAttribute("freshGoods", detailDTOS);
        return "orderDetail";
    }

}