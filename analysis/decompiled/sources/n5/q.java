package n5;

import m5.g0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ s.a f11976h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f11977i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ long f11978j;

    public /* synthetic */ q(s.a aVar, Object obj, long j10) {
        this.f11976h = aVar;
        this.f11977i = obj;
        this.f11978j = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        s.a aVar = this.f11976h;
        Object obj = this.f11977i;
        long j10 = this.f11978j;
        s sVar = aVar.f11984b;
        int i10 = g0.f10384a;
        sVar.f(obj, j10);
    }
}
