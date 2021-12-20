package com.service.newnefu;
import com.service.newnefu.impl.newnefuServiceImpl;
public class newnefufactory {
public static final newnefuService newnefu=create();

    private static newnefuService create() {
        return new newnefuServiceImpl();
    }
    public static newnefuService getNewnefuservice(){
        return newnefu;
    }
}
