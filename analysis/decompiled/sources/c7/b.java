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

/* JADX INFO: compiled from: AesGcmHkdfStreamingKeyManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends y6.f<a7.d> {

    /* JADX INFO: compiled from: AesGcmHkdfStreamingKeyManager.java */
    public class a extends y6.f.b<n, a7.d> {
        @Override // y6.f.b
        public final n a(a7.d dVar) throws GeneralSecurityException {
            a7.d dVar2 = dVar;
            return new d7.b(dVar2.B().s(), f.a(dVar2.C().E()), dVar2.C().D(), dVar2.C().B());
        }
    }

    /* JADX INFO: renamed from: c7.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AesGcmHkdfStreamingKeyManager.java */
    public class C0075b extends y6.f.a<a7.e, a7.d> {
        public C0075b() {
        }

        @Override // y6.f.a
        public final a7.d a(q0 q0Var) throws GeneralSecurityException {
            a7.e eVar = (a7.e) q0Var;
            a7.d.a aVarE = a7.d.E();
            byte[] bArrA = d7.g.a(eVar.A());
            i iVarL = i.l(bArrA, 0, bArrA.length);
            aVarE.j();
            a7.d.A((a7.d) aVarE.f3549i, iVarL);
            a7.f fVarB = eVar.B();
            aVarE.j();
            a7.d.z((a7.d) aVarE.f3549i, fVarB);
            Objects.requireNonNull(b.this);
            aVarE.j();
            a7.d.y((a7.d) aVarE.f3549i);
            return aVarE.h();
        }

        @Override // y6.f.a
        public final q0 b(i iVar) throws a0 {
            return a7.e.D(iVar, p.a());
        }

        @Override // y6.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            a7.e eVar = (a7.e) q0Var;
            if (eVar.A() < 16) {
                throw new GeneralSecurityException("key_size must be at least 16 bytes");
            }
            b.f(eVar.B());
        }
    }

    public b() {
        super(a7.d.class, new a());
    }

    public static void f(a7.f fVar) throws GeneralSecurityException {
        m.a(fVar.D());
        if (fVar.E() == h.UNKNOWN_HASH) {
            throw new GeneralSecurityException("unknown HKDF hash type");
        }
        if (fVar.B() < fVar.D() + 7 + 16 + 2) {
            throw new GeneralSecurityException("ciphertext_segment_size must be at least (derived_key_size + NONCE_PREFIX_IN_BYTES + TAG_SIZE_IN_BYTES + 2)");
        }
    }

    @Override // y6.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey";
    }

    @Override // y6.f
    public final y6.f.a<a7.e, a7.d> b() {
        return new C0075b();
    }

    @Override // y6.f
    public final void c() {
    }

    @Override // y6.f
    public final q0 d(i iVar) throws a0 {
        return a7.d.F(iVar, p.a());
    }

    @Override // y6.f
    public final void e(q0 q0Var) throws GeneralSecurityException {
        a7.d dVar = (a7.d) q0Var;
        m.c(dVar.D());
        f(dVar.C());
    }
}
