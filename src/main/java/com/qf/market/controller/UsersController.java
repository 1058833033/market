package com.qf.market.controller;

import com.qf.market.dto.UsersInfoDTO;
import com.qf.market.pojo.Address;
import com.qf.market.pojo.Users;
import com.qf.market.service.AddressService;
import com.qf.market.service.UsersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * (Users)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Controller
public class UsersController {
    /**
     * 服务对象
     */
    @Resource
    private UsersService usersService;
    @Resource
    private AddressService addressService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    /*@GetMapping("selectOne")
    public Users selectOne(Integer id) {
        return this.usersService.queryById(id);
    }*/

    // 用户注册
    @PostMapping("register")
    public String register(Users users, @RequestParam(name = "userName") String userName) {
        List<Users> list = this.usersService.queryAll(new Users(null, userName, null, null, null, null, null, null));
        if (list.size() == 0) {
            this.usersService.insert(users);
        }
        return "redirect:/index";

    }

    @GetMapping("checkLogin")
    public void checkLogin(@RequestParam("userName") String userName,
                           @RequestParam("password") String password,
                           HttpServletResponse response) {
        PrintWriter out = null;
        String msg = "yes";
        try {
            out = response.getWriter();
            Users users = new Users(null, userName, password, null, null, null, null, null);
            List<Users> list = this.usersService.queryAll(users);
            if (list.size() == 0) {
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

    // 用户登录
    @PostMapping("userLogin")
    public String userLogin(Users users, HttpSession session, HttpServletResponse response) {
        System.out.println(users);
        List<Users> list = this.usersService.queryAll(users);
        if (list.size() != 0) {
            session.setAttribute("users", list.get(0));
        }
        return "redirect:index";
    }

    // 用户注销
    @GetMapping("userLogout")
    public String userLogout(HttpSession session) {
        if (session != null) {
            session.removeAttribute("users");
        }
        return "index";
    }

    // 显示用户信息
    @GetMapping("getUserInfo")
    public String userInfo(HttpSession session, Model model) {
        Users users = (Users) session.getAttribute("users");
        List<UsersInfoDTO> usersInfoDTOS = usersService.queryUsersInfoDTO(users.getUserId());
        UsersInfoDTO usersInfoDTO = usersInfoDTOS.get(usersInfoDTOS.size() - 1);
        model.addAttribute("user", usersInfoDTO);
        return "userInfo";
    }

    // 更新用户信息
    @PostMapping("updateUser")
    public String updateUser(UsersInfoDTO usersInfo, Users users) {
        addressService.insert(new Address(null, usersInfo.getUserId(),
                usersInfo.getProvince(), usersInfo.getCity(), usersInfo.getTownship(), usersInfo.getDetail(), null));
        usersService.update(users);
        return "redirect:getUserInfo";
    }


}