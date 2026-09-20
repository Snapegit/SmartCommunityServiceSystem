package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 小区信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
@TableName("xiaoquxinxi")
public class XiaoquxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XiaoquxinxiEntity() {
		
	}
	
	public XiaoquxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 小区名称
	 */
					
	private String xiaoqumingcheng;
	
	/**
	 * 小区类型
	 */
					
	private String xiaoquleixing;
	
	/**
	 * 小区地址
	 */
					
	private String xiaoqudizhi;
	
	/**
	 * 建筑面积
	 */
					
	private Double jianzhumianji;
	
	/**
	 * 总户数
	 */
					
	private Integer zonghushu;
	
	/**
	 * 停车位数量
	 */
					
	private String tingcheweishuliang;
	
	/**
	 * 小区图片
	 */
					
	private String xiaoqutupian;
	
	/**
	 * 周围环境
	 */
					
	private String zhouweihuanjing;
	
	/**
	 * 楼栋数
	 */
					
	private Integer loudongshu;
	
	/**
	 * 物业账号
	 */
					
	private String wuyezhanghao;
	
	/**
	 * 物业姓名
	 */
					
	private String wuyexingming;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：小区名称
	 */
	public void setXiaoqumingcheng(String xiaoqumingcheng) {
		this.xiaoqumingcheng = xiaoqumingcheng;
	}
	/**
	 * 获取：小区名称
	 */
	public String getXiaoqumingcheng() {
		return xiaoqumingcheng;
	}
	/**
	 * 设置：小区类型
	 */
	public void setXiaoquleixing(String xiaoquleixing) {
		this.xiaoquleixing = xiaoquleixing;
	}
	/**
	 * 获取：小区类型
	 */
	public String getXiaoquleixing() {
		return xiaoquleixing;
	}
	/**
	 * 设置：小区地址
	 */
	public void setXiaoqudizhi(String xiaoqudizhi) {
		this.xiaoqudizhi = xiaoqudizhi;
	}
	/**
	 * 获取：小区地址
	 */
	public String getXiaoqudizhi() {
		return xiaoqudizhi;
	}
	/**
	 * 设置：建筑面积
	 */
	public void setJianzhumianji(Double jianzhumianji) {
		this.jianzhumianji = jianzhumianji;
	}
	/**
	 * 获取：建筑面积
	 */
	public Double getJianzhumianji() {
		return jianzhumianji;
	}
	/**
	 * 设置：总户数
	 */
	public void setZonghushu(Integer zonghushu) {
		this.zonghushu = zonghushu;
	}
	/**
	 * 获取：总户数
	 */
	public Integer getZonghushu() {
		return zonghushu;
	}
	/**
	 * 设置：停车位数量
	 */
	public void setTingcheweishuliang(String tingcheweishuliang) {
		this.tingcheweishuliang = tingcheweishuliang;
	}
	/**
	 * 获取：停车位数量
	 */
	public String getTingcheweishuliang() {
		return tingcheweishuliang;
	}
	/**
	 * 设置：小区图片
	 */
	public void setXiaoqutupian(String xiaoqutupian) {
		this.xiaoqutupian = xiaoqutupian;
	}
	/**
	 * 获取：小区图片
	 */
	public String getXiaoqutupian() {
		return xiaoqutupian;
	}
	/**
	 * 设置：周围环境
	 */
	public void setZhouweihuanjing(String zhouweihuanjing) {
		this.zhouweihuanjing = zhouweihuanjing;
	}
	/**
	 * 获取：周围环境
	 */
	public String getZhouweihuanjing() {
		return zhouweihuanjing;
	}
	/**
	 * 设置：楼栋数
	 */
	public void setLoudongshu(Integer loudongshu) {
		this.loudongshu = loudongshu;
	}
	/**
	 * 获取：楼栋数
	 */
	public Integer getLoudongshu() {
		return loudongshu;
	}
	/**
	 * 设置：物业账号
	 */
	public void setWuyezhanghao(String wuyezhanghao) {
		this.wuyezhanghao = wuyezhanghao;
	}
	/**
	 * 获取：物业账号
	 */
	public String getWuyezhanghao() {
		return wuyezhanghao;
	}
	/**
	 * 设置：物业姓名
	 */
	public void setWuyexingming(String wuyexingming) {
		this.wuyexingming = wuyexingming;
	}
	/**
	 * 获取：物业姓名
	 */
	public String getWuyexingming() {
		return wuyexingming;
	}

}
