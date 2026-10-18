package a0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* JADX INFO: compiled from: TypefaceCompatApi24Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class<?> f19b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Constructor<?> f20c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Method f21d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Method f22e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi24Impl", e10.getClass().getName(), e10);
            cls = null;
            method = null;
            method2 = null;
        }
        f20c = constructor;
        f19b = cls;
        f21d = method2;
        f22e = method;
    }

    public static boolean g(Object obj, ByteBuffer byteBuffer, int i10, int i11, boolean z10) {
        try {
            return ((Boolean) f21d.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface h(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(f19b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f22e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // a0.l
    public final Typeface a(Context context, z.c.C0329c c0329c, Resources resources, int i10) {
        Object objNewInstance;
        MappedByteBuffer map;
        try {
            objNewInstance = f20c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        for (z.c.d dVar : c0329c.f19212a) {
            int i11 = dVar.f19218f;
            File fileD = m.d(context);
            if (fileD == null) {
                map = null;
            } else {
                try {
                    if (m.b(fileD, resources, i11)) {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(fileD);
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                fileD.delete();
                            } catch (Throwable th) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (IOException unused2) {
                            map = null;
                        }
                    } else {
                        fileD.delete();
                        map = null;
                    }
                } catch (Throwable th3) {
                    fileD.delete();
                    throw th3;
                }
            }
            if (map == null || !g(objNewInstance, map, dVar.f19217e, dVar.f19214b, dVar.f19215c)) {
                return null;
            }
        }
        return h(objNewInstance);
    }

    @Override // a0.l
    public final Typeface b(Context context, g0.m[] mVarArr, int i10) {
        Object objNewInstance;
        try {
            objNewInstance = f20c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        p.g gVar = new p.g();
        for (g0.m mVar : mVarArr) {
            Uri uri = mVar.f7514a;
            ByteBuffer byteBufferE = (ByteBuffer) gVar.getOrDefault(uri, null);
            if (byteBufferE == null) {
                byteBufferE = m.e(context, uri);
                gVar.put(uri, byteBufferE);
            }
            if (byteBufferE == null || !g(objNewInstance, byteBufferE, mVar.f7515b, mVar.f7516c, mVar.f7517d)) {
                return null;
            }
        }
        Typeface typefaceH = h(objNewInstance);
        if (typefaceH == null) {
            return null;
        }
        return Typeface.create(typefaceH, i10);
    }
}
