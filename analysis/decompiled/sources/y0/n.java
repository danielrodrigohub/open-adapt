package y0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: DatabaseConfiguration.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d1.d.c f18256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f18257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f18258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d0.c f18259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<d0.b> f18260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<Object> f18261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<z0.a> f18262g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f18263h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18264i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Executor f18265j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f18266k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Intent f18267l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f18268m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f18269n;

    @SuppressLint({"LambdaLast"})
    public n(Context context, String str, d1.d.c cVar, d0.c cVar2, List list, boolean z10, int i10, Executor executor, Executor executor2, Intent intent, boolean z11, boolean z12) {
        this.f18256a = cVar;
        this.f18257b = context;
        this.f18258c = str;
        this.f18259d = cVar2;
        this.f18260e = list;
        this.f18263h = z10;
        this.f18264i = i10;
        this.f18265j = executor;
        this.f18267l = intent;
        this.f18266k = intent != null;
        this.f18268m = z11;
        this.f18269n = z12;
        this.f18261f = Collections.emptyList();
        this.f18262g = Collections.emptyList();
    }

    public final boolean a(int i10, int i11) {
        return !((i10 > i11) && this.f18269n) && this.f18268m;
    }
}
