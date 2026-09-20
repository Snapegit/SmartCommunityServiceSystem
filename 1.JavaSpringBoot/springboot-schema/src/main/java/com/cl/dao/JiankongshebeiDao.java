package com.cl.dao;

import com.cl.entity.JiankongshebeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JiankongshebeiView;


/**
 * 监控设备
 * 
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
public interface JiankongshebeiDao extends BaseMapper<JiankongshebeiEntity> {
	
	List<JiankongshebeiView> selectListView(@Param("ew") Wrapper<JiankongshebeiEntity> wrapper);

	List<JiankongshebeiView> selectListView(Pagination page,@Param("ew") Wrapper<JiankongshebeiEntity> wrapper);
	
	JiankongshebeiView selectView(@Param("ew") Wrapper<JiankongshebeiEntity> wrapper);
	

}
