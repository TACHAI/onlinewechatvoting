package com.chaoxing.onlinewechatvoting.service.worklog.impl;

import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.WorkLogMapper;
import com.chaoxing.onlinewechatvoting.service.worklog.IworkLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @ClassName WorkLogServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 15:08
 */
@Service(value = "iworkLogService")
public class WorkLogServiceImpl implements IworkLogService {
    @Autowired
    private WorkLogMapper workLogMapper;

    @Override
    public ServerResponse<String> add(WorkLog workLog) {
        // todo 做一些逻辑判断 一天投一票
        workLog.setCreateTime(new Date());
        int res = workLogMapper.insert(workLog);
        if (res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }
}
