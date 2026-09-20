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
 * 对讲信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
@TableName("duijiangxinxi")
public class DuijiangxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public DuijiangxinxiEntity() {
		
	}
	
	public DuijiangxinxiEntity(T t) {
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
	 * 业主账号
	 */
					
	private String yezhuzhanghao;
	
	/**
	 * 业主姓名
	 */
					
	private String yezhuxingming;
	
	/**
	 * 楼栋号
	 */
					
	private String loudonghao;
	
	/**
	 * 楼房号
	 */
					
	private String loufanghao;
	
	/**
	 * 对讲内容
	 */
					
	private String duijiangneirong;
	
	/**
	 * 语音
	 */
					
	private String yuyin;
	
	/**
	 * 对讲人
	 */
					
	private String duijiangren;
	
	/**
	 * 对讲时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date duijiangshijian;
	
	
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
	 * 设置：业主账号
	 */
	public void setYezhuzhanghao(String yezhuzhanghao) {
		this.yezhuzhanghao = yezhuzhanghao;
	}
	/**
	 * 获取：业主账号
	 */
	public String getYezhuzhanghao() {
		return yezhuzhanghao;
	}
	/**
	 * 设置：业主姓名
	 */
	public void setYezhuxingming(String yezhuxingming) {
		this.yezhuxingming = yezhuxingming;
	}
	/**
	 * 获取：业主姓名
	 */
	public String getYezhuxingming() {
		return yezhuxingming;
	}
	/**
	 * 设置：楼栋号
	 */
	public void setLoudonghao(String loudonghao) {
		this.loudonghao = loudonghao;
	}
	/**
	 * 获取：楼栋号
	 */
	public String getLoudonghao() {
		return loudonghao;
	}
	/**
	 * 设置：楼房号
	 */
	public void setLoufanghao(String loufanghao) {
		this.loufanghao = loufanghao;
	}
	/**
	 * 获取：楼房号
	 */
	public String getLoufanghao() {
		return loufanghao;
	}
	/**
	 * 设置：对讲内容
	 */
	public void setDuijiangneirong(String duijiangneirong) {
		this.duijiangneirong = duijiangneirong;
	}
	/**
	 * 获取：对讲内容
	 */
	public String getDuijiangneirong() {
		return duijiangneirong;
	}
	/**
	 * 设置：语音
	 */
	public void setYuyin(String yuyin) {
		this.yuyin = yuyin;
	}
	/**
	 * 获取：语音
	 */
	public String getYuyin() {
		return yuyin;
	}
	/**
	 * 设置：对讲人
	 */
	public void setDuijiangren(String duijiangren) {
		this.duijiangren = duijiangren;
	}
	/**
	 * 获取：对讲人
	 */
	public String getDuijiangren() {
		return duijiangren;
	}
	/**
	 * 设置：对讲时间
	 */
	public void setDuijiangshijian(Date duijiangshijian) {
		this.duijiangshijian = duijiangshijian;
	}
	/**
	 * 获取：对讲时间
	 */
	public Date getDuijiangshijian() {
		return duijiangshijian;
	}

}
