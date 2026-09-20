package com.cl.entity.view;

import com.cl.entity.YikatongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 一卡通
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
@TableName("yikatong")
public class YikatongView  extends YikatongEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YikatongView(){
	}
 
 	public YikatongView(YikatongEntity yikatongEntity){
 	try {
			BeanUtils.copyProperties(this, yikatongEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
