package com.cl.dao;

import com.cl.entity.XiaoquxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XiaoquxinxiView;


/**
 * 小区信息
 * 
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
public interface XiaoquxinxiDao extends BaseMapper<XiaoquxinxiEntity> {
	
	List<XiaoquxinxiView> selectListView(@Param("ew") Wrapper<XiaoquxinxiEntity> wrapper);

	List<XiaoquxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<XiaoquxinxiEntity> wrapper);
	
	XiaoquxinxiView selectView(@Param("ew") Wrapper<XiaoquxinxiEntity> wrapper);
	

}
