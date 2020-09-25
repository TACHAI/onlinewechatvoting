package com.chaoxing.onlinewechatvoting.service.workuser.impl;

import com.chaoxing.onlinewechatvoting.bean.po.WorkUser;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.WorkUserMapper;
import com.chaoxing.onlinewechatvoting.service.workuser.IworkUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @ClassName WorkUserServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 15:13
 */
@Service(value = "iworkUserService")
public class WorkUserServiceImpl implements IworkUserService {
    @Autowired
    private WorkUserMapper workUserMapper;


    @Override
    public ServerResponse<String> add(WorkUser workUser) {
        workUser.setCreateTime(new Date());
        int res = workUserMapper.insert(workUser);
        if(res>0){
            return ServerResponse.createBySuccess(workUser.getId()+"");
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int res = workUserMapper.deleteByPrimaryKey(id);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.DELETE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DELETE_FAIL);
    }

    @Override
    public ServerResponse<String> update(WorkUser workUser) {
        int res = workUserMapper.updateByPrimaryKeySelective(workUser);
        if (res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.UPDATE_FAIL);
    }

    @Override
    public ServerResponse<WorkUser> selectById(Integer id) {
        WorkUser workUser = workUserMapper.selectByPrimaryKey(id);
        if(workUser!=null){
            return ServerResponse.createBySuccess(workUser);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<WorkUser>> list() {
        List< WorkUser> list = workUserMapper.list();
        if(list!=null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }
}
