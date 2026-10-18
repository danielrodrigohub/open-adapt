package a0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: TypefaceCompatApi21Impl.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f14b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Constructor<?> f15c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Method f16d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Method f17e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f18f = false;

    public static boolean g(Object obj, String str, int i10, boolean z10) throws NoSuchMethodException {
        h();
        try {
            return ((Boolean) f16d.invoke(obj, str, Integer.valueOf(i10), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void h() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f18f) {
            return;
        }
        f18f = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi21Impl", e10.getClass().getName(), e10);
            method = null;
            cls = null;
            method2 = null;
        }
        f15c = constructor;
        f14b = cls;
        f16d = method2;
        f17e = method;
    }

    @Override // a0.l
    public Typeface a(Context context, z.c.C0329c c0329c, Resources resources, int i10) throws NoSuchMethodException {
        h();
        try {
            Object objNewInstance = f15c.newInstance(new Object[0]);
            for (z.c.d dVar : c0329c.f19212a) {
                File fileD = m.d(context);
                if (fileD == null) {
                    return null;
                }
                try {
                    if (!m.b(fileD, resources, dVar.f19218f)) {
                        return null;
                    }
                    if (!g(objNewInstance, fileD.getPath(), dVar.f19214b, dVar.f19215c)) {
                        return null;
                    }
                    fileD.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    fileD.delete();
                }
            }
            h();
            try {
                Object objNewInstance2 = Array.newInstance(f14b, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) f17e.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new RuntimeException(e10);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // a0.l
    public Typeface b(Context context, g0.m[] mVarArr, int i10) {
        File file;
        if (mVarArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(f(mVarArr, i10).f7514a, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                try {
                    String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                    file = OsConstants.S_ISREG(Os.stat(str).st_mode) ? new File(str) : null;
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (ErrnoException unused) {
            }
            if (file != null && file.canRead()) {
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                parcelFileDescriptorOpenFileDescriptor.close();
                return typefaceCreateFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            try {
                Typeface typefaceC = c(context, fileInputStream);
                fileInputStream.close();
                parcelFileDescriptorOpenFileDescriptor.close();
                return typefaceC;
            } catch (Throwable th3) {
                try {
                    fileInputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException unused2) {
            return null;
        }
    }
}
