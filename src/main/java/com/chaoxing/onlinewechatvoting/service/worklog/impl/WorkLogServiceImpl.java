package com.chaoxing.onlinewechatvoting.service.worklog.impl;
import java.time.LocalDate;
import	java.time.ZoneId;

import com.chaoxing.onlinewechatvoting.bean.po.Activity;
import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.ActivityMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkLogMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkMapper;
import com.chaoxing.onlinewechatvoting.service.WechatUser.impl.WechatUserServiceImpl;
import com.chaoxing.onlinewechatvoting.service.worklog.IworkLogService;
import com.chaoxing.onlinewechatvoting.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
    private static Integer threshold;


    @Value("${vote.threshold}")
    public void setThreshold(Integer threshold){
        WorkLogServiceImpl.threshold=threshold;
    }

    @Autowired
    private WorkLogMapper workLogMapper;
    @Autowired
    private ActivityMapper activityMapper;
    @Autowired
    private WorkMapper workMapper;

    @Override
    public ServerResponse<String> add(WorkLog workLog) {

        Integer temp =0;

        String openid = workLog.getWxOpenid();
        Integer workId = workLog.getWorkId();
        //1 已投票判断
        List<WorkLog> list = workLogMapper.selectByWorkIdAndActivityId(openid,workLog.getActivityId());
        for(int i=0;i<list.size();i++){

            if(DateUtil.checkNow(list.get(i).getCreateTime())){
                temp++;
            }
            if(temp.equals(threshold)){
                return ServerResponse.createByErrorMessage("该用户今天已经投过票了，请勿再投");
            }
        }

        Date now = new Date();
        //2 活动过期判断
        Activity activity = activityMapper.selectByPrimaryKey(workLog.getActivityId());
        if(activity.getActivityTime().before(now)){
            return ServerResponse.createByErrorMessage("活动已过期不能投票");
        }

        //3作品下架判断
        Work work = workMapper.selectByPrimaryKey(workId);
        if(ResponseString.IS_DELETE.equals(work.getStatus())){
            return ServerResponse.createByErrorMessage("作品已下架不能投票");
        }

        workLog.setCreateTime(new Date());
        int res = workLogMapper.insert(workLog);
        if (res>0){
            return ServerResponse.createBySuccessMessage("投票成功");
        }
        return ServerResponse.createByErrorMessage("投票失败");
    }
}
