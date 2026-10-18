package y6;

import b7.a0;
import b7.p;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: KeysetHandle.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a7.n f18666a;

    public g(a7.n nVar) {
        this.f18666a = nVar;
    }

    public static final g a(a7.n nVar) throws GeneralSecurityException {
        if (nVar == null || nVar.B() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new g(nVar);
    }

    public static final g b(z6.d dVar, a aVar) throws GeneralSecurityException, IOException {
        a7.g gVarC = a7.g.C(dVar.a(), p.a());
        if (gVarC.A().size() == 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        try {
            a7.n nVarF = a7.n.F(((z6.b) aVar).a(gVarC.A().s(), new byte[0]), p.a());
            if (nVarF.B() > 0) {
                return new g(nVarF);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (a0 unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    public final String toString() {
        return o.a(this.f18666a).toString();
    }
}
