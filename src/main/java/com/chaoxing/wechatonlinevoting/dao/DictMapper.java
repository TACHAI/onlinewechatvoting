package com.chaoxing.wechatonlinevoting.dao;

import com.chaoxing.wechatonlinevoting.bean.po.Dict;

public interface DictMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dict record);

    int insertSelective(Dict record);

    Dict selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dict record);

    int updateByPrimaryKey(Dict record);
}