package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.WuyerenyuanDao;
import com.cl.entity.WuyerenyuanEntity;
import com.cl.service.WuyerenyuanService;
import com.cl.entity.view.WuyerenyuanView;

@Service("wuyerenyuanService")
public class WuyerenyuanServiceImpl extends ServiceImpl<WuyerenyuanDao, WuyerenyuanEntity> implements WuyerenyuanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WuyerenyuanEntity> page = this.selectPage(
                new Query<WuyerenyuanEntity>(params).getPage(),
                new EntityWrapper<WuyerenyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WuyerenyuanEntity> wrapper) {
		  Page<WuyerenyuanView> page =new Query<WuyerenyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
	
	@Override
	public List<WuyerenyuanView> selectListView(Wrapper<WuyerenyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WuyerenyuanView selectView(Wrapper<WuyerenyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
