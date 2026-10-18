package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: compiled from: OrientationHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RecyclerView.m f2613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2614b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f2615c = new Rect();

    public c0(RecyclerView.m mVar) {
        this.f2613a = mVar;
    }

    public static c0 a(RecyclerView.m mVar, int i10) {
        if (i10 == 0) {
            return new a0(mVar);
        }
        if (i10 == 1) {
            return new b0(mVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public final int m() {
        if (Integer.MIN_VALUE == this.f2614b) {
            return 0;
        }
        return l() - this.f2614b;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i10);
}
