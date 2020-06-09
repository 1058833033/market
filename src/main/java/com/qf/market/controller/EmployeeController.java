package com.qf.market.controller;

import com.qf.market.pojo.Employee;
import com.qf.market.pojo.FreshGoods;
import com.qf.market.service.EmployeeService;
import com.qf.market.service.FreshGoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (Employee)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Controller
public class EmployeeController {
    /**
     * 服务对象
     */
    @Resource
    private EmployeeService employeeService;
    @Resource
    private FreshGoodsService freshGoodsService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    /*@GetMapping("selectOne")
    public Employee selectOne(Integer id) {
        return this.employeeService.queryById(id);
    }*/

    // 首页面
    @GetMapping("adminIndex")
    public String gotoAdminIndex(@RequestParam(value = "gtid", required = false) Integer gtid,
                                 @RequestParam(value = "goodName", required = false) String goodName,
                                 @RequestParam(value = "cp", defaultValue = "1") int currentPage,
                                 @RequestParam(value = "ps", defaultValue = "9") int pageSize,
                                 HttpSession session, Model model) {
        int result = freshGoodsService.getTotalRows(gtid, goodName);
        int totalPage = result % pageSize == 0 ? result / pageSize : result / pageSize + 1;
        session.setAttribute("totalPage", totalPage);
        currentPage = currentPage > totalPage ? totalPage : currentPage;
        currentPage = currentPage < 1 ? 1 : currentPage;
        pageSize = pageSize < 6 ? 6 : pageSize;
        session.setAttribute("currentPage", currentPage);
        int offset = (currentPage - 1) * pageSize;
        List<FreshGoods> list = freshGoodsService.queryAllByLimit(goodName, gtid, offset, pageSize);
        Map<Integer, String> imgs = new HashMap<>();
        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg().split("-")[0];
            imgs.put(freshGoods.getFdid(), img);
        }
        model.addAttribute("goodName", goodName);
        model.addAttribute("freshGoods", list);
        model.addAttribute("imgs", imgs);
        return "adminIndex";
    }

    // 后台员工登录
    @PostMapping("empLogin")
    public String empLogin(Employee employee, HttpSession session) {
        List<Employee> employees = employeeService.queryAll(employee);
        Employee emp = null;
        if (employees.size() != 0) {
            emp = employees.get(0);
        }
        session.setAttribute("emp", emp);
        return "redirect:adminIndex";
    }

    // 后台员工注销
    @GetMapping("empLogout")
    public String userLogout(HttpSession session) {
        Object employee = session.getAttribute("emp");
        if (employee != null) {
            Employee emp = (Employee) employee;
            session.removeAttribute("emp");
        }
        return "redirect:adminIndex";
    }

    // 进入员工信息页面
    @GetMapping("gotoEmpInfo")
    public String gotoEmpInfo() {
        return "empInfo";
    }

    // 后台员工信息页面更新
    @PostMapping("updateEmp")
    public String getEmpInfo(Employee emp, HttpSession session) {
        Employee employee = employeeService.update(emp);
        System.out.println(employee);
        session.setAttribute("emp", employee);
        return "redirect:gotoEmpInfo";
    }
}