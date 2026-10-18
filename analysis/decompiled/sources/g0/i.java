package g0;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: FontRequestWorker.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Callable<k.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f7501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f7502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f7503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7504d;

    public i(String str, Context context, f fVar, int i10) {
        this.f7501a = str;
        this.f7502b = context;
        this.f7503c = fVar;
        this.f7504d = i10;
    }

    @Override // java.util.concurrent.Callable
    public final k.a call() throws Exception {
        try {
            return k.b(this.f7501a, this.f7502b, this.f7503c, this.f7504d);
        } catch (Throwable unused) {
            return new k.a(-3);
        }
    }
}
