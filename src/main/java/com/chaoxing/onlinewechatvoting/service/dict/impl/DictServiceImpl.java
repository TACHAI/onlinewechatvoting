package com.chaoxing.onlinewechatvoting.service.dict.impl;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import com.chaoxing.onlinewechatvoting.bean.vo.DictVO;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.DictMapper;
import com.chaoxing.onlinewechatvoting.service.dict.IdictService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
            return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.UPDATE_FAIL);
    }

    @Override
    public ServerResponse<Dict> selectByPrimaryKey(Integer id) {
        Dict dict = dictMapper.selectByPrimaryKey(id);
        if(dict!=null){
            return ServerResponse.createBySuccess(dict);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<Dict>> selectByType(Integer type) {
        List<Dict> list = dictMapper.selectByType(type);
        if(list!=null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<Dict>> list(String typeName) {
        List<Dict> list = dictMapper.list(typeName);
        if(list!=null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<Dict>> listType() {
        List<Dict> list = dictMapper.listType();
        if(list!=null&&list.size()>0){
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<DictVO>> listDictVo() {

        List<Dict> list = dictMapper.selectAll();
        List<DictVO> voList = new ArrayList<>();
        Map<Object,Object> map = new HashMap<>();
        for(int i=0;i<list.size();i++){
           DictVO vo = new DictVO();
           vo.setId(list.get(i).getId());
           vo.setName(list.get(i).getName());
           vo.setValue(list.get(i).getValue());
           vo.setType(list.get(i).getType());
           vo.setTypeName(list.get(i).getTypeName());

           //BeanUtils.copyProperties(voList.get(i),vo);
           map.put(vo.getId(),vo);
            if(list.get(i).getPid()==null){
                voList.add(vo);
            }
        }
        // 利用map根据当前节点找出父节点，把当前节点放到父节点中
        for(int i=0;i<list.size(); i++){
            Dict dict = list.get(i);
            DictVO vo = (DictVO) map.get(dict.getPid());
            if(vo!=null){
                if(null==vo.getChildren()){
                    vo.setChildren(new ArrayList<>());
                }
                // 把子节点放到父节点中
                vo.getChildren().add((DictVO) map.get(dict.getId()));
                // 替换父数据
                map.put(dict.getPid(),vo);
            }
        }
        return ServerResponse.createBySuccess(voList);
    }
}
