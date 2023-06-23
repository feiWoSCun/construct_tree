package feiwoscun.construct_tree.treeUtil;

import org.springframework.util.CollectionUtils;

import java.util.*;
import java.util.function.Function;
import java.util.function.Predicate;

/**
 * @description: 使用lambda构建前端常用的树状结构，耦合度非常低，可以适配所有的树状数据库表
 * @author: feiWoSCun
 * @Time: 2023/6/22
 * @Email: 2825097536@qq.com
 */
public class ConstructTreeUtil<T, R> {
    private Predicate<T> predicateIfTop;
    private Function<T, R> getDmFather;
    private Function<T, R> getDmSelf;
    private HashMap<R, List<TreeRes<T, R>>> cacheFIdAndSons = new HashMap(16);

    public ConstructTreeUtil(Predicate<T> predicateIfTop, Function<T, R> getDmFather,
                             Function<T, R> getDmSelf) {
        this.predicateIfTop = predicateIfTop;
        this.getDmFather = getDmFather;
        this.getDmSelf = getDmSelf;
    }

    /**
     * 有二种情况，一是顶级点是虚空的 二是顶级节点两个代码相同
     *
     * @param t
     * @return
     */
    public TreeRes<T, R> getTree(List<T> t) {
        if (!cacheFIdAndSons.isEmpty()) {
            cacheFIdAndSons.clear();
        }
        if (t == null || t.size() == 0) {
            return null;
        }
        TreeRes<T, R> top = null;
        //top的代码

        for (int i = 0; i < t.size(); i++) {
            T temp = t.get(i);
            //判断父亲是不是最顶级的
            TreeRes<T, R> top1 = getTop(top, temp);
            //子代码等于父代码，跳过
            if (top1 != null && top1.getRoot() != null) {
                top = top1;
                continue;
            }
            putSons(temp);


        }
        setChildren(top);
        return top;
    }

    public void putSons(T temp) {
        R father = getDmFather.apply(temp);
        List<TreeRes<T, R>> sons = cacheFIdAndSons.computeIfAbsent(father, x -> new ArrayList<TreeRes<T, R>>());
        sons.add(new TreeRes<>(temp, getDmSelf.apply(temp), new ArrayList<>()));
        cacheFIdAndSons.put(father, sons);
    }

    public void setChildren(TreeRes<T, R> res) {
        List<TreeRes<T, R>> treeRes = cacheFIdAndSons.get(res.getDm());
        if (CollectionUtils.isEmpty(treeRes)) {
            return;
        }
        res.setChildren(treeRes);
        List<TreeRes<T, R>> children = res.getChildren();
        for (int i = 0; i < children.size(); i++) {
            setChildren(children.get(i));
        }
    }

    private TreeRes<T, R> getTop(TreeRes<T, R> top, T temp) {
        if (top == null && predicateIfTop.test(temp)) {
            R topDm = null;
            topDm = getDmFather.apply(temp);
            //自己代码和父代码相同的情况
            if (getDmFather.apply(temp).equals(getDmSelf.apply(temp))) {
                return new TreeRes(temp, topDm, new ArrayList<>());
            } else {
                return new TreeRes(null, topDm, new ArrayList<>());
            }
        }
        return null;
    }
}
