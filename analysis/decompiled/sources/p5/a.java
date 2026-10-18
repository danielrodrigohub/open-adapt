package p5;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.o;

/* JADX INFO: compiled from: AnimationUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f13252a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t0.b f13253b = new t0.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t0.a f13254c = new t0.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t0.c f13255d = new t0.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DecelerateInterpolator f13256e = new DecelerateInterpolator();

    public static float a(float f10, float f11, float f12, float f13, float f14) {
        if (f14 < f12) {
            return f10;
        }
        return f14 > f13 ? f11 : o.c(f11, f10, (f14 - f12) / (f13 - f12), f10);
    }

    public static int b(int i10, int i11, float f10) {
        return Math.round(f10 * (i11 - i10)) + i10;
    }
}
