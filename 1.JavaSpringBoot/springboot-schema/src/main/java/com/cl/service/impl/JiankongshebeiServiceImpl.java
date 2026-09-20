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


import com.cl.dao.JiankongshebeiDao;
import com.cl.entity.JiankongshebeiEntity;
import com.cl.service.JiankongshebeiService;
import com.cl.entity.view.JiankongshebeiView;

@Service("jiankongshebeiService")
public class JiankongshebeiServiceImpl extends ServiceImpl<JiankongshebeiDao, JiankongshebeiEntity> implements JiankongshebeiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiankongshebeiEntity> page = this.selectPage(
                new Query<JiankongshebeiEntity>(params).getPage(),
                new EntityWrapper<JiankongshebeiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiankongshebeiEntity> wrapper) {
		  Page<JiankongshebeiView> page =new Query<JiankongshebeiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
	
	@Override
	public List<JiankongshebeiView> selectListView(Wrapper<JiankongshebeiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiankongshebeiView selectView(Wrapper<JiankongshebeiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
