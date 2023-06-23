package feiwoscun.construct_tree.controller;

import feiwoscun.construct_tree.entity.TXk;
import feiwoscun.construct_tree.service.TXkService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 专业表(TXk)表控制层
 *
 * @author makejava
 * @since 2023-06-22 15:05:46
 */


@RestController
@RequestMapping("test")
public class TXkController {
    /**
     * 服务对象
     */


    @Resource
    private TXkService tXkService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条
     */


    @GetMapping("id")
    public ResponseEntity<TXk> queryById(@PathVariable("id") Integer id) {
        return ResponseEntity.ok(this.tXkService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param tXk 实体
     * @return 新增结果
     */

    @PostMapping
    public ResponseEntity<TXk> add(TXk tXk) {
        return ResponseEntity.ok(this.tXkService.insert(tXk));
    }

    /**
     * 编辑数据
     *
     * @param tXk 实体
     * @return 编辑结果
     */


    @PutMapping
    public ResponseEntity<TXk> edit(TXk tXk) {
        return ResponseEntity.ok(this.tXkService.update(tXk));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */

    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Integer id) {
        return ResponseEntity.ok(this.tXkService.deleteById(id));
    }

}

