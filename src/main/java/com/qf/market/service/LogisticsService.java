package com.qf.market.service;

import com.qf.market.pojo.Logistics;

import java.util.List;

/**
 * (Logistics)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public interface LogisticsService {

    /**
     * 通过ID查询单条数据
     *
     * @param lid 主键
     * @return 实例对象
     */
    Logistics queryById(Integer lid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Logistics> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param logistics 实例对象
     * @return 实例对象
     */
    Logistics insert(Logistics logistics);

    /**
     * 修改数据
     *
     * @param logistics 实例对象
     * @return 实例对象
     */
    Logistics update(Logistics logistics);

    /**
     * 通过主键删除数据
     *
     * @param lid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer lid);

}