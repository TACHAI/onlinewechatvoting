package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WorkLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WorkLog record);

    int insertSelective(WorkLog record);

    WorkLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WorkLog record);

    int updateByPrimaryKey(WorkLog record);

    List<WorkLog> selectByWorkIdAndOpenId(@Param("openId") String openId, @Param("workId") Integer workId);

    List<WorkLog> selectByWorkId(@Param("workId") Integer workId);
}