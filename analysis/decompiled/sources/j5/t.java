package j5;

import m5.g0;
import n3.c2;
import n3.u1;

/* JADX INFO: compiled from: TrackSelectorResult.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u1[] f9438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l[] f9439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c2 f9440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f9441e;

    public t(u1[] u1VarArr, l[] lVarArr, c2 c2Var, Object obj) {
        this.f9438b = u1VarArr;
        this.f9439c = (l[]) lVarArr.clone();
        this.f9440d = c2Var;
        this.f9441e = obj;
        this.f9437a = u1VarArr.length;
    }

    public final boolean a(t tVar, int i10) {
        return tVar != null && g0.a(this.f9438b[i10], tVar.f9438b[i10]) && g0.a(this.f9439c[i10], tVar.f9439c[i10]);
    }

    public final boolean b(int i10) {
        return this.f9438b[i10] != null;
    }
}
