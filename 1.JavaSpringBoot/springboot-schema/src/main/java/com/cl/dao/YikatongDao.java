package com.cl.dao;

import com.cl.entity.YikatongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YikatongView;


/**
 * 一卡通
 * 
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
public interface YikatongDao extends BaseMapper<YikatongEntity> {
	
	List<YikatongView> selectListView(@Param("ew") Wrapper<YikatongEntity> wrapper);

	List<YikatongView> selectListView(Pagination page,@Param("ew") Wrapper<YikatongEntity> wrapper);
	
	YikatongView selectView(@Param("ew") Wrapper<YikatongEntity> wrapper);
	

}
