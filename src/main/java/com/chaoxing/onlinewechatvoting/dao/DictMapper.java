package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DictMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dict record);

    int insertSelective(Dict record);

    Dict selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dict record);

    int updateByPrimaryKey(Dict record);

    List<Dict> selectByType(@Param("type") Integer type);

    List<Dict> list(@Param("typeName") String typeName);

    List<Dict> listType();

    List<Dict> selectAll();
}