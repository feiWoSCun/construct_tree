package feiwoscun.construct_tree.service;

import feiwoscun.construct_tree.entity.TXk;

import java.util.List;

/**
 * 专业表(TXk)表服务接口
 *
 * @author makejava
 * @since 2023-06-22 15:05:50
 */
public interface TXkService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TXk queryById(Integer id);


    /**
     * 新增数据
     *
     * @param tXk 实例对象
     * @return 实例对象
     */
    TXk insert(TXk tXk);

    /**
     * 修改数据
     *
     * @param tXk 实例对象
     * @return 实例对象
     */
    TXk update(TXk tXk);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    List<TXk> getAll();

}
