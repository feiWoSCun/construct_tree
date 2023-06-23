package feiwoscun.construct_tree.mapper;

import feiwoscun.construct_tree.entity.TXk;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 专业表(TXk)表数据库访问层
 *
 * @author makejava
 * @since 2023-06-22 15:05:48
 */
@Repository
public interface TXkMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TXk queryById(Integer id);

    /**
     * 统计总行数
     *
     * @param tXk 查询条件
     * @return 总行数
     */
    long count(TXk tXk);

    /**
     * 新增数据
     *
     * @param tXk 实例对象
     * @return 影响行数
     */
    int insert(TXk tXk);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TXk> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TXk> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TXk> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TXk> entities);

    /**
     * 修改数据
     *
     * @param tXk 实例对象
     * @return 影响行数
     */
    int update(TXk tXk);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    /**
     * 所有
     * @return
     */
    List<TXk> getAll();
}

