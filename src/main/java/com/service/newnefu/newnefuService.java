package com.service.newnefu;

import com.entity.Newnefu;

import java.util.List;

public interface newnefuService {
//    查询全部新闻
    public List<Newnefu> newnefus();
    //查询最新的五个
    public List<Newnefu> newnefusneed();
    //查找要的那条新闻
    public Newnefu getnewnefu(int id);
}
