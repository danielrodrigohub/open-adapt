package r1;

import android.content.Context;

/* JADX INFO: compiled from: Trackers.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static g f14215e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f14216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f14217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f14218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f f14219d;

    public g(Context context, w1.a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f14216a = new a(applicationContext, aVar);
        this.f14217b = new b(applicationContext, aVar);
        this.f14218c = new e(applicationContext, aVar);
        this.f14219d = new f(applicationContext, aVar);
    }

    public static synchronized g a(Context context, w1.a aVar) {
        if (f14215e == null) {
            f14215e = new g(context, aVar);
        }
        return f14215e;
    }
}
