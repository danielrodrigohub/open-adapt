package p3;

import android.net.Uri;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12765h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f12766i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f12767j;

    public /* synthetic */ h(Object obj, Object obj2, int i10) {
        this.f12765h = i10;
        this.f12766i = obj;
        this.f12767j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12765h) {
            case 0:
                p.a aVar = (p.a) this.f12766i;
                Exception exc = (Exception) this.f12767j;
                p pVar = aVar.f12790b;
                int i10 = m5.g0.f10384a;
                pVar.s(exc);
                break;
            case 1:
                v4.b.C0290b c0290b = (v4.b.C0290b) this.f12766i;
                Uri uri = (Uri) this.f12767j;
                c0290b.f16257p = false;
                c0290b.c(uri);
                break;
            default:
                qd.l lVar = (qd.l) this.f12766i;
                ha.b bVar = (ha.b) this.f12767j;
                p4.h.j(lVar, "$this_run");
                p4.h.j(bVar, "$result");
                lVar.invoke(bVar.f8374h);
                break;
        }
    }
}
