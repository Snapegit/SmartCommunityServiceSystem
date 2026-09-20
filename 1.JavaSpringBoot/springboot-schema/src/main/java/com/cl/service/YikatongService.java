package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.YikatongEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YikatongView;


/**
 * 一卡通
 *
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
public interface YikatongService extends IService<YikatongEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YikatongView> selectListView(Wrapper<YikatongEntity> wrapper);
   	
   	YikatongView selectView(@Param("ew") Wrapper<YikatongEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YikatongEntity> wrapper);
   	

}

