package com.chaoxing.onlinewechatvoting.controller.back;

import com.chaoxing.onlinewechatvoting.bean.po.WorkUser;
import com.chaoxing.onlinewechatvoting.bean.vo.PageVO;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.workuser.IworkUserService;
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
 * @ClassName WorkLogController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 15:39
 */
@Api(tags = "WorkUserController|作品用户管理模块")
@RequestMapping("/api/back/workuser/")
@RestController
public class WorkUserController {
    @Autowired
    private IworkUserService iworkUserService;

    @ApiOperation("作品用户分页")
    @GetMapping("listByPage")
    public PageVO list(@RequestParam(value = "pageSize",defaultValue = "5")int pageSize, @RequestParam(value = "pageNumber",defaultValue = "1")int pageNumber){

        Page page = PageHelper.startPage(pageNumber,pageSize);
        //recommend 100是banner 推荐200
        List<WorkUser> list =  iworkUserService.list().getData();
        if(list !=null){
            Long total = page.getTotal();
            PageVO p =new PageVO();
            p.setTotal(total);
            p.setRows(list);
            return p;
        }
        return null;
    }

    @ApiOperation("作品用户查询")
    @GetMapping("select")
    public ServerResponse<WorkUser> select(Integer id){
        return iworkUserService.selectById(id);
    }

}
