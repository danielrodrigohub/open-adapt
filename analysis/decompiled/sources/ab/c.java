package ab;

import android.os.Parcelable;
import ea.m;
import ea.o;
import ea.p;
import java.util.List;
import java.util.Map;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements p0<p, o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map<ua.a, List<m>> f565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v9.a f566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p0<p, o> f567c;

    /* JADX WARN: Multi-variable type inference failed */
    public c(Map<ua.a, ? extends List<m>> map, v9.a aVar, p0<p, o> p0Var) {
        this.f565a = map;
        this.f566b = aVar;
        this.f567c = p0Var;
    }

    @Override // v9.p0
    public final void a(Parcelable parcelable) {
        p4.h.j((p) parcelable, "result");
        b bVar = b.f555b;
        b.f(this.f565a, this.f566b, this.f567c);
    }

    @Override // v9.p0
    public final void b(v9.m mVar) {
        o oVar = (o) mVar;
        p4.h.j(oVar, "error");
        this.f567c.b(new o(this.f566b, oVar));
    }
}
