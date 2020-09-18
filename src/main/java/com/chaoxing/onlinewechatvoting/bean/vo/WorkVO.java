package com.chaoxing.onlinewechatvoting.bean.vo;

import com.chaoxing.onlinewechatvoting.bean.po.Work;
import lombok.Data;

/**
 * @ClassName WorkVO
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-17 16:52
 */
@Data
public class WorkVO  {
    private Integer id;

    private String name;

    private String image;

    private String content;

    private String author;

    private Integer votes;

    private Integer ActivityType;
}
