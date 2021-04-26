package com.chaoxing.onlinewechatvoting.controller.fore;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import com.chaoxing.onlinewechatvoting.bean.vo.DictVO;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.config.VaidParam.ParamsNotNull;
import com.chaoxing.onlinewechatvoting.service.dict.IdictService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName ForeDictController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 11:32
 */
@Api(tags = "ForeDictController|前端字典模块")
@RequestMapping("/api/fore/dict/")
@RestController
public class ForeDictController {
    @Autowired
    private IdictService dictService;

    @ApiOperation("根据类型查询字典")
    @GetMapping("selectByType")
    public ServerResponse<List<Dict>> selectByType(@ParamsNotNull Integer type){
        return dictService.selectByType(type);
    }

    @ApiOperation("查询类型列表")
    @GetMapping("listType")
    public ServerResponse<List<Dict>> listType(){
        return dictService.listType();
    }


    @ApiOperation("树状字典")
    @GetMapping("tireDict")
    public ServerResponse<List<DictVO>> listDictVo(){
        return dictService.listDictVo();
    }

}
