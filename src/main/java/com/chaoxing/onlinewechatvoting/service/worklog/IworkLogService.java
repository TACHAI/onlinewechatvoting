package com.chaoxing.onlinewechatvoting.service.worklog;

import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;

/**
 * @Author https://github.com/TACHAI
 * @Date 2020-09-15 15:08
 */
public interface IworkLogService {
    ServerResponse<String> add(WorkLog workLog);
}
