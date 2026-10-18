package c7;

import a7.h;
import b7.a0;
import b7.i;
import b7.p;
import b7.q0;
import d7.m;
import java.security.GeneralSecurityException;
import java.util.Objects;
import y6.n;

/* JADX INFO: compiled from: AesCtrHmacStreamingKeyManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends y6.f<a7.a> {

    /* JADX INFO: renamed from: c7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AesCtrHmacStreamingKeyManager.java */
    public class C0074a extends y6.f.b<n, a7.a> {
        @Override // y6.f.b
        public final n a(a7.a aVar) throws GeneralSecurityException {
            a7.a aVar2 = aVar;
            return new d7.a(aVar2.B().s(), f.a(aVar2.C().B()), aVar2.C().A(), f.a(aVar2.C().C().z()), aVar2.C().C().A(), aVar2.C().y());
        }
    }

    /* JADX INFO: compiled from: AesCtrHmacStreamingKeyManager.java */
    public class b extends y6.f.a<a7.b, a7.a> {
        public b() {
        }

        @Override // y6.f.a
        public final a7.a a(q0 q0Var) throws GeneralSecurityException {
            a7.b bVar = (a7.b) q0Var;
            a7.a.C0009a c0009aE = a7.a.E();
            byte[] bArrA = d7.g.a(bVar.y());
            i iVarL = i.l(bArrA, 0, bArrA.length);
            c0009aE.j();
            a7.a.A((a7.a) c0009aE.f3549i, iVarL);
            a7.c cVarZ = bVar.z();
            c0009aE.j();
            a7.a.z((a7.a) c0009aE.f3549i, cVarZ);
            Objects.requireNonNull(a.this);
            c0009aE.j();
            a7.a.y((a7.a) c0009aE.f3549i);
            return c0009aE.h();
        }

        @Override // y6.f.a
        public final q0 b(i iVar) throws a0 {
            return a7.b.A(iVar, p.a());
        }

        @Override // y6.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            a7.b bVar = (a7.b) q0Var;
            if (bVar.y() < 16) {
                throw new GeneralSecurityException("key_size must be at least 16 bytes");
            }
            a.f(bVar.z());
        }
    }

    public a() {
        super(a7.a.class, new C0074a());
    }

    public static void f(a7.c cVar) throws GeneralSecurityException {
        m.a(cVar.A());
        h hVarB = cVar.B();
        h hVar = h.UNKNOWN_HASH;
        if (hVarB == hVar) {
            throw new GeneralSecurityException("unknown HKDF hash type");
        }
        if (cVar.C().z() == hVar) {
            throw new GeneralSecurityException("unknown HMAC hash type");
        }
        a7.i iVarC = cVar.C();
        if (iVarC.A() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int iOrdinal = iVarC.z().ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal != 3) {
                if (iOrdinal != 4) {
                    throw new GeneralSecurityException("unknown hash type");
                }
                if (iVarC.A() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
            } else if (iVarC.A() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (iVarC.A() > 20) {
            throw new GeneralSecurityException("tag size too big");
        }
        if (cVar.y() < cVar.C().A() + cVar.A() + 2 + 7) {
            throw new GeneralSecurityException("ciphertext_segment_size must be at least (derived_key_size + tag_size + NONCE_PREFIX_IN_BYTES + 2)");
        }
    }

    @Override // y6.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacStreamingKey";
    }

    @Override // y6.f
    public final y6.f.a<a7.b, a7.a> b() {
        return new b();
    }

    @Override // y6.f
    public final void c() {
    }

    @Override // y6.f
    public final q0 d(i iVar) throws a0 {
        return a7.a.F(iVar, p.a());
    }

    @Override // y6.f
    public final void e(q0 q0Var) throws GeneralSecurityException {
        a7.a aVar = (a7.a) q0Var;
        m.c(aVar.D());
        if (aVar.B().size() < 16) {
            throw new GeneralSecurityException("key_value must have at least 16 bytes");
        }
        if (aVar.B().size() < aVar.C().A()) {
            throw new GeneralSecurityException("key_value must have at least as many bits as derived keys");
        }
        f(aVar.C());
    }
}
