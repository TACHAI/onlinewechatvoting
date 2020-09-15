package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.WorkUser;

import java.util.List;

public interface WorkUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WorkUser record);

    int insertSelective(WorkUser record);

    WorkUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WorkUser record);

    int updateByPrimaryKey(WorkUser record);

    List<WorkUser> list();
}