package feiwoscun.construct_tree.test;

import feiwoscun.construct_tree.entity.TXk;
import feiwoscun.construct_tree.mapper.TXkMapper;
import feiwoscun.construct_tree.treeUtil.ConstructTreeUtil;
import feiwoscun.construct_tree.treeUtil.TreeRes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

import java.util.List;
import java.util.function.Predicate;

/**
 * @description:
 * @author: feiWoSCun
 * @Time: 2023/6/23
 * @Email: 2825097536@qq.com
 */
@Component
public class Test implements ApplicationRunner {
    @Autowired
    TXkMapper tXkMapper;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        List<TXk> all = tXkMapper.getAll();
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        ConstructTreeUtil<TXk, String> util = new ConstructTreeUtil<>
                (tXk -> tXk.getFdm().equals(tXk.getDm()), TXk::getFdm, TXk::getDm);
        TreeRes<TXk, String> tree = util.getTree(all);
        stopWatch.stop();
        //除去查数据库的时间，195个数据总共用时0.0015-0,0017秒
        System.out.println(stopWatch.getTotalTimeSeconds());
        System.out.println(tree);
    }
}
