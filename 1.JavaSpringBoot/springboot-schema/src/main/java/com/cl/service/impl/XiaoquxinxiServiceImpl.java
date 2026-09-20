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


import com.cl.dao.XiaoquxinxiDao;
import com.cl.entity.XiaoquxinxiEntity;
import com.cl.service.XiaoquxinxiService;
import com.cl.entity.view.XiaoquxinxiView;

@Service("xiaoquxinxiService")
public class XiaoquxinxiServiceImpl extends ServiceImpl<XiaoquxinxiDao, XiaoquxinxiEntity> implements XiaoquxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiaoquxinxiEntity> page = this.selectPage(
                new Query<XiaoquxinxiEntity>(params).getPage(),
                new EntityWrapper<XiaoquxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiaoquxinxiEntity> wrapper) {
		  Page<XiaoquxinxiView> page =new Query<XiaoquxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
	
	@Override
	public List<XiaoquxinxiView> selectListView(Wrapper<XiaoquxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiaoquxinxiView selectView(Wrapper<XiaoquxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
