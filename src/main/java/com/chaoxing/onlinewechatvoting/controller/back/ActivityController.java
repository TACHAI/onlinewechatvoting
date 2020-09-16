package com.chaoxing.onlinewechatvoting.controller.back;

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
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName ActivityController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 12:03
 */

@Api(tags = "ActivityController|投票活动主题")
@RequestMapping("/api/back/activity/")
@RestController
public class ActivityController {
    @Autowired
    private IactivityService activityService;

    @ApiOperation("后端投票活动分页")
    @GetMapping("listByPage")
    public PageVO list(@RequestParam(value = "pageSize",defaultValue = "5")int pageSize, @RequestParam(value = "pageNumber",defaultValue = "1")int pageNumber){

        Page page = PageHelper.startPage(pageNumber,pageSize);
        //recommend 100是banner 推荐200
        List<Activity> list =  activityService.list().getData();
        if(list !=null){
            Long total = page.getTotal();
            PageVO p =new PageVO();
            p.setTotal(total);
            p.setRows(list);
            return p;
        }
        return null;
    }

    @ApiOperation("投票活动添加")
    @PostMapping("add")
    public ServerResponse<String> add(Activity activity){
        return activityService.add(activity);
    }

    @ApiOperation("删除投票活动")
    @GetMapping("deleteById")
    public ServerResponse <String>deleteById(@ParamsNotNull Integer id){
        return activityService.delete(id);
    }

    @ApiOperation("修改投票活动")
    @PostMapping("update")
    public ServerResponse<String> update(Activity activity){
        return activityService.update(activity);
    }

    @ApiOperation("查询投票活动")
    @GetMapping("selectById")
    public ServerResponse<Activity> selectById(@ParamsNotNull Integer id){
        return activityService.selectByPrimaryKey(id);
    }

    @ApiOperation("上下架")
    @GetMapping("status")
    public ServerResponse<String> status(@ParamsNotNull Integer id){
        return activityService.status(id);
    }

}
