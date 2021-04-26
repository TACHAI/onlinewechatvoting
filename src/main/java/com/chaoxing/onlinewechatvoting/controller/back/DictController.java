package com.chaoxing.onlinewechatvoting.controller.back;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import com.chaoxing.onlinewechatvoting.bean.vo.DictVO;
import com.chaoxing.onlinewechatvoting.bean.vo.PageVO;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.config.VaidParam.ParamsNotNull;
import com.chaoxing.onlinewechatvoting.service.dict.IdictService;
import com.chaoxing.onlinewechatvoting.service.dict.impl.DictServiceImpl;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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


    @ApiOperation("后端字典分页")
    @GetMapping("listByPage")
    public PageVO list(@RequestParam(value = "pageSize",defaultValue = "5")int pageSize, @RequestParam(value = "pageNumber",defaultValue = "1")int pageNumber){

        Page page = PageHelper.startPage(pageNumber,pageSize);
        //recommend 100是banner 推荐200
        List<Dict> list =  dictService.list(null).getData();
        if(list !=null){
            Long total = page.getTotal();
            PageVO p =new PageVO();
            p.setTotal(total);
            p.setRows(list);
            return p;
        }
        return null;
    }


    @ApiOperation("树状字典")
    @GetMapping("tireDict")
    public ServerResponse<List<DictVO>> listDictVo(){
        return dictService.listDictVo();
    }

    @ApiOperation("字典添加")
    @PostMapping("add")
    public ServerResponse<String> add(Dict dict){
        return dictService.add(dict);
    }

    @ApiOperation("字典删除")
    @GetMapping("deleteById")
    public ServerResponse<String> deleteById(@ParamsNotNull Integer id){
        return dictService.deleteById(id);
    }

    @ApiOperation("更新字典")
    @PostMapping("update")
    public ServerResponse<String> update(Dict dict){
        return dictService.update(dict);
    }

    @ApiOperation("根据id查询字典")
    @GetMapping("selectById")
    public ServerResponse<Dict> selectById(@ParamsNotNull Integer id){
        return dictService.selectByPrimaryKey(id);
    }

    @ApiOperation("根据类型查询字典")
    @GetMapping("selectByType")
    public ServerResponse<List<Dict>> selectByType(@ParamsNotNull Integer id){
        return dictService.selectByType(id);
    }
}
