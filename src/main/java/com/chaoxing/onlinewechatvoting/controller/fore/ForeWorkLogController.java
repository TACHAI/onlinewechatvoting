package com.chaoxing.onlinewechatvoting.controller.fore;

import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.worklog.IworkLogService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName ForeWorkLogController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 15:56
 */
@Api(tags = "ForeWorkUserController|前端作品用户接口")
@RequestMapping("/api/fore/workuser/")
@RestController
public class ForeWorkLogController {

    @Autowired
    private IworkLogService iworkLogService;

    @ApiOperation("用户投票")
    @PostMapping("vote")
    public ServerResponse<String> vote(WorkLog workLog){
        return iworkLogService.add(workLog);
    }

}
