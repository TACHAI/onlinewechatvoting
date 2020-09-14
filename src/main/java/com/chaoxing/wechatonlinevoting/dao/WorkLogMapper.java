package com.chaoxing.wechatonlinevoting.dao;

import com.chaoxing.wechatonlinevoting.bean.po.WorkLog;

public interface WorkLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WorkLog record);

    int insertSelective(WorkLog record);

    WorkLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WorkLog record);

    int updateByPrimaryKey(WorkLog record);
}