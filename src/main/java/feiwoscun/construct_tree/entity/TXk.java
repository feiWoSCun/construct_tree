package feiwoscun.construct_tree.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * 专业表(TXk)实体类
 *
 * @author makejava
 * @since 2023-06-22 15:05:50
 */
public class TXk implements Serializable {
    private static final long serialVersionUID = -68810324525817393L;
    
    private Integer id;
    /**
     * 代码
     */
    private String dm;
    /**
     * 名称
     */
    private String mc;
    /**
     * 父代码
     */
    private String fdm;
    /**
     * 类型
     */
    private String lx;
    /**
     * 祖级代码
     */
    private String zjdm;
    /**
     * 排序
     */
    private Integer px;
    
    private String sfsc;
    
    private String scr;
    
    private Date scsj;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDm() {
        return dm;
    }

    public void setDm(String dm) {
        this.dm = dm;
    }

    public String getMc() {
        return mc;
    }

    public void setMc(String mc) {
        this.mc = mc;
    }

    public String getFdm() {
        return fdm;
    }

    public void setFdm(String fdm) {
        this.fdm = fdm;
    }

    public String getLx() {
        return lx;
    }

    public void setLx(String lx) {
        this.lx = lx;
    }

    public String getZjdm() {
        return zjdm;
    }

    public void setZjdm(String zjdm) {
        this.zjdm = zjdm;
    }

    public Integer getPx() {
        return px;
    }

    public void setPx(Integer px) {
        this.px = px;
    }

    public String getSfsc() {
        return sfsc;
    }

    public void setSfsc(String sfsc) {
        this.sfsc = sfsc;
    }

    public String getScr() {
        return scr;
    }

    public void setScr(String scr) {
        this.scr = scr;
    }

    public Date getScsj() {
        return scsj;
    }

    public void setScsj(Date scsj) {
        this.scsj = scsj;
    }

}

