package g6;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: compiled from: ViewUtils.java */
    public interface a {
    }

    /* JADX INFO: compiled from: ViewUtils.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f7778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7779b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f7780c;

        public b(int i10, int i11, int i12, int i13) {
            this.f7778a = i10;
            this.f7779b = i12;
            this.f7780c = i13;
        }
    }

    public static float a(Context context, int i10) {
        return TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    public static boolean b(View view) {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        return a0.e.d(view) == 1;
    }

    public static PorterDuff.Mode c(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
