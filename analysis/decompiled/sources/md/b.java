package md;

import p4.h;
import yd.s;

/* JADX INFO: compiled from: PlatformImplementations.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11125a;

    /* JADX WARN: Code duplicated, block: B:75:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        int i10;
        a aVar;
        Object objNewInstance;
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            i10 = 65542;
        } else {
            int iO0 = s.o0(property, '.', 0, false, 6);
            try {
                if (iO0 < 0) {
                    i10 = Integer.parseInt(property) * 65536;
                } else {
                    int i11 = iO0 + 1;
                    int iO1 = s.o0(property, '.', i11, false, 4);
                    if (iO1 < 0) {
                        iO1 = property.length();
                    }
                    String strSubstring = property.substring(0, iO0);
                    h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    String strSubstring2 = property.substring(i11, iO1);
                    h.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    i10 = Integer.parseInt(strSubstring2) + (Integer.parseInt(strSubstring) * 65536);
                }
            } catch (NumberFormatException unused) {
                i10 = 65542;
            }
        }
        if (i10 >= 65544 || i10 < 65536) {
            try {
                Object objNewInstance2 = od.a.class.newInstance();
                h.i(objNewInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    try {
                        aVar = (a) objNewInstance2;
                    } catch (ClassCastException e10) {
                        ClassLoader classLoader = objNewInstance2.getClass().getClassLoader();
                        ClassLoader classLoader2 = a.class.getClassLoader();
                        if (h.c(classLoader, classLoader2)) {
                            throw e10;
                        }
                        throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e10);
                    }
                } catch (ClassNotFoundException unused2) {
                    if (i10 < 65543) {
                        try {
                            objNewInstance = nd.a.class.newInstance();
                            h.i(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
                            try {
                                try {
                                    aVar = (a) objNewInstance;
                                } catch (ClassCastException e11) {
                                    ClassLoader classLoader3 = objNewInstance.getClass().getClassLoader();
                                    ClassLoader classLoader4 = a.class.getClassLoader();
                                    if (h.c(classLoader3, classLoader4)) {
                                        throw e11;
                                    }
                                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e11);
                                }
                            } catch (ClassNotFoundException unused3) {
                                aVar = new a();
                            }
                        } catch (ClassNotFoundException unused4) {
                            Object objNewInstance3 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                            h.i(objNewInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
                            try {
                                aVar = (a) objNewInstance3;
                            } catch (ClassCastException e12) {
                                ClassLoader classLoader5 = objNewInstance3.getClass().getClassLoader();
                                ClassLoader classLoader6 = a.class.getClassLoader();
                                if (h.c(classLoader5, classLoader6)) {
                                    throw e12;
                                }
                                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e12);
                            }
                        }
                    } else {
                        objNewInstance = nd.a.class.newInstance();
                        h.i(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
                        aVar = (a) objNewInstance;
                    }
                }
            } catch (ClassNotFoundException unused5) {
                Object objNewInstance4 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                h.i(objNewInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    aVar = (a) objNewInstance4;
                } catch (ClassCastException e13) {
                    ClassLoader classLoader7 = objNewInstance4.getClass().getClassLoader();
                    ClassLoader classLoader8 = a.class.getClassLoader();
                    if (h.c(classLoader7, classLoader8)) {
                        throw e13;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e13);
                }
            }
        } else if (i10 < 65543 || i10 < 65536) {
            objNewInstance = nd.a.class.newInstance();
            h.i(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
            aVar = (a) objNewInstance;
        } else {
            aVar = new a();
        }
        f11125a = aVar;
    }
}
