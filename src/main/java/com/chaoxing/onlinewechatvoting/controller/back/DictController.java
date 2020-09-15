package com.chaoxing.onlinewechatvoting.controller.back;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.dict.IdictService;
import com.chaoxing.onlinewechatvoting.service.dict.impl.DictServiceImpl;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName DictController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 9:56
 */
@Api(tags = "DictController|字典模块")
@RequestMapping("/api/back/dict/")
@RestController
public class DictController {

    @Autowired
    private IdictService dictService;


    @PostMapping("add")
    public ServerResponse<String> add(Dict dict){
        return dictService.add(dict);
    }

    @GetMapping("deleteById")
    public ServerResponse<String> deleteById(Integer id){
        return dictService.deleteById(id);
    }
}
