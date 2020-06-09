package com.qf.market.service.impl;

import com.qf.market.pojo.FreshGoods;
import com.qf.market.dao.FreshGoodsDao;
import com.qf.market.service.FreshGoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (FreshGoods)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Service("freshGoodsService")
public class FreshGoodsServiceImpl implements FreshGoodsService {
    @Resource
    private FreshGoodsDao freshGoodsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param fdid 主键
     * @return 实例对象
     */
    @Override
    public FreshGoods queryById(Integer fdid) {
        return this.freshGoodsDao.queryById(fdid);
    }

    /**
     * 通过实体作为筛选条件查询
     *
     * @param freshGoods 实例对象
     * @return 对象列表
     */
    @Override
    public List<FreshGoods> queryAll(FreshGoods freshGoods) {
        return this.freshGoodsDao.queryAll(freshGoods);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<FreshGoods> queryAllByLimit(String goodName, Integer gtid, int offset, int limit) {
        return this.freshGoodsDao.queryAllByLimit(goodName, gtid, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    @Override
    public FreshGoods insert(FreshGoods freshGoods) {
        this.freshGoodsDao.insert(freshGoods);
        return freshGoods;
    }

    /**
     * 修改数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    @Override
    public FreshGoods update(FreshGoods freshGoods) {
        this.freshGoodsDao.update(freshGoods);
        return this.queryById(freshGoods.getFdid());
    }

    /**
     * 通过主键删除数据
     *
     * @param fdid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer fdid) {
        return this.freshGoodsDao.deleteById(fdid) > 0;
    }

    @Override
    public int getTotalRows(Integer gtid, String goodName) {
        return this.freshGoodsDao.getTotalRows(gtid, goodName);
    }

    /**
     * 根据这口进行查询
     *
     * @param discount
     * @return
     */
    @Override
    public List<FreshGoods> queryDiscount(Integer discount) {
        return this.freshGoodsDao.queryDiscount(discount);
    }
}