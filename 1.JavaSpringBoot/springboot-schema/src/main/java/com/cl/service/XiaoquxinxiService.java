package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XiaoquxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XiaoquxinxiView;


/**
 * 小区信息
 *
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
public interface XiaoquxinxiService extends IService<XiaoquxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiaoquxinxiView> selectListView(Wrapper<XiaoquxinxiEntity> wrapper);
   	
   	XiaoquxinxiView selectView(@Param("ew") Wrapper<XiaoquxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiaoquxinxiEntity> wrapper);
   	

}

