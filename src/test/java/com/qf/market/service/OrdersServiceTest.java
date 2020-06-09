package com.qf.market.service;

import com.qf.market.dto.DetailDTO;
import com.qf.market.pojo.Orders;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class OrdersServiceTest {
    @Resource
    private OrdersService ordersService;
    @Resource
    private OrderDetialService orderDetialService;

    @Test
    public void insert() {
        ordersService.insert(new Orders(null, 2, null, 21.21, 1, 2));
    }

    @Test
    public void ordersList() {
        List<DetailDTO> detailDTOS = orderDetialService.queryDetailDTO(34);
        System.out.println(detailDTOS);
    }
}