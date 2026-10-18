package n5;

import m5.g0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f11964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f11965i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f11966j;

    public /* synthetic */ m(Object obj, Object obj2, int i10) {
        this.f11964h = i10;
        this.f11965i = obj;
        this.f11966j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11964h) {
            case 0:
                s.a aVar = (s.a) this.f11965i;
                Exception exc = (Exception) this.f11966j;
                s sVar = aVar.f11984b;
                int i10 = g0.f10384a;
                sVar.t(exc);
                break;
            case 1:
                qd.l lVar = (qd.l) this.f11965i;
                fa.d dVar = (fa.d) this.f11966j;
                p4.h.j(lVar, "$poster");
                p4.h.j(dVar, "$states");
                lVar.invoke(dVar);
                break;
            default:
                qd.l lVar2 = (qd.l) this.f11965i;
                ha.a aVar2 = (ha.a) this.f11966j;
                p4.h.j(lVar2, "$this_run");
                p4.h.j(aVar2, "$error");
                lVar2.invoke(aVar2);
                break;
        }
    }
}
