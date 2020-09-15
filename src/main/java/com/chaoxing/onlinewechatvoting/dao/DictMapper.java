package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;

import java.util.List;

public interface DictMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dict record);

    int insertSelective(Dict record);

    Dict selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dict record);

    int updateByPrimaryKey(Dict record);

    List<Dict> selectByType(Integer type);

    List<Dict> list(String typeName);
}