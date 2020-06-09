package com.qf.market.service.impl;

import com.qf.market.pojo.Courier;
import com.qf.market.dao.CourierDao;
import com.qf.market.service.CourierService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Courier)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Service("courierService")
public class CourierServiceImpl implements CourierService {
    @Resource
    private CourierDao courierDao;

    /**
     * 通过ID查询单条数据
     *
     * @param account 主键
     * @return 实例对象
     */
    @Override
    public Courier queryById(String account) {
        return this.courierDao.queryById(account);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Courier> queryAllByLimit(int offset, int limit) {
        return this.courierDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param courier 实例对象
     * @return 实例对象
     */
    @Override
    public Courier insert(Courier courier) {
        this.courierDao.insert(courier);
        return courier;
    }

    /**
     * 修改数据
     *
     * @param courier 实例对象
     * @return 实例对象
     */
    @Override
    public Courier update(Courier courier) {
        this.courierDao.update(courier);
        return this.queryById(courier.getAccount());
    }

    /**
     * 通过主键删除数据
     *
     * @param account 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String account) {
        return this.courierDao.deleteById(account) > 0;
    }
}