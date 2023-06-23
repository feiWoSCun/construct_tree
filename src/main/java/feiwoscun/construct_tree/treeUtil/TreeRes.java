package feiwoscun.construct_tree.treeUtil;

import java.util.List;
import java.util.Objects;

/**
 * @description:
 * @author: feiWoSCun
 * @Time: 2023/6/22
 * @Email: 2825097536@qq.com
 */
public class TreeRes<T, R> {
    /**
     * 子数目结构
     */
    private T root;
    /**
     * 自己的代码
     */
    private R dm;
    private List<TreeRes<T, R>> children;
    /**
     * 这一级目录一共有多少个元素
     */
    private int sum;

    public R getDm() {
        return dm;
    }

    public void setDm(R dm) {
        this.dm = dm;
    }

    public TreeRes(T root, R dm, List<TreeRes<T, R>> children) {
        this.root = root;
        this.dm = dm;
        this.children = children;
    }


    public T getRoot() {
        return root;
    }

    public void setRoot(T root) {
        this.root = root;
    }

    public List<TreeRes<T, R>> getChildren() {
        return children;
    }

    public void setChildren(List<TreeRes<T, R>> children) {
        if (children != null) {
            this.children = children;
            this.sum = children.size();
        }
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = children.size();
    }
}
