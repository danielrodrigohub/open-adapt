package g1;

import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f7553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Property<View, Float> f7554b;

    /* JADX INFO: compiled from: ViewUtils.java */
    public class a extends Property<View, Float> {
        public a() {
            super(Float.class, "translationAlpha");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(l.a(view));
        }

        @Override // android.util.Property
        public final void set(View view, Float f10) {
            l.c(view, f10.floatValue());
        }
    }

    /* JADX INFO: compiled from: ViewUtils.java */
    public class b extends Property<View, Rect> {
        public b(Class cls) {
            super(cls, "clipBounds");
        }

        @Override // android.util.Property
        public final Rect get(View view) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            return a0.f.a(view);
        }

        @Override // android.util.Property
        public final void set(View view, Rect rect) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.f.c(view, rect);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f7553a = new q();
        } else {
            f7553a = new p();
        }
        f7554b = new a();
        new b(Rect.class);
    }

    public static float a(View view) {
        return f7553a.b(view);
    }

    public static void b(View view, int i10, int i11, int i12, int i13) {
        f7553a.f(view, i10, i11, i12, i13);
    }

    public static void c(View view, float f10) {
        f7553a.c(view, f10);
    }

    public static void d(View view, int i10) {
        f7553a.a(view, i10);
    }
}
