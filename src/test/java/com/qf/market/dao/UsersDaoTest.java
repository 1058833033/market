package com.qf.market.dao;

import com.qf.market.dto.UsersInfoDTO;
import com.qf.market.pojo.Users;
import com.qf.market.service.OrdersService;
import com.qf.market.service.UsersService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class UsersDaoTest {
    @Resource
    private UsersDao usersDao;
    @Resource
    private UsersService usersService;

    @Test
    public void queryById() {
        Users users = usersDao.queryById(1);
        System.out.println(users);
    }

    @Test
    public void queryAllByLimit() {
        List<Users> users = usersDao.queryAllByLimit(0, 5);
        for (Users user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void queryAll() {
        List<Users> users = usersDao.queryAll(null);
        for (Users user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void re1() {

        UsersInfoDTO usersInfoDTO = usersService.queryUsersInfoDTO(1).get(0);
        System.out.println(usersInfoDTO);
        //model.addAttribute("user", usersInfoDTO);

    }

}