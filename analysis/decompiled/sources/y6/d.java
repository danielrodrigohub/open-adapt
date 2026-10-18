package y6;

import b7.a0;
import b7.q0;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: KeyManagerImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class d<PrimitiveT, KeyProtoT extends q0> implements c<PrimitiveT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f<KeyProtoT> f18659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class<PrimitiveT> f18660b;

    public d(f<KeyProtoT> fVar, Class<PrimitiveT> cls) {
        if (!fVar.f18663b.keySet().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", fVar.toString(), cls.getName()));
        }
        this.f18659a = fVar;
        this.f18660b = cls;
    }

    public final PrimitiveT a(b7.i iVar) throws GeneralSecurityException {
        try {
            return c(this.f18659a.d(iVar));
        } catch (a0 e10) {
            StringBuilder sbC = a0.b.c("Failures parsing proto of type ");
            sbC.append(this.f18659a.f18662a.getName());
            throw new GeneralSecurityException(sbC.toString(), e10);
        }
    }

    public final a7.j b(b7.i iVar) throws GeneralSecurityException {
        try {
            f.a<?, KeyProtoT> aVarB = this.f18659a.b();
            q0 q0VarB = aVarB.b(iVar);
            aVarB.c(q0VarB);
            KeyProtoT keyprototA = aVarB.a(q0VarB);
            a7.j.a aVarF = a7.j.F();
            String strA = this.f18659a.a();
            aVarF.j();
            a7.j.y((a7.j) aVarF.f3549i, strA);
            b7.i iVarE = keyprototA.e();
            aVarF.j();
            a7.j.z((a7.j) aVarF.f3549i, iVarE);
            this.f18659a.c();
            a7.j.b bVar = a7.j.b.SYMMETRIC;
            aVarF.j();
            a7.j.A((a7.j) aVarF.f3549i, bVar);
            return aVarF.h();
        } catch (a0 e10) {
            throw new GeneralSecurityException("Unexpected proto", e10);
        }
    }

    public final PrimitiveT c(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (Void.class.equals(this.f18660b)) {
            throw new GeneralSecurityException("Cannot create a primitive for Void");
        }
        this.f18659a.e(keyprotot);
        f<KeyProtoT> fVar = this.f18659a;
        Class<PrimitiveT> cls = this.f18660b;
        f.b<?, KeyProtoT> bVar = fVar.f18663b.get(cls);
        if (bVar != null) {
            return (PrimitiveT) bVar.a(keyprotot);
        }
        StringBuilder sbC = a0.b.c("Requested primitive class ");
        sbC.append(cls.getCanonicalName());
        sbC.append(" not supported.");
        throw new IllegalArgumentException(sbC.toString());
    }
}
