package com.chaoxing.onlinewechatvoting.controller.back;

import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.bean.vo.PageVO;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.config.VaidParam.ParamsNotNull;
import com.chaoxing.onlinewechatvoting.service.work.IworkService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName WorkController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 14:35
 */
@Api(tags = "WorkController|作品管理模块")
@RequestMapping("/api/back/work/")
@RestController
public class WorkController {

    @Autowired
    private IworkService workService;

    @ApiOperation("后端投票活动分页")
    @GetMapping("listByPage")
    public PageVO list(@RequestParam(value = "pageSize",defaultValue = "5")int pageSize, @RequestParam(value = "pageNumber",defaultValue = "1")int pageNumber,Integer activityId,Integer selectType1,Integer selectType2){

        Page page = PageHelper.startPage(pageNumber,pageSize);
        //recommend 100是banner 推荐200
        List<Work> list =  workService.list(activityId,selectType1,selectType2).getData();
        if(list !=null){
            Long total = page.getTotal();
            PageVO p =new PageVO();
            p.setTotal(total);
            p.setRows(list);
            return p;
        }
        return null;
    }


    @ApiOperation("作品添加")
    @PostMapping("add")
    public ServerResponse<String> add(Work work){
        return workService.add(work);
    }

    @ApiOperation("作品删除")
    @GetMapping("deleteById")
    public ServerResponse <String> deleteById(Integer id){
        return workService.deleteById(id);
    }

    @ApiOperation("作品修改")
    @PostMapping("update")
    public ServerResponse<String> update(Work work){
        return workService.update(work);
    }

    @ApiOperation("查询单个作品")
    @GetMapping("selectById")
    public ServerResponse<Work> selectById(Integer id){
        return workService.selectById(id);
    }

    @ApiOperation("作品上下架")
    @GetMapping("status")
    public ServerResponse<String> status(@ParamsNotNull Integer id){
        return workService.status(id);
    }
}
