package com.chaoxing.onlinewechatvoting.dao;

import com.chaoxing.onlinewechatvoting.bean.po.WechatToken;

public interface WechatTokenMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WechatToken record);

    int insertSelective(WechatToken record);

    WechatToken selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WechatToken record);

    int updateByPrimaryKey(WechatToken record);
}