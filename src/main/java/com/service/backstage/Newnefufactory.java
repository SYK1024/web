package com.service.backstage;
import com.service.backstage.impl.NewnefuServiceImpl;
public class Newnefufactory {
    public static final NewnefuService bsnewnefu=create();

    private static NewnefuService create() {
        return new NewnefuServiceImpl();
    }
    public static NewnefuService getBsnewnefuservice(){return bsnewnefu;}
}
