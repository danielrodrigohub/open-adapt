package androidx.recyclerview.widget;

/* JADX INFO: compiled from: ViewInfoStore.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p.g<RecyclerView.b0, a> f2670a = new p.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p.d<RecyclerView.b0> f2671b = new p.d<>();

    /* JADX INFO: compiled from: ViewInfoStore.java */
    public static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static i0.e<a> f2672d = new i0.f(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2673a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.j.c f2674b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RecyclerView.j.c f2675c;

        public static a a() {
            a aVarB = f2672d.b();
            return aVarB == null ? new a() : aVarB;
        }

        public static void b(a aVar) {
            aVar.f2673a = 0;
            aVar.f2674b = null;
            aVar.f2675c = null;
            f2672d.a(aVar);
        }
    }

    public final void a(RecyclerView.b0 b0Var) {
        a orDefault = this.f2670a.getOrDefault(b0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.f2670a.put(b0Var, orDefault);
        }
        orDefault.f2673a |= 1;
    }

    public final void b(RecyclerView.b0 b0Var, RecyclerView.j.c cVar) {
        a orDefault = this.f2670a.getOrDefault(b0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.f2670a.put(b0Var, orDefault);
        }
        orDefault.f2675c = cVar;
        orDefault.f2673a |= 8;
    }

    public final void c(RecyclerView.b0 b0Var, RecyclerView.j.c cVar) {
        a orDefault = this.f2670a.getOrDefault(b0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.f2670a.put(b0Var, orDefault);
        }
        orDefault.f2674b = cVar;
        orDefault.f2673a |= 4;
    }

    public final RecyclerView.j.c d(RecyclerView.b0 b0Var, int i10) {
        a aVarM;
        RecyclerView.j.c cVar;
        int iE = this.f2670a.e(b0Var);
        if (iE >= 0 && (aVarM = this.f2670a.m(iE)) != null) {
            int i11 = aVarM.f2673a;
            if ((i11 & i10) != 0) {
                int i12 = (~i10) & i11;
                aVarM.f2673a = i12;
                if (i10 == 4) {
                    cVar = aVarM.f2674b;
                } else {
                    if (i10 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarM.f2675c;
                }
                if ((i12 & 12) == 0) {
                    this.f2670a.k(iE);
                    a.b(aVarM);
                }
                return cVar;
            }
        }
        return null;
    }

    public final void e(RecyclerView.b0 b0Var) {
        a orDefault = this.f2670a.getOrDefault(b0Var, null);
        if (orDefault == null) {
            return;
        }
        orDefault.f2673a &= -2;
    }

    public final void f(RecyclerView.b0 b0Var) {
        for (int iG = this.f2671b.g() - 1; iG >= 0; iG--) {
            if (b0Var == this.f2671b.h(iG)) {
                p.d<RecyclerView.b0> dVar = this.f2671b;
                Object[] objArr = dVar.f12586j;
                Object obj = objArr[iG];
                Object obj2 = p.d.f12583l;
                if (obj == obj2) {
                    break;
                }
                objArr[iG] = obj2;
                dVar.f12584h = true;
                break;
            }
        }
        a aVarRemove = this.f2670a.remove(b0Var);
        if (aVarRemove != null) {
            a.b(aVarRemove);
        }
    }
}
