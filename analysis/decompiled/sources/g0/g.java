package g0;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: FontRequestWorker.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Callable<k.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f7496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f7497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f7498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7499d;

    public g(String str, Context context, f fVar, int i10) {
        this.f7496a = str;
        this.f7497b = context;
        this.f7498c = fVar;
        this.f7499d = i10;
    }

    @Override // java.util.concurrent.Callable
    public final k.a call() throws Exception {
        return k.b(this.f7496a, this.f7497b, this.f7498c, this.f7499d);
    }
}
