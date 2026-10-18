package o0;

import android.content.Context;
import android.view.LayoutInflater;

/* JADX INFO: compiled from: ResourceCursorAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12061p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f12062q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public LayoutInflater f12063r;

    @Deprecated
    public c(Context context, int i10) {
        super(context);
        this.f12062q = i10;
        this.f12061p = i10;
        this.f12063r = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
