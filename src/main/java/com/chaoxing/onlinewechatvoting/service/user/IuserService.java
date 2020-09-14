package com.chaoxing.onlinewechatvoting.service.user;


import com.chaoxing.onlinewechatvoting.bean.po.User;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;

/**
 * @Author https://github.com/TACHAI
 * @Date 2020-05-13 10:41
 */
public interface IuserService {
    // 登录
    ServerResponse<User> login(String name, String password);
    // 根据id查询
    ServerResponse<User> selectById(Integer id);
    // 插入用户
    ServerResponse<String> insertUser(User user);
    // 更新用户
    ServerResponse<String> updateUser(User user);
}
