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

import com.cl.entity.DuijiangxinxiEntity;
import com.cl.entity.view.DuijiangxinxiView;

import com.cl.service.DuijiangxinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;


/**
 * 对讲信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-25 16:39:07
 */
@RestController
@RequestMapping("/duijiangxinxi")
public class DuijiangxinxiController {
    @Autowired
    private DuijiangxinxiService duijiangxinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DuijiangxinxiEntity duijiangxinxi, 
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yezhu")) {
			duijiangxinxi.setYezhuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<DuijiangxinxiEntity> ew = new EntityWrapper<DuijiangxinxiEntity>();

		PageUtils page = duijiangxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, duijiangxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DuijiangxinxiEntity duijiangxinxi, 
		HttpServletRequest request){
        EntityWrapper<DuijiangxinxiEntity> ew = new EntityWrapper<DuijiangxinxiEntity>();

		PageUtils page = duijiangxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, duijiangxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DuijiangxinxiEntity duijiangxinxi){
       	EntityWrapper<DuijiangxinxiEntity> ew = new EntityWrapper<DuijiangxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( duijiangxinxi, "duijiangxinxi")); 
        return R.ok().put("data", duijiangxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DuijiangxinxiEntity duijiangxinxi){
        EntityWrapper< DuijiangxinxiEntity> ew = new EntityWrapper< DuijiangxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( duijiangxinxi, "duijiangxinxi")); 
		DuijiangxinxiView duijiangxinxiView =  duijiangxinxiService.selectView(ew);
		return R.ok("查询对讲信息成功").put("data", duijiangxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DuijiangxinxiEntity duijiangxinxi = duijiangxinxiService.selectById(id);
		duijiangxinxi = duijiangxinxiService.selectView(new EntityWrapper<DuijiangxinxiEntity>().eq("id", id));
        return R.ok().put("data", duijiangxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DuijiangxinxiEntity duijiangxinxi = duijiangxinxiService.selectById(id);
		duijiangxinxi = duijiangxinxiService.selectView(new EntityWrapper<DuijiangxinxiEntity>().eq("id", id));
        return R.ok().put("data", duijiangxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DuijiangxinxiEntity duijiangxinxi, HttpServletRequest request){
    	duijiangxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(duijiangxinxi);
        duijiangxinxiService.insert(duijiangxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DuijiangxinxiEntity duijiangxinxi, HttpServletRequest request){
    	duijiangxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(duijiangxinxi);
        duijiangxinxiService.insert(duijiangxinxi);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody DuijiangxinxiEntity duijiangxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(duijiangxinxi);
        duijiangxinxiService.updateById(duijiangxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        duijiangxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
