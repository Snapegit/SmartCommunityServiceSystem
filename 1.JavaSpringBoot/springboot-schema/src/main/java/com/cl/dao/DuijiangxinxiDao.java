package com.cl.dao;

import com.cl.entity.DuijiangxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DuijiangxinxiView;


/**
 * 对讲信息
 * 
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
public interface DuijiangxinxiDao extends BaseMapper<DuijiangxinxiEntity> {
	
	List<DuijiangxinxiView> selectListView(@Param("ew") Wrapper<DuijiangxinxiEntity> wrapper);

	List<DuijiangxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DuijiangxinxiEntity> wrapper);
	
	DuijiangxinxiView selectView(@Param("ew") Wrapper<DuijiangxinxiEntity> wrapper);
	

}
