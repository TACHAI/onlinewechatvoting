package com.chaoxing.onlinewechatvoting.service.work.impl;

import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.WorkMapper;
import com.chaoxing.onlinewechatvoting.service.work.IworkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * @ClassName WorkServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 13:58
 */
@Service(value = "iworkService")
public class WorkServiceImpl implements IworkService {

    @Autowired
    private WorkMapper workMapper;

    @Override
    public ServerResponse<String> add(Work work) {
//        work.setCreateTime(LocalDateTime.now());
        work.setCreateTime(new Date());
        int res = workMapper.insert(work);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int res = workMapper.deleteByPrimaryKey(id);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.DELETE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DELETE_FAIL);
    }

    @Override
    public ServerResponse<String> update(Work work) {
        int res = workMapper.updateByPrimaryKeySelective(work);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.UPDATE_FAIL);
    }

    @Override
    public ServerResponse<Work> selectById(Integer id) {
        Work work = workMapper.selectByPrimaryKey(id);
        if(work!=null){
            return ServerResponse.createBySuccess(work);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<Work>> list(Integer activityId, Integer selectType1, Integer selectType2) {
        List<Work> list = workMapper.list(activityId,selectType1,selectType2);
        if(list != null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }
}
