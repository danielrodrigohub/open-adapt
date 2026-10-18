package a2;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: TrimPathContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements b, b2.a.InterfaceC0052a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<b2.a.InterfaceC0052a> f198b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b2.a<?, Float> f200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b2.a<?, Float> f201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b2.a<?, Float> f202f;

    public t(g2.b bVar, f2.q qVar) {
        Objects.requireNonNull(qVar);
        this.f197a = qVar.f7051f;
        this.f199c = qVar.f7047b;
        b2.a<Float, Float> aVarA = qVar.f7048c.a();
        this.f200d = (b2.d) aVarA;
        b2.a<Float, Float> aVarA2 = qVar.f7049d.a();
        this.f201e = (b2.d) aVarA2;
        b2.a<Float, Float> aVarA3 = qVar.f7050e.a();
        this.f202f = (b2.d) aVarA3;
        bVar.f(aVarA);
        bVar.f(aVarA2);
        bVar.f(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    @Override // b2.a.InterfaceC0052a
    public final void d() {
        for (int i10 = 0; i10 < this.f198b.size(); i10++) {
            ((b2.a.InterfaceC0052a) this.f198b.get(i10)).d();
        }
    }

    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    public final void f(b2.a.InterfaceC0052a interfaceC0052a) {
        this.f198b.add(interfaceC0052a);
    }
}
