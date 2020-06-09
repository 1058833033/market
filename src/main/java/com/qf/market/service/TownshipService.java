package com.qf.market.service;

import com.qf.market.pojo.Township;

import java.util.List;

/**
 * (Township)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public interface TownshipService {

    /**
     * 通过ID查询单条数据
     *
     * @param tid 主键
     * @return 实例对象
     */
    Township queryById(Integer tid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Township> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param township 实例对象
     * @return 实例对象
     */
    Township insert(Township township);

    /**
     * 修改数据
     *
     * @param township 实例对象
     * @return 实例对象
     */
    Township update(Township township);

    /**
     * 通过主键删除数据
     *
     * @param tid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer tid);

}