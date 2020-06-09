package com.qf.market.controller;

import com.qf.market.pojo.Evaluation;
import com.qf.market.service.EvaluationService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Evaluation)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("evaluation")
public class EvaluationController {
    /**
     * 服务对象
     */
    @Resource
    private EvaluationService evaluationService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Evaluation selectOne(Integer id) {
        return this.evaluationService.queryById(id);
    }

}