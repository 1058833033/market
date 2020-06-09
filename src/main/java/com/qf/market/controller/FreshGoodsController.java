package com.qf.market.controller;

import com.qf.market.pojo.FreshGoods;
import com.qf.market.pojo.GoodType;
import com.qf.market.service.FreshGoodsService;
import com.qf.market.service.GoodTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (FreshGoods)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Controller
public class FreshGoodsController {
    /**
     * 服务对象
     */
    @Resource
    private FreshGoodsService freshGoodsService;
    @Resource
    private GoodTypeService goodTypeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public FreshGoods selectOne(Integer id) {
        return this.freshGoodsService.queryById(id);
    }

    // 展示商品
    @GetMapping("getFreshGoods")
    public String getFreshGoods(@RequestParam(value = "gtid") Integer gtid, Model model,
                                @RequestParam(value = "cp", defaultValue = "1") int currentPage,
                                @RequestParam(value = "ps", defaultValue = "9") int pageSize,
                                HttpSession session) {
        int result = freshGoodsService.getTotalRows(gtid, null);
        if (gtid == 13) {
            result = freshGoodsService.queryAll(null).size();
        }
        int totalPage = result % pageSize == 0 ? result / pageSize : result / pageSize + 1;
        session.setAttribute("totalPage", totalPage);
        currentPage = currentPage > totalPage ? totalPage : currentPage;
        currentPage = currentPage < 1 ? 1 : currentPage;
        pageSize = pageSize < 6 ? 6 : pageSize;
        session.setAttribute("currentPage", currentPage);
        int offset = (currentPage - 1) * pageSize;
        List<FreshGoods> list = null;
        if (gtid == 13) {
            list = freshGoodsService.queryAllByLimit(null, null, offset, pageSize);
        } else {
            list = freshGoodsService.queryAllByLimit(null, gtid, offset, pageSize);
        }
        GoodType goodType = goodTypeService.queryById(gtid);
        Map<Integer, String> imgs = new HashMap<>();
        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg().split("-")[0];
            imgs.put(freshGoods.getFdid(), img);
        }
        model.addAttribute("goodType", goodType);
        model.addAttribute("freshGoods", list);
        model.addAttribute("imgs", imgs);
        return "product";
    }

    // 展示商品详情
    @GetMapping("getGoodDetailsByFdid")
    public String getGoodDetailsByFdid(Model model, @RequestParam(value = "fdid") Integer fdid) {
        FreshGoods freshGoods = selectOne(fdid);
        String[] imgs = freshGoods.getImg().split("-");
        model.addAttribute("freshGoods", freshGoods);
        model.addAttribute("imgs", imgs);
        return "single";
    }

    // 模糊分页查询（大查询与小查询都有）
    @GetMapping("getBigSouSuoGoods")
    public String getBigSouSuoGoods(@RequestParam(value = "gtid", defaultValue = "13") Integer gtid,
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
        if (gtid == 13) {
            gtid = null;
        }
        List<FreshGoods> list = freshGoodsService.queryAllByLimit(goodName, gtid, offset, pageSize);
        Map<Integer, String> imgs = new HashMap<>();
        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg().split("-")[0];
            imgs.put(freshGoods.getFdid(), img);
        }
        model.addAttribute("goodName", goodName);
        model.addAttribute("freshGoods", list);
        model.addAttribute("imgs", imgs);
        return "product";
    }

    // 食物偏好搜索
    @GetMapping("souSuo")
    public String souSuo(FreshGoods goods, Model model) {
        Map<Integer, String> imgs = new HashMap<>();
        List<FreshGoods> list = freshGoodsService.queryAll(goods);
        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg().split("-")[0];
            imgs.put(freshGoods.getFdid(), img);
        }
        model.addAttribute("freshGoods", list);
        model.addAttribute("imgs", imgs);
        return "product";
    }

    // 根据折扣查询
    @GetMapping("queryDiscount")
    public String queryDiscount(@RequestParam("discount") Integer discount, Model model) {
        Map<Integer, String> imgs = new HashMap<>();
        List<FreshGoods> list = freshGoodsService.queryDiscount(discount);
        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg().split("-")[0];
            imgs.put(freshGoods.getFdid(), img);
        }
        model.addAttribute("freshGoods", list);
        model.addAttribute("imgs", imgs);
        return "product";
    }


    // 管理员的搜索商品功能
    @GetMapping("getSouSuoGoods")
    public String getSouSuoGoods(@RequestParam(value = "goodName", required = false) String goodName,
                                 @RequestParam(value = "cp", defaultValue = "1") int currentPage,
                                 @RequestParam(value = "ps", defaultValue = "9") int pageSize,
                                 HttpSession session, Model model) {
        int result = freshGoodsService.getTotalRows(null, goodName);
        int totalPage = result % pageSize == 0 ? result / pageSize : result / pageSize + 1;
        session.setAttribute("totalPage", totalPage);
        currentPage = currentPage > totalPage ? totalPage : currentPage;
        currentPage = currentPage < 1 ? 1 : currentPage;
        pageSize = pageSize < 6 ? 6 : pageSize;
        session.setAttribute("currentPage", currentPage);
        int offset = (currentPage - 1) * pageSize;
        List<FreshGoods> list = freshGoodsService.queryAllByLimit(goodName, null, offset, pageSize);
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

    // 管理员进入商品修改页面
    @GetMapping("gotoUpdateGoods")
    public String gotoUpdateGoods(Model model, @RequestParam(value = "fdid") Integer fdid) {
        FreshGoods freshGoods = selectOne(fdid);
        String img = freshGoods.getImg().split("-")[0];
        model.addAttribute("goods", freshGoods);
        model.addAttribute("img", img);
        return "updategoods";
    }

    // 管理员修改商品信息
    @PostMapping("confirmUpdate")
    public String confirmUpdate(FreshGoods freshGoods) {
        freshGoodsService.update(freshGoods);
        return "redirect:gotoUpdateGoods?fdid=" + freshGoods.getFdid();
    }

    // 管理员下架商品
    @GetMapping("empDeleteGoods")
    public String empDeleteGoods(@RequestParam("fdid") Integer fdid) {
        freshGoodsService.deleteById(fdid);
        return "redirect:adminIndex";
    }

    // 管理员查看商品详情
    @GetMapping("adminCheckGoods")
    public String adminCheckGoods(@RequestParam("fdid") Integer fdid, Model model) {
        FreshGoods freshGoods = freshGoodsService.queryById(fdid);
        String[] imgs = freshGoods.getImg().split("-");
        model.addAttribute("freshGoods", freshGoods);
        model.addAttribute("imgs", imgs);
        return "adminCheckGoods";
    }

    // 管理员上架商品
    @PostMapping("addGoods")
    public String addGoods(@RequestParam(value = "file", required = false) List<MultipartFile> files,
                           HttpServletRequest request, FreshGoods freshGoods) {
        String img = "";
        // 处理上传的图片路径   管理员可根据需要上传0到3张图片
        if (files.size() != 0) {
            String tempImg = "";
            for (MultipartFile file : files) {
                File dest =
                        new File(request.getServletContext().getRealPath("img") + File.separator + file.getOriginalFilename());
                tempImg = dest.toString().substring(dest.toString().lastIndexOf(File.separator) + 1,
                        dest.toString().length() - 4);
                img += tempImg + "-";
                try {
                    file.transferTo(dest);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }
        // 去掉整组图片路径的最后一个‘-’
        img = img.substring(0, img.length() - 1);
        freshGoods.setImg(img);
        System.out.println(img);
        freshGoods.setPreference(0);
        FreshGoods goods = freshGoodsService.insert(freshGoods);
        return "redirect:adminCheckGoods?fdid=" + goods.getFdid();
    }

}