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


import com.cl.dao.CheliangchuchangDao;
import com.cl.entity.CheliangchuchangEntity;
import com.cl.service.CheliangchuchangService;
import com.cl.entity.view.CheliangchuchangView;

@Service("cheliangchuchangService")
public class CheliangchuchangServiceImpl extends ServiceImpl<CheliangchuchangDao, CheliangchuchangEntity> implements CheliangchuchangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CheliangchuchangEntity> page = this.selectPage(
                new Query<CheliangchuchangEntity>(params).getPage(),
                new EntityWrapper<CheliangchuchangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CheliangchuchangEntity> wrapper) {
		  Page<CheliangchuchangView> page =new Query<CheliangchuchangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
	
	@Override
	public List<CheliangchuchangView> selectListView(Wrapper<CheliangchuchangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CheliangchuchangView selectView(Wrapper<CheliangchuchangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
