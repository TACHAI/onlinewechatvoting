package com.chaoxing.wechatonlinevoting.dao;

import com.chaoxing.wechatonlinevoting.bean.po.WorkUser;

public interface WorkUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WorkUser record);

    int insertSelective(WorkUser record);

    WorkUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WorkUser record);

    int updateByPrimaryKey(WorkUser record);
}