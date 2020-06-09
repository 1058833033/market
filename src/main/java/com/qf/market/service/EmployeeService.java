package com.qf.market.service;

import com.qf.market.pojo.Employee;

import java.util.List;

/**
 * (Employee)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public interface EmployeeService {

    /**
     * 通过ID查询单条数据
     *
     * @param eid 主键
     * @return 实例对象
     */
    Employee queryById(Integer eid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Employee> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param employee 实例对象
     * @return 实例对象
     */

    /**
     * 通过实体作为筛选条件查询
     *
     * @param employee 实例对象
     * @return 对象列表
     */
    List<Employee> queryAll(Employee employee);

    Employee insert(Employee employee);

    /**
     * 修改数据
     *
     * @param employee 实例对象
     * @return 实例对象
     */
    Employee update(Employee employee);

    /**
     * 通过主键删除数据
     *
     * @param eid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer eid);

}