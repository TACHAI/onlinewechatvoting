package com.chaoxing.onlinewechatvoting.bean.po;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Work {
    private Integer id;

    private String name;

    private String image;

    private String video;

    private String content;

    private String author;

    private Integer activityId;

    private Integer workUserId;

    private Integer selectType1;

    private Integer selectType2;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video == null ? null : video.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Integer getWorkUserId() {
        return workUserId;
    }

    public void setWorkUserId(Integer workUserId) {
        this.workUserId = workUserId;
    }

    public Integer getSelectType1() {
        return selectType1;
    }

    public void setSelectType1(Integer selectType1) {
        this.selectType1 = selectType1;
    }

    public Integer getSelectType2() {
        return selectType2;
    }

    public void setSelectType2(Integer selectType2) {
        this.selectType2 = selectType2;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}