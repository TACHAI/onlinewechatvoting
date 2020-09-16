package com.chaoxing.onlinewechatvoting.service.Activity;

import com.chaoxing.onlinewechatvoting.bean.po.Activity;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;

import java.util.List;

/**
 * @Author https://github.com/TACHAI
 * @Date 2020-09-15 11:37
 */
public interface IactivityService {

    ServerResponse<String> add(Activity activity);

    ServerResponse<String> delete(Integer id);

    ServerResponse<String> update(Activity activity);

    ServerResponse<Activity> selectByPrimaryKey(Integer id);

    ServerResponse<List<Activity>> list();

    ServerResponse<List<Activity>> listFore();

    ServerResponse<String> status(Integer id);

}
