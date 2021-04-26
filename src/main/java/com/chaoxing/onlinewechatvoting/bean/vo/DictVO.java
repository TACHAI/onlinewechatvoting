package com.chaoxing.onlinewechatvoting.bean.vo;

import com.chaoxing.onlinewechatvoting.bean.po.Dict;
import lombok.Data;

import java.util.List;

/**
 * @ClassName DictVO
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2021-04-09 9:39
 */
@Data
public class DictVO extends Dict {
    private List<DictVO> children;
}
