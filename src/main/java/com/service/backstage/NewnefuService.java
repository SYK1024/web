package com.service.backstage;

import com.entity.Newnefu;

import java.security.PublicKey;
import java.util.List;

public interface NewnefuService {
    //    查询全部新闻
    public List<Newnefu> newnefus();
    //查询最新的五个
    public List<Newnefu> newnefusneed();
    //查找要的那条新闻
    public Newnefu getnewnefu(int id);
    //增加新闻
    public void addnewnefu(String tittle,String content,String provider,String img);
    //修改新闻
    public void alternewnefu(String tittle,String content,String provider,String img,int id);
    //删除新闻
    public void deletenewnefu(int id);
    //查找新闻
    public Newnefu newnefusfind(String tittle);

}
