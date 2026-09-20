package com.cl.dao;

import com.cl.entity.WuyerenyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WuyerenyuanView;


/**
 * 物业人员
 * 
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
public interface WuyerenyuanDao extends BaseMapper<WuyerenyuanEntity> {
	
	List<WuyerenyuanView> selectListView(@Param("ew") Wrapper<WuyerenyuanEntity> wrapper);

	List<WuyerenyuanView> selectListView(Pagination page,@Param("ew") Wrapper<WuyerenyuanEntity> wrapper);
	
	WuyerenyuanView selectView(@Param("ew") Wrapper<WuyerenyuanEntity> wrapper);
	

}
