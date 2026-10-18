package v9;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: AdaptKitModule.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u implements o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o0 f16850b;

    public u(o0 o0Var) {
        this.f16850b = o0Var;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.LinkedHashMap, java.util.Map<ya.a$a, ya.b>] */
    @Override // v9.o0
    public final void a() {
        this.f16850b.a();
        if (this.f16849a) {
            ya.a aVar = ya.a.f18735a;
            Iterator it = ya.a.f18736b.entrySet().iterator();
            while (it.hasNext()) {
                ya.b bVar = (ya.b) ((Map.Entry) it.next()).getValue();
                if ((bVar instanceof ya.d) && ((ya.d) bVar).j0()) {
                    a.C0295a c0295a = a.f16441i;
                    bVar.s(a.f16444l);
                }
            }
            this.f16849a = false;
        }
    }

    @Override // v9.o0
    public final boolean b() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.LinkedHashMap, java.util.Map<ya.a$a, ya.b>] */
    @Override // v9.o0
    public final void c(ja.b bVar) {
        if (bVar.c() instanceof ja.d) {
            this.f16849a = true;
            ya.a aVar = ya.a.f18735a;
            Iterator it = ya.a.f18736b.entrySet().iterator();
            while (it.hasNext()) {
                ya.b bVar2 = (ya.b) ((Map.Entry) it.next()).getValue();
                a.C0295a c0295a = a.f16441i;
                bVar2.f(a.f16442j);
                if (bVar2 instanceof ya.d) {
                    ((ya.d) bVar2).f18764g = true;
                }
            }
        }
        this.f16850b.c(bVar);
    }
}
