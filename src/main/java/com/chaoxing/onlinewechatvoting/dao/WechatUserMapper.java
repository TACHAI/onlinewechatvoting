package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.WechatUser;
import org.apache.ibatis.annotations.Param;

public interface WechatUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WechatUser record);

    int insertSelective(WechatUser record);

    WechatUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WechatUser record);

    int updateByPrimaryKey(WechatUser record);

    WechatUser selectByOpenId(@Param("openId") String openId);
}