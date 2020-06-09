package com.qf.market.service.impl;

import com.qf.market.dto.UsersInfoDTO;
import com.qf.market.pojo.Users;
import com.qf.market.dao.UsersDao;
import com.qf.market.service.UsersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Users)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Service("usersService")
public class UsersServiceImpl implements UsersService {
    @Resource
    private UsersDao usersDao;

    /**
     * 通过ID查询单条数据
     *
     * @param userId 主键
     * @return 实例对象
     */
    @Override
    public Users queryById(Integer userId) {
        return this.usersDao.queryById(userId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Users> queryAllByLimit(int offset, int limit) {
        return this.usersDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param users 实例对象
     * @return 实例对象
     */
    @Override
    public Users insert(Users users) {
        this.usersDao.insert(users);
        return users;
    }

    /**
     * 修改数据
     *
     * @param users 实例对象
     * @return 实例对象
     */
    @Override
    public Users update(Users users) {
        this.usersDao.update(users);
        return this.queryById(users.getUserId());
    }

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer userId) {
        return this.usersDao.deleteById(userId) > 0;
    }

    /**
     * 通过实体作为筛选条件查询
     *
     * @param users 实例对象
     * @return 对象列表
     */
    @Override
    public List<Users> queryAll(Users users) {
        return this.usersDao.queryAll(users);
    }

    /**
     * 根据用户ID查询用户相关信息
     *
     * @param userId
     * @return
     */
    @Override
    public List<UsersInfoDTO> queryUsersInfoDTO(Integer userId) {
        return this.usersDao.queryUsersInfoDTO(userId);
    }
}