package com.chaoxing.onlinewechatvoting.service.work;

import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;

import java.util.List;

/**
 * @Author https://github.com/TACHAI
 * @Date 2020-09-15 13:58
 */
public interface IworkService {

    ServerResponse<String> add(Work work);

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<String> update(Work work);

    ServerResponse<Work> selectById(Integer id);

    ServerResponse<List<Work>> list(Integer activityId,Integer selectType1,Integer selectType2);
}
