package o3;

import n3.o1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k0 implements m5.o.a, m5.o.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f12142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12143d;

    public /* synthetic */ k0(Object obj, Object obj2, int i10) {
        this.f12141b = i10;
        this.f12142c = obj;
        this.f12143d = obj2;
    }

    @Override // m5.o.b
    public final void a(Object obj, m5.j jVar) {
        b bVar = (b) obj;
        bVar.L((o1) this.f12143d, new b.C0219b(jVar, ((r0) this.f12142c).f12180l));
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12141b) {
            case 0:
                ((b) obj).X();
                break;
            default:
                ((b) obj).G();
                break;
        }
    }
}
