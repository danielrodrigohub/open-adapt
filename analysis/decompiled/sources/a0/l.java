package a0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    public ConcurrentHashMap<Long, z.c.C0329c> f30a = new ConcurrentHashMap<>();

    /* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
    public class a implements b<g0.m> {
        @Override // a0.l.b
        public final int a(g0.m mVar) {
            return mVar.f7516c;
        }

        @Override // a0.l.b
        public final boolean b(g0.m mVar) {
            return mVar.f7517d;
        }
    }

    /* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
    public interface b<T> {
        int a(T t10);

        boolean b(T t10);
    }

    public static <T> T e(T[] tArr, int i10, b<T> bVar) {
        int i11 = (i10 & 1) == 0 ? HttpStatusCodesKt.HTTP_BAD_REQUEST : 700;
        boolean z10 = (i10 & 2) != 0;
        T t10 = null;
        int i12 = Integer.MAX_VALUE;
        for (T t11 : tArr) {
            int iAbs = (Math.abs(bVar.a(t11) - i11) * 2) + (bVar.b(t11) == z10 ? 0 : 1);
            if (t10 == null || i12 > iAbs) {
                t10 = t11;
                i12 = iAbs;
            }
        }
        return t10;
    }

    public Typeface a(Context context, z.c.C0329c c0329c, Resources resources, int i10) {
        throw null;
    }

    public Typeface b(Context context, g0.m[] mVarArr, int i10) {
        throw null;
    }

    public Typeface c(Context context, InputStream inputStream) {
        File fileD = m.d(context);
        if (fileD == null) {
            return null;
        }
        try {
            if (m.c(fileD, inputStream)) {
                return Typeface.createFromFile(fileD.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileD.delete();
        }
    }

    public Typeface d(Context context, Resources resources, int i10, String str, int i11) {
        File fileD = m.d(context);
        if (fileD == null) {
            return null;
        }
        try {
            if (m.b(fileD, resources, i10)) {
                return Typeface.createFromFile(fileD.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileD.delete();
        }
    }

    public g0.m f(g0.m[] mVarArr, int i10) {
        return (g0.m) e(mVarArr, i10, new a());
    }
}
