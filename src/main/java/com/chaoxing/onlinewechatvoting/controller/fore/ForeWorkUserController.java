package com.chaoxing.onlinewechatvoting.controller.fore;

import com.chaoxing.onlinewechatvoting.bean.po.WorkUser;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.workuser.IworkUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName ForeWorkUserController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 15:50
 */
@Api(tags = "ForeWorkUserController|前端作品用户接口")
@RequestMapping("/api/fore/workuser/")
@RestController
public class ForeWorkUserController {
    @Autowired
    private IworkUserService iworkUserService;

    @ApiOperation("添加作品用户")
    @PostMapping("add")
    public ServerResponse<String> add(WorkUser workUser){
        return iworkUserService.add(workUser);
    }
}
