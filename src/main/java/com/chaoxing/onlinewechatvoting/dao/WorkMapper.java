package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.Work;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WorkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Work record);

    int insertSelective(Work record);

    Work selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Work record);

    int updateByPrimaryKey(Work record);

    List<Work> list(@Param("activityId") Integer activityId, @Param("selectType1") Integer selectType1,@Param("selectType2") Integer selectType2);

    List<Work> listFore(@Param("activityId")Integer activityId,@Param("selectType1") Integer selectType1, @Param("selectType2")Integer selectType2);
}