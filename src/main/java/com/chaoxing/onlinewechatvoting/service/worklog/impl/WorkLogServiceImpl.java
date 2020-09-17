package com.chaoxing.onlinewechatvoting.service.worklog.impl;
import java.time.LocalDate;
import	java.time.ZoneId;

import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.WorkLogMapper;
import com.chaoxing.onlinewechatvoting.service.worklog.IworkLogService;
import com.chaoxing.onlinewechatvoting.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

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
        // todo 验证是否关注公众号
        String openid = workLog.getWxOpenid();
        Integer workId = workLog.getWorkId();
        List<WorkLog> list = workLogMapper.selectByWorkIdAndOpenId(openid,workId);
        for(int i=0;i<list.size();i++){
            if(DateUtil.checkNow(list.get(i).getCreateTime())){
                return ServerResponse.createByErrorMessage("该用户今天已经投过票了，请勿再投");
            }
        }

        workLog.setCreateTime(new Date());
        int res = workLogMapper.insert(workLog);
        if (res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }
}
