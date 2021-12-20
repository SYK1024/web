package com.entity;

import javax.management.loading.PrivateClassLoader;
import javax.xml.crypto.Data;
import java.util.Date;

public class Teacher {
    private int id;
    private String name;
    private String img;
    private String introduction;
    private int level;
    private Date create_time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Teacher(int id, String name, String img, String introduction, int level, Date create_time) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.introduction = introduction;
        this.level = level;
        this.create_time = create_time;
    }

    public Teacher(int id, String name, String img, int level) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.level = level;
    }

    public Teacher() {
    }
}
