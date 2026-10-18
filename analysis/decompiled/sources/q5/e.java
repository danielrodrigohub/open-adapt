package q5;

import android.view.View;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ViewOffsetHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f13641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13645e;

    public e(View view) {
        this.f13641a = view;
    }

    public final void a() {
        View view = this.f13641a;
        int top = this.f13644d - (view.getTop() - this.f13642b);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        view.offsetTopAndBottom(top);
        View view2 = this.f13641a;
        view2.offsetLeftAndRight(this.f13645e - (view2.getLeft() - this.f13643c));
    }
}
