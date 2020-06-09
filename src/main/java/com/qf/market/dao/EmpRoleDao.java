package com.qf.market.dao;

import com.qf.market.pojo.EmpRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (EmpRole)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public interface EmpRoleDao {

    /**
     * 通过ID查询单条数据
     *
     * @param eid 主键
     * @return 实例对象
     */
    EmpRole queryById(Integer eid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<EmpRole> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param empRole 实例对象
     * @return 对象列表
     */
    List<EmpRole> queryAll(EmpRole empRole);

    /**
     * 新增数据
     *
     * @param empRole 实例对象
     * @return 影响行数
     */
    int insert(EmpRole empRole);

    /**
     * 修改数据
     *
     * @param empRole 实例对象
     * @return 影响行数
     */
    int update(EmpRole empRole);

    /**
     * 通过主键删除数据
     *
     * @param eid 主键
     * @return 影响行数
     */
    int deleteById(Integer eid);

}