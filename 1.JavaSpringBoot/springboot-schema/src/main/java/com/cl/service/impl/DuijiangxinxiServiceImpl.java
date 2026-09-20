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


import com.cl.dao.DuijiangxinxiDao;
import com.cl.entity.DuijiangxinxiEntity;
import com.cl.service.DuijiangxinxiService;
import com.cl.entity.view.DuijiangxinxiView;

@Service("duijiangxinxiService")
public class DuijiangxinxiServiceImpl extends ServiceImpl<DuijiangxinxiDao, DuijiangxinxiEntity> implements DuijiangxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DuijiangxinxiEntity> page = this.selectPage(
                new Query<DuijiangxinxiEntity>(params).getPage(),
                new EntityWrapper<DuijiangxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DuijiangxinxiEntity> wrapper) {
		  Page<DuijiangxinxiView> page =new Query<DuijiangxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
	
	@Override
	public List<DuijiangxinxiView> selectListView(Wrapper<DuijiangxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DuijiangxinxiView selectView(Wrapper<DuijiangxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
