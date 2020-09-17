package com.chaoxing.onlinewechatvoting.service.Activity.impl;

import com.alibaba.druid.stat.TableStat;
import com.chaoxing.onlinewechatvoting.bean.po.Activity;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.ActivityMapper;
import com.chaoxing.onlinewechatvoting.service.Activity.IactivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


/**
 * @ClassName ActivityServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 11:37
 */
@Service(value = "iactivityService")
public class ActivityServiceImpl implements IactivityService {
    @Autowired
    private ActivityMapper activityMapper;

    @Override
    public ServerResponse<String> add(Activity activity) {
        activity.setStatus(ResponseString.IS_DELETE);
        activity.setIsDelete(ResponseString.UN_DELETE);
        activity.setCreateTime(new Date());
        int res = activityMapper.insert(activity);
        if(res >0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<String> delete(Integer id) {
        Activity res = activityMapper.selectByPrimaryKey(id);
        if(res!=null){
            res.setIsDelete(ResponseString.IS_DELETE);
            activityMapper.updateByPrimaryKeySelective(res);
            return ServerResponse.createBySuccessMessage(ResponseString.DELETE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DELETE_FAIL);
    }

    @Override
    public ServerResponse<String> update(Activity activity) {
        int res = activityMapper.updateByPrimaryKeySelective(activity);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.UPDATE_FAIL);
    }

    @Override
    public ServerResponse<Activity> selectByPrimaryKey(Integer id) {
        Activity activity = activityMapper.selectByPrimaryKey(id);
        if(activity!=null){
            return ServerResponse.createBySuccess(activity);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<Activity>> list() {
        List< Activity> list=activityMapper.list();
        if(list != null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<Activity>> listFore() {
        List< Activity> list=activityMapper.listFore();
        if(list != null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);    }

    @Override
    public ServerResponse<String> status(Integer id) {
        Activity activity = activityMapper.selectByPrimaryKey(id);
        if(activity== null){
            return ServerResponse.createByErrorMessage(ResponseString.PARAMS_IS_EMPTY);
        }
        if(1==activity.getStatus()){
            activity.setStatus(ResponseString.UN_DELETE);
        }else {
            activity.setStatus(ResponseString.IS_DELETE);
        }
        activityMapper.updateByPrimaryKeySelective(activity);
        return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);    }
}
