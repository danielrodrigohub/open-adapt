package y6;

import a7.p;
import b7.x;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.Iterator;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: KeysetManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    public final a7.n.a f18667a;

    public h(a7.n.a aVar) {
        this.f18667a = aVar;
    }

    public static int e() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr = new byte[4];
        int i10 = 0;
        while (i10 == 0) {
            secureRandom.nextBytes(bArr);
            i10 = ((bArr[0] & 127) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        }
        return i10;
    }

    public static h f(g gVar) {
        a7.n nVar = gVar.f18666a;
        x.a aVar = (x.a) nVar.o(x.f.NEW_BUILDER);
        aVar.k(nVar);
        return new h((a7.n.a) aVar);
    }

    @Deprecated
    public final synchronized int a(a7.l lVar) throws GeneralSecurityException {
        a7.n.b bVarD;
        bVarD = d(lVar);
        a7.n.a aVar = this.f18667a;
        aVar.j();
        a7.n.z((a7.n) aVar.f3549i, bVarD);
        return bVarD.D();
    }

    public final synchronized g b() throws GeneralSecurityException {
        return g.a(this.f18667a.h());
    }

    public final synchronized boolean c(int i10) {
        Iterator it = Collections.unmodifiableList(((a7.n) this.f18667a.f3549i).C()).iterator();
        while (it.hasNext()) {
            if (((a7.n.b) it.next()).D() == i10) {
                return true;
            }
        }
        return false;
    }

    public final synchronized a7.n.b d(a7.l lVar) throws GeneralSecurityException {
        a7.j jVarC;
        int iE;
        jVarC = m.c(lVar);
        synchronized (this) {
            iE = e();
            while (c(iE)) {
                iE = e();
            }
        }
        return aVarH.h();
        p pVarB = lVar.B();
        if (pVarB == p.UNKNOWN_PREFIX) {
            pVarB = p.TINK;
        }
        a7.n.b.a aVarH = a7.n.b.H();
        aVarH.j();
        a7.n.b.y((a7.n.b) aVarH.f3549i, jVarC);
        aVarH.j();
        a7.n.b.B((a7.n.b) aVarH.f3549i, iE);
        aVarH.j();
        a7.n.b.A((a7.n.b) aVarH.f3549i);
        aVarH.j();
        a7.n.b.z((a7.n.b) aVarH.f3549i, pVarB);
        return aVarH.h();
    }
}
