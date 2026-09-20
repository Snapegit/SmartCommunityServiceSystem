package com.cl.entity.view;

import com.cl.entity.XiaoquxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 小区信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
@TableName("xiaoquxinxi")
public class XiaoquxinxiView  extends XiaoquxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiaoquxinxiView(){
	}
 
 	public XiaoquxinxiView(XiaoquxinxiEntity xiaoquxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, xiaoquxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
