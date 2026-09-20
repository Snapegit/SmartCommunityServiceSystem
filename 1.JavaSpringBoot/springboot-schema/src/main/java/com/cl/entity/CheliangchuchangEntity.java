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
 * 车辆出场
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
@TableName("cheliangchuchang")
public class CheliangchuchangEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public CheliangchuchangEntity() {
		
	}
	
	public CheliangchuchangEntity(T t) {
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
	 * 停车场名称
	 */
					
	private String tingchechangmingcheng;
	
	/**
	 * 车位数
	 */
					
	private Integer cheweishu;
	
	/**
	 * 类型
	 */
					
	private String leixing;
	
	/**
	 * 车主
	 */
					
	private String chezhu;
	
	/**
	 * 每小时价
	 */
					
	private String jiage;
	
	/**
	 * 停车时长
	 */
					
	private Integer tingcheshizhang;
	
	/**
	 * 停车费
	 */
					
	private String tingchefei;
	
	/**
	 * 物业账号
	 */
					
	private String wuyezhanghao;
	
	/**
	 * 物业姓名
	 */
					
	private String wuyexingming;
	
	/**
	 * 出场时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date chuchangshijian;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
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
	 * 设置：停车场名称
	 */
	public void setTingchechangmingcheng(String tingchechangmingcheng) {
		this.tingchechangmingcheng = tingchechangmingcheng;
	}
	/**
	 * 获取：停车场名称
	 */
	public String getTingchechangmingcheng() {
		return tingchechangmingcheng;
	}
	/**
	 * 设置：车位数
	 */
	public void setCheweishu(Integer cheweishu) {
		this.cheweishu = cheweishu;
	}
	/**
	 * 获取：车位数
	 */
	public Integer getCheweishu() {
		return cheweishu;
	}
	/**
	 * 设置：类型
	 */
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	/**
	 * 获取：类型
	 */
	public String getLeixing() {
		return leixing;
	}
	/**
	 * 设置：车主
	 */
	public void setChezhu(String chezhu) {
		this.chezhu = chezhu;
	}
	/**
	 * 获取：车主
	 */
	public String getChezhu() {
		return chezhu;
	}
	/**
	 * 设置：每小时价
	 */
	public void setJiage(String jiage) {
		this.jiage = jiage;
	}
	/**
	 * 获取：每小时价
	 */
	public String getJiage() {
		return jiage;
	}
	/**
	 * 设置：停车时长
	 */
	public void setTingcheshizhang(Integer tingcheshizhang) {
		this.tingcheshizhang = tingcheshizhang;
	}
	/**
	 * 获取：停车时长
	 */
	public Integer getTingcheshizhang() {
		return tingcheshizhang;
	}
	/**
	 * 设置：停车费
	 */
	public void setTingchefei(String tingchefei) {
		this.tingchefei = tingchefei;
	}
	/**
	 * 获取：停车费
	 */
	public String getTingchefei() {
		return tingchefei;
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
	/**
	 * 设置：出场时间
	 */
	public void setChuchangshijian(Date chuchangshijian) {
		this.chuchangshijian = chuchangshijian;
	}
	/**
	 * 获取：出场时间
	 */
	public Date getChuchangshijian() {
		return chuchangshijian;
	}
	/**
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
