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
 * 监控设备
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
@TableName("jiankongshebei")
public class JiankongshebeiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiankongshebeiEntity() {
		
	}
	
	public JiankongshebeiEntity(T t) {
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
	 * 设备编号
	 */
					
	private String shebeibianhao;
	
	/**
	 * 设备名称
	 */
					
	private String shebeimingcheng;
	
	/**
	 * 设备数量
	 */
					
	private Integer shebeishuliang;
	
	/**
	 * 设备图片
	 */
					
	private String shebeitupian;
	
	/**
	 * 用途
	 */
					
	private String yongtu;
	
	/**
	 * 设备参数
	 */
					
	private String shebeicanshu;
	
	/**
	 * 监控录像
	 */
					
	private String jiankongluxiang;
	
	/**
	 * 安装位置
	 */
					
	private String anzhuangweizhi;
	
	/**
	 * 运行状态
	 */
					
	private String yunxingzhuangtai;
	
	/**
	 * 监控日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jiankongriqi;
	
	
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
	 * 设置：设备编号
	 */
	public void setShebeibianhao(String shebeibianhao) {
		this.shebeibianhao = shebeibianhao;
	}
	/**
	 * 获取：设备编号
	 */
	public String getShebeibianhao() {
		return shebeibianhao;
	}
	/**
	 * 设置：设备名称
	 */
	public void setShebeimingcheng(String shebeimingcheng) {
		this.shebeimingcheng = shebeimingcheng;
	}
	/**
	 * 获取：设备名称
	 */
	public String getShebeimingcheng() {
		return shebeimingcheng;
	}
	/**
	 * 设置：设备数量
	 */
	public void setShebeishuliang(Integer shebeishuliang) {
		this.shebeishuliang = shebeishuliang;
	}
	/**
	 * 获取：设备数量
	 */
	public Integer getShebeishuliang() {
		return shebeishuliang;
	}
	/**
	 * 设置：设备图片
	 */
	public void setShebeitupian(String shebeitupian) {
		this.shebeitupian = shebeitupian;
	}
	/**
	 * 获取：设备图片
	 */
	public String getShebeitupian() {
		return shebeitupian;
	}
	/**
	 * 设置：用途
	 */
	public void setYongtu(String yongtu) {
		this.yongtu = yongtu;
	}
	/**
	 * 获取：用途
	 */
	public String getYongtu() {
		return yongtu;
	}
	/**
	 * 设置：设备参数
	 */
	public void setShebeicanshu(String shebeicanshu) {
		this.shebeicanshu = shebeicanshu;
	}
	/**
	 * 获取：设备参数
	 */
	public String getShebeicanshu() {
		return shebeicanshu;
	}
	/**
	 * 设置：监控录像
	 */
	public void setJiankongluxiang(String jiankongluxiang) {
		this.jiankongluxiang = jiankongluxiang;
	}
	/**
	 * 获取：监控录像
	 */
	public String getJiankongluxiang() {
		return jiankongluxiang;
	}
	/**
	 * 设置：安装位置
	 */
	public void setAnzhuangweizhi(String anzhuangweizhi) {
		this.anzhuangweizhi = anzhuangweizhi;
	}
	/**
	 * 获取：安装位置
	 */
	public String getAnzhuangweizhi() {
		return anzhuangweizhi;
	}
	/**
	 * 设置：运行状态
	 */
	public void setYunxingzhuangtai(String yunxingzhuangtai) {
		this.yunxingzhuangtai = yunxingzhuangtai;
	}
	/**
	 * 获取：运行状态
	 */
	public String getYunxingzhuangtai() {
		return yunxingzhuangtai;
	}
	/**
	 * 设置：监控日期
	 */
	public void setJiankongriqi(Date jiankongriqi) {
		this.jiankongriqi = jiankongriqi;
	}
	/**
	 * 获取：监控日期
	 */
	public Date getJiankongriqi() {
		return jiankongriqi;
	}

}
