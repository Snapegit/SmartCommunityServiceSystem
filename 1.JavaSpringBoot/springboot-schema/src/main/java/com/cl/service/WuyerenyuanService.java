package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.WuyerenyuanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WuyerenyuanView;


/**
 * 物业人员
 *
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
public interface WuyerenyuanService extends IService<WuyerenyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WuyerenyuanView> selectListView(Wrapper<WuyerenyuanEntity> wrapper);
   	
   	WuyerenyuanView selectView(@Param("ew") Wrapper<WuyerenyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WuyerenyuanEntity> wrapper);
   	

}

