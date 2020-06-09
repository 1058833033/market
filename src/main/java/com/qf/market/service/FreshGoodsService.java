package com.qf.market.service;

import com.qf.market.pojo.FreshGoods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (FreshGoods)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public interface FreshGoodsService {

    /**
     * 通过ID查询单条数据
     *
     * @param fdid 主键
     * @return 实例对象
     */
    FreshGoods queryById(Integer fdid);

    /**
     * 通过实体作为筛选条件查询
     *
     * @param freshGoods 实例对象
     * @return 对象列表
     */
    List<FreshGoods> queryAll(FreshGoods freshGoods);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<FreshGoods> queryAllByLimit(String goodName, Integer gtid, int offset, int limit);

    /**
     * 新增数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    FreshGoods insert(FreshGoods freshGoods);

    /**
     * 修改数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    FreshGoods update(FreshGoods freshGoods);

    /**
     * 通过主键删除数据
     *
     * @param fdid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer fdid);

    /**
     * @param gtid
     * @param goodName
     * @return
     */
    int getTotalRows(@Param("gtid") Integer gtid, @Param("goodName") String goodName);

    /**
     * 根据这口进行查询
     *
     * @param discount
     * @return
     */
    List<FreshGoods> queryDiscount(Integer discount);
}