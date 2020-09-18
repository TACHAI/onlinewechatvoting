package com.chaoxing.onlinewechatvoting.controller.fore;

import com.chaoxing.onlinewechatvoting.bean.po.Activity;
import com.chaoxing.onlinewechatvoting.bean.vo.PageVO;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.config.VaidParam.ParamsNotNull;
import com.chaoxing.onlinewechatvoting.service.Activity.IactivityService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName ForeActivityController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 13:45
 */
@Api(tags = "ForeActivityController|前端投票活动主题")
@RequestMapping("/api/fore/activity/")
@RestController
public class ForeActivityController {
    @Autowired
    private IactivityService activityService;

    @ApiOperation("前端投票活动分页")
    @GetMapping("listByPage")
    public PageVO list(@RequestParam(value = "pageSize",defaultValue = "5")int pageSize, @RequestParam(value = "pageNumber",defaultValue = "1")int pageNumber){

        Page page = PageHelper.startPage(pageNumber,pageSize);
        //recommend 100是banner 推荐200
        List<Activity> list =  activityService.listFore().getData();
        if(list !=null){
            Long total = page.getTotal();
            PageVO p =new PageVO();
            p.setTotal(total);
            p.setRows(list);
            return p;
        }
        return null;
    }

    @ApiOperation("前端获取投票活动")
    @GetMapping("selectById")
    public ServerResponse<Activity> selectById(@ParamsNotNull Integer id){
        return activityService.selectByPrimaryKey(id);
    }

}
