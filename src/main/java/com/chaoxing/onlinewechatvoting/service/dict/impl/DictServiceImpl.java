package com.chaoxing.onlinewechatvoting.service.dict.impl;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.DictMapper;
import com.chaoxing.onlinewechatvoting.service.dict.IdictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName DictServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 9:28
 */
@Service("idictService")
public class DictServiceImpl implements IdictService {
    @Autowired
    private DictMapper dictMapper;


    @Override
    public ServerResponse<String> add(Dict dict) {
        int res = dictMapper.insert(dict);
        if(res >0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int res = dictMapper.deleteByPrimaryKey(id);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.DELETE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DELETE_FAIL);
    }

    @Override
    public ServerResponse<String> update(Dict dict) {
        int res = dictMapper.updateByPrimaryKeySelective(dict);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<Dict> selectByPrimaryKey(Integer id) {
        Dict dict = dictMapper.selectByPrimaryKey(id);
        if(dict!=null){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<List<Dict>> selectByType(Integer type) {
        List<Dict> list = dictMapper.selectByType(type);
        if(list!=null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }
}
