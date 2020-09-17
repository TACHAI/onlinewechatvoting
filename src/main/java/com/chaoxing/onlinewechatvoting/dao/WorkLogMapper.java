package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;

import java.util.List;

public interface WorkLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WorkLog record);

    int insertSelective(WorkLog record);

    WorkLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WorkLog record);

    int updateByPrimaryKey(WorkLog record);

    List<WorkLog> selectByWorkIdAndOpenId(String openId,Integer workId);

    List<WorkLog> selectByWorkId(Integer id);
}