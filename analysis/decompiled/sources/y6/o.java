package y6;

import a7.p;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f18681a = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static a7.o a(a7.n nVar) {
        a7.o.a aVarB = a7.o.B();
        int iD = nVar.D();
        aVarB.j();
        a7.o.y((a7.o) aVarB.f3549i, iD);
        for (a7.n.b bVar : nVar.C()) {
            a7.o.b.a aVarD = a7.o.b.D();
            String strD = bVar.C().D();
            aVarD.j();
            a7.o.b.y((a7.o.b) aVarD.f3549i, strD);
            a7.k kVarF = bVar.F();
            aVarD.j();
            a7.o.b.A((a7.o.b) aVarD.f3549i, kVarF);
            p pVarE = bVar.E();
            aVarD.j();
            a7.o.b.z((a7.o.b) aVarD.f3549i, pVarE);
            int iD2 = bVar.D();
            aVarD.j();
            a7.o.b.B((a7.o.b) aVarD.f3549i, iD2);
            a7.o.b bVarH = aVarD.h();
            aVarB.j();
            a7.o.z((a7.o) aVarB.f3549i, bVarH);
        }
        return aVarB.h();
    }
}
