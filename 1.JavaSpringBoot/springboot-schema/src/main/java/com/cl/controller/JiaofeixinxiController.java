package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.JiaofeixinxiEntity;
import com.cl.entity.view.JiaofeixinxiView;

import com.cl.service.JiaofeixinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;


/**
 * 缴费信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-25 16:39:06
 */
@RestController
@RequestMapping("/jiaofeixinxi")
public class JiaofeixinxiController {
    @Autowired
    private JiaofeixinxiService jiaofeixinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JiaofeixinxiEntity jiaofeixinxi, 
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yezhu")) {
			jiaofeixinxi.setYezhuzhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("wuyerenyuan")) {
			jiaofeixinxi.setWuyezhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<JiaofeixinxiEntity> ew = new EntityWrapper<JiaofeixinxiEntity>();

		PageUtils page = jiaofeixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiaofeixinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JiaofeixinxiEntity jiaofeixinxi, 
		HttpServletRequest request){
        EntityWrapper<JiaofeixinxiEntity> ew = new EntityWrapper<JiaofeixinxiEntity>();

		PageUtils page = jiaofeixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiaofeixinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JiaofeixinxiEntity jiaofeixinxi){
       	EntityWrapper<JiaofeixinxiEntity> ew = new EntityWrapper<JiaofeixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jiaofeixinxi, "jiaofeixinxi")); 
        return R.ok().put("data", jiaofeixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JiaofeixinxiEntity jiaofeixinxi){
        EntityWrapper< JiaofeixinxiEntity> ew = new EntityWrapper< JiaofeixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jiaofeixinxi, "jiaofeixinxi")); 
		JiaofeixinxiView jiaofeixinxiView =  jiaofeixinxiService.selectView(ew);
		return R.ok("查询缴费信息成功").put("data", jiaofeixinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JiaofeixinxiEntity jiaofeixinxi = jiaofeixinxiService.selectById(id);
		jiaofeixinxi = jiaofeixinxiService.selectView(new EntityWrapper<JiaofeixinxiEntity>().eq("id", id));
        return R.ok().put("data", jiaofeixinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JiaofeixinxiEntity jiaofeixinxi = jiaofeixinxiService.selectById(id);
		jiaofeixinxi = jiaofeixinxiService.selectView(new EntityWrapper<JiaofeixinxiEntity>().eq("id", id));
        return R.ok().put("data", jiaofeixinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JiaofeixinxiEntity jiaofeixinxi, HttpServletRequest request){
    	jiaofeixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiaofeixinxi);
        jiaofeixinxiService.insert(jiaofeixinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JiaofeixinxiEntity jiaofeixinxi, HttpServletRequest request){
    	jiaofeixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiaofeixinxi);
        jiaofeixinxiService.insert(jiaofeixinxi);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JiaofeixinxiEntity jiaofeixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jiaofeixinxi);
        jiaofeixinxiService.updateById(jiaofeixinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jiaofeixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
