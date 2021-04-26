package com.chaoxing.onlinewechatvoting.controller.back;

import com.chaoxing.onlinewechatvoting.bean.vo.OptionVO;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.worklog.impl.WorkLogServiceImpl;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName WorkLogController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2021-04-09 10:46
 */

@Api(tags = "WorkLogController|后台投票排行")
@RequestMapping("/api/back/workLog/")
@RestController
public class WorkLogController {
    @Autowired
    private WorkLogServiceImpl workLogService;

    // 地区排序
    // select w.name,count(l.id) as votes from t_work w LEFT JOIN t_work_log l  on w.id =l.work_id GROUP BY w.select_type1 ORDER BY votes desc;

    @GetMapping("areaList")
    public ServerResponse<List<OptionVO>> areaList(){
        return workLogService.areaList();
    }


    // 站点排序
    @GetMapping("siteList")
    public ServerResponse<List<OptionVO>> siteList(){
        return workLogService.siteList();
    }

}
