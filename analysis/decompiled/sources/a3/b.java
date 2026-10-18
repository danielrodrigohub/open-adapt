package a3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;

/* JADX INFO: compiled from: DrawableDecoderCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f208a = true;

    public static Drawable a(Context context, Context context2, int i10, Resources.Theme theme) {
        try {
            if (f208a) {
                return g.a.b(theme != null ? new j.c(context2, theme) : context2, i10);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e10) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e10;
            }
            Object obj = y.a.f18143a;
            return y.a.b.b(context2, i10);
        } catch (NoClassDefFoundError unused2) {
            f208a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        Resources resources = context2.getResources();
        ThreadLocal<TypedValue> threadLocal = z.d.f19223a;
        return z.d.a.a(resources, i10, theme);
    }
}
