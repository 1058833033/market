package com.qf.market.controller;

import com.qf.market.pojo.Users;
import com.qf.market.service.UsersService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author: ChenJie
 * @Date: 2020/3/28 17:05
 * Description:
 */
@Controller
public class CheckUser {
    @Resource
    private UsersService usersService;

    // 注册提示
    @GetMapping("checkUser")
    public void checkUser(@RequestParam("userName") String userName, HttpServletResponse response) {
        List<Users> users = usersService.queryAll(new Users(null, userName, null, null, null, null, null, null));
        String msg = "yes";
        PrintWriter out = null;
        try {
            out = response.getWriter();
            if (users.size() != 0) {
                msg = "no";
            }
            out.write(msg);
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            out.close();
        }
    }

}
