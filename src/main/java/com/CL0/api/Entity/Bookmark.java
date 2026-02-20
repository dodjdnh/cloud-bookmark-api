package com.CL0.api.Entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import java.util.Date;

@Data
public class Bookmark {
    @TableId(type = IdType.AUTO)
    private Long id;
    private String title;
    private String url;
    private String description;
    private Date createTime;
}
