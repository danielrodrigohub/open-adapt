package a0;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: TypefaceCompatApi26Impl.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends g {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class<?> f23g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Constructor<?> f24h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Method f25i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Method f26j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Method f27k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Method f28l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Method f29m;

    public i() throws NoSuchMethodException {
        Method methodQ;
        Method method;
        Constructor<?> constructor;
        Method methodO;
        Method methodP;
        Method method2;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(new Class[0]);
            methodO = o(cls2);
            methodP = p(cls2);
            method2 = cls2.getMethod("freeze", new Class[0]);
            method = cls2.getMethod("abortCreation", new Class[0]);
            methodQ = q(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            StringBuilder sbC = b.c("Unable to collect necessary methods for class ");
            sbC.append(e10.getClass().getName());
            Log.e("TypefaceCompatApi26Impl", sbC.toString(), e10);
            methodQ = null;
            method = null;
            constructor = null;
            methodO = null;
            methodP = null;
            method2 = null;
        }
        this.f23g = cls;
        this.f24h = constructor;
        this.f25i = methodO;
        this.f26j = methodP;
        this.f27k = method2;
        this.f28l = method;
        this.f29m = methodQ;
    }

    private Object n() {
        try {
            return this.f24h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // a0.g, a0.l
    public final Typeface a(Context context, z.c.C0329c c0329c, Resources resources, int i10) {
        if (!m()) {
            return super.a(context, c0329c, resources, i10);
        }
        Object objN = n();
        if (objN == null) {
            return null;
        }
        for (z.c.d dVar : c0329c.f19212a) {
            if (!j(context, objN, dVar.f19213a, dVar.f19217e, dVar.f19214b, dVar.f19215c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(dVar.f19216d))) {
                i(objN);
                return null;
            }
        }
        if (l(objN)) {
            return k(objN);
        }
        return null;
    }

    @Override // a0.g, a0.l
    public final Typeface b(Context context, g0.m[] mVarArr, int i10) {
        Typeface typefaceK;
        boolean zBooleanValue;
        if (mVarArr.length < 1) {
            return null;
        }
        if (!m()) {
            g0.m mVarF = f(mVarArr, i10);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(mVarF.f7514a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(mVarF.f7516c).setItalic(mVarF.f7517d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException unused) {
                return null;
            }
        }
        HashMap map = new HashMap();
        for (g0.m mVar : mVarArr) {
            if (mVar.f7518e == 0) {
                Uri uri = mVar.f7514a;
                if (!map.containsKey(uri)) {
                    map.put(uri, m.e(context, uri));
                }
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Object objN = n();
        if (objN == null) {
            return null;
        }
        int length = mVarArr.length;
        int i11 = 0;
        boolean z10 = false;
        while (i11 < length) {
            g0.m mVar2 = mVarArr[i11];
            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(mVar2.f7514a);
            if (byteBuffer != null) {
                try {
                    zBooleanValue = ((Boolean) this.f26j.invoke(objN, byteBuffer, Integer.valueOf(mVar2.f7515b), null, Integer.valueOf(mVar2.f7516c), Integer.valueOf(mVar2.f7517d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                    zBooleanValue = false;
                }
                if (!zBooleanValue) {
                    i(objN);
                    return null;
                }
                z10 = true;
            }
            i11++;
            z10 = z10;
        }
        if (!z10) {
            i(objN);
            return null;
        }
        if (l(objN) && (typefaceK = k(objN)) != null) {
            return Typeface.create(typefaceK, i10);
        }
        return null;
    }

    @Override // a0.l
    public final Typeface d(Context context, Resources resources, int i10, String str, int i11) {
        if (!m()) {
            return super.d(context, resources, i10, str, i11);
        }
        Object objN = n();
        if (objN == null) {
            return null;
        }
        if (!j(context, objN, str, 0, -1, -1, null)) {
            i(objN);
            return null;
        }
        if (l(objN)) {
            return k(objN);
        }
        return null;
    }

    public final void i(Object obj) {
        try {
            this.f28l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean j(Context context, Object obj, String str, int i10, int i11, int i12, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f25i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface k(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(this.f23g, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f29m.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean l(Object obj) {
        try {
            return ((Boolean) this.f27k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean m() {
        if (this.f25i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f25i != null;
    }

    public final Method o(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public final Method p(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    public Method q(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
