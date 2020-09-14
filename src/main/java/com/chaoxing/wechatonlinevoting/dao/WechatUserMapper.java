package com.chaoxing.wechatonlinevoting.dao;

import com.chaoxing.wechatonlinevoting.bean.po.WechatUser;

public interface WechatUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WechatUser record);

    int insertSelective(WechatUser record);

    WechatUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WechatUser record);

    int updateByPrimaryKey(WechatUser record);
}