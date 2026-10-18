package n3;

import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z implements m5.o.b, m5.o.a, p4.h0.a, EventListener.Factory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11838c;

    public /* synthetic */ z(Object obj, int i10) {
        this.f11837b = i10;
        this.f11838c = obj;
    }

    @Override // m5.o.b
    public final void a(Object obj, m5.j jVar) {
        o1 o1Var = ((k0) this.f11838c).f11470f;
        ((o1.c) obj).m0(new o1.b(jVar));
    }

    @Override // okhttp3.EventListener.Factory
    public final EventListener create(Call call) {
        return _UtilJvmKt.m160asFactory$lambda7((EventListener) this.f11838c, call);
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f11837b) {
            case 1:
                ((o1.c) obj).I((a1) this.f11838c);
                break;
            case 2:
                ((o1.c) obj).L((o) this.f11838c);
                break;
            default:
                ((o3.b) obj).D0();
                break;
        }
    }
}
