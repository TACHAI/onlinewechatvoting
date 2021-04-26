package com.chaoxing.onlinewechatvoting.service.dict;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import com.chaoxing.onlinewechatvoting.bean.vo.DictVO;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;

import java.util.List;

/**
 * @Author https://github.com/TACHAI
 * @Date 2020-09-15 9:27
 */
public interface IdictService {

    ServerResponse<String> add(Dict dict);

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<String> update(Dict dict);

    ServerResponse<Dict> selectByPrimaryKey(Integer id);

    ServerResponse<List<Dict>> selectByType(Integer type);

    ServerResponse<List<Dict>> list(String typeName);
    ServerResponse<List<Dict>> listType();

    ServerResponse<List<DictVO>> listDictVo();
}
