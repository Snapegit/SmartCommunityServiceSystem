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

import com.cl.entity.JiankongshebeiEntity;
import com.cl.entity.view.JiankongshebeiView;

import com.cl.service.JiankongshebeiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;


/**
 * 监控设备
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
@RestController
@RequestMapping("/jiankongshebei")
public class JiankongshebeiController {
    @Autowired
    private JiankongshebeiService jiankongshebeiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JiankongshebeiEntity jiankongshebei, 
		HttpServletRequest request){
        EntityWrapper<JiankongshebeiEntity> ew = new EntityWrapper<JiankongshebeiEntity>();

		PageUtils page = jiankongshebeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiankongshebei), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JiankongshebeiEntity jiankongshebei, 
		HttpServletRequest request){
        EntityWrapper<JiankongshebeiEntity> ew = new EntityWrapper<JiankongshebeiEntity>();

		PageUtils page = jiankongshebeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiankongshebei), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JiankongshebeiEntity jiankongshebei){
       	EntityWrapper<JiankongshebeiEntity> ew = new EntityWrapper<JiankongshebeiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jiankongshebei, "jiankongshebei")); 
        return R.ok().put("data", jiankongshebeiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JiankongshebeiEntity jiankongshebei){
        EntityWrapper< JiankongshebeiEntity> ew = new EntityWrapper< JiankongshebeiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jiankongshebei, "jiankongshebei")); 
		JiankongshebeiView jiankongshebeiView =  jiankongshebeiService.selectView(ew);
		return R.ok("查询监控设备成功").put("data", jiankongshebeiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JiankongshebeiEntity jiankongshebei = jiankongshebeiService.selectById(id);
		jiankongshebei = jiankongshebeiService.selectView(new EntityWrapper<JiankongshebeiEntity>().eq("id", id));
        return R.ok().put("data", jiankongshebei);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JiankongshebeiEntity jiankongshebei = jiankongshebeiService.selectById(id);
		jiankongshebei = jiankongshebeiService.selectView(new EntityWrapper<JiankongshebeiEntity>().eq("id", id));
        return R.ok().put("data", jiankongshebei);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JiankongshebeiEntity jiankongshebei, HttpServletRequest request){
    	jiankongshebei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiankongshebei);
        jiankongshebeiService.insert(jiankongshebei);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JiankongshebeiEntity jiankongshebei, HttpServletRequest request){
    	jiankongshebei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiankongshebei);
        jiankongshebeiService.insert(jiankongshebei);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JiankongshebeiEntity jiankongshebei, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jiankongshebei);
        jiankongshebeiService.updateById(jiankongshebei);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jiankongshebeiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
