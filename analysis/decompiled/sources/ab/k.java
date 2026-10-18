package ab;

import android.os.Parcelable;
import ea.o;
import ea.p;
import v9.m;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements p0<p, o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0<p, o> f584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v9.a f585b;

    public k(p0<p, o> p0Var, v9.a aVar) {
        this.f584a = p0Var;
        this.f585b = aVar;
    }

    @Override // v9.p0
    public final void a(Parcelable parcelable) {
        p4.h.j((p) parcelable, "result");
        b.f555b.g().b(new g(new i(this.f584a, this.f585b), new j(this.f584a, this.f585b)));
    }

    @Override // v9.p0
    public final void b(m mVar) {
        o oVar = (o) mVar;
        p4.h.j(oVar, "error");
        this.f584a.b(new o(this.f585b, oVar));
    }
}
