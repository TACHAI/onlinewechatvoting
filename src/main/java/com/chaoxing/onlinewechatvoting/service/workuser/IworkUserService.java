package com.chaoxing.onlinewechatvoting.service.workuser;

import com.chaoxing.onlinewechatvoting.bean.po.WorkUser;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;

import java.util.List;

/**
 * @ClassName IworkUserService
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 15:12
 */
public interface IworkUserService {

    ServerResponse<String> add(WorkUser workUser);

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<String> update(WorkUser workUser);

    ServerResponse<WorkUser> selectById(Integer id);

    ServerResponse<List<WorkUser>> list( );
}
