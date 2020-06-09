package com.qf.market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author: ChenJie
 * @Date: 2020/3/24 21:39
 * Description:
 */
@Controller
public class PathController {
    @RequestMapping("/{path}")
    public String getPath(@PathVariable String path) {
        return path;
    }
}
