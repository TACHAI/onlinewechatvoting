package com.chaoxing.onlinewechatvoting.controller.fore;

import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.bean.vo.PageVO;
import com.chaoxing.onlinewechatvoting.bean.vo.WorkVO;
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
 * @ClassName ForeWorkController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 14:55
 */
@Api(tags = "ForeWorkController|前端作品接口")
@RequestMapping("/api/fore/work/")
@RestController
public class ForeWorkController {

    @Autowired
    private IworkService workService;


    @ApiOperation("作品分页")
    @GetMapping("listByPage")
    public PageVO list(@RequestParam(value = "pageSize",defaultValue = "5")int pageSize, @RequestParam(value = "pageNumber",defaultValue = "1")int pageNumber, Integer activityId, Integer selectType1, Integer selectType2){

        Page page = PageHelper.startPage(pageNumber,pageSize);
        //recommend 100是banner 推荐200
        List<Work> list =  workService.listFore(activityId,selectType1,selectType2).getData();
        if(list !=null){
            Long total = page.getTotal();
            PageVO p =new PageVO();
            p.setTotal(total);
            p.setRows(list);
            return p;
        }
        return null;
    }


    @ApiOperation("作品列表")
    @GetMapping("listByActivityId")
    public List<WorkVO> listByActivityId(@ParamsNotNull Integer activityId){
        return workService.listByActivityId(activityId);
    }


    @ApiOperation("作品详情")
    @GetMapping("selectById")
    public ServerResponse<Work> selectById(@ParamsNotNull Integer id){
        return workService.selectById(id);
    }


    @ApiOperation("作品添加")
    @PostMapping("add")
    public ServerResponse<String> add(Work work){
        return workService.foreAdd(work);
    }
}
