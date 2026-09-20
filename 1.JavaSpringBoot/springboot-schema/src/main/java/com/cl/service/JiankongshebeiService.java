package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.JiankongshebeiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JiankongshebeiView;


/**
 * 监控设备
 *
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
public interface JiankongshebeiService extends IService<JiankongshebeiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiankongshebeiView> selectListView(Wrapper<JiankongshebeiEntity> wrapper);
   	
   	JiankongshebeiView selectView(@Param("ew") Wrapper<JiankongshebeiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiankongshebeiEntity> wrapper);
   	

}

