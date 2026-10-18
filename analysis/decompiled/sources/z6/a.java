package z6;

import a7.k;
import a7.n;
import android.util.Log;
import b7.a0;
import b7.i;
import b7.p;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;
import javax.annotation.concurrent.GuardedBy;
import y6.g;
import y6.h;
import y6.o;

/* JADX INFO: compiled from: AndroidKeysetManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f19361b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    public h f19362a;

    /* JADX INFO: renamed from: z6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AndroidKeysetManager.java */
    public static final class C0333a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public d f19363a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e f19364b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f19365c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public b f19366d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public y6.e f19367e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @GuardedBy("this")
        public h f19368f;

        public final h a() throws GeneralSecurityException, IOException {
            try {
                b bVar = this.f19366d;
                if (bVar != null) {
                    try {
                        return h.f(g.b(this.f19363a, bVar));
                    } catch (a0 | GeneralSecurityException e10) {
                        int i10 = a.f19361b;
                        Log.w("a", "cannot decrypt keyset: ", e10);
                    }
                }
                return h.f(g.a(n.F(this.f19363a.a(), p.a())));
            } catch (FileNotFoundException e11) {
                int i11 = a.f19361b;
                Log.w("a", "keyset not found, will generate a new one", e11);
                if (this.f19367e == null) {
                    throw new GeneralSecurityException("cannot read or generate keyset");
                }
                h hVar = new h(n.E());
                y6.e eVar = this.f19367e;
                synchronized (hVar) {
                    hVar.a(eVar.f18661a);
                    int iC = o.a(hVar.b().f18666a).A().C();
                    synchronized (hVar) {
                        for (int i12 = 0; i12 < ((n) hVar.f18667a.f3549i).B(); i12++) {
                            n.b bVarA = ((n) hVar.f18667a.f3549i).A(i12);
                            if (bVarA.D() == iC) {
                                if (!bVarA.F().equals(k.ENABLED)) {
                                    throw new GeneralSecurityException("cannot set key as primary because it's not enabled: " + iC);
                                }
                                n.a aVar = hVar.f18667a;
                                aVar.j();
                                n.y((n) aVar.f3549i, iC);
                                if (this.f19366d != null) {
                                    g gVarB = hVar.b();
                                    e eVar2 = this.f19364b;
                                    b bVar2 = this.f19366d;
                                    n nVar = gVarB.f18666a;
                                    byte[] bArrC = bVar2.c(nVar.l(), new byte[0]);
                                    try {
                                        if (!n.F(bVar2.a(bArrC, new byte[0]), p.a()).equals(nVar)) {
                                            throw new GeneralSecurityException("cannot encrypt keyset");
                                        }
                                        a7.g.a aVarB = a7.g.B();
                                        i iVarL = i.l(bArrC, 0, bArrC.length);
                                        aVarB.j();
                                        a7.g.y((a7.g) aVarB.f3549i, iVarL);
                                        a7.o oVarA = o.a(nVar);
                                        aVarB.j();
                                        a7.g.z((a7.g) aVarB.f3549i, oVarA);
                                        if (!eVar2.f19375a.putString(eVar2.f19376b, p4.h.o(aVarB.h().l())).commit()) {
                                            throw new IOException("Failed to write to SharedPreferences");
                                        }
                                    } catch (a0 unused) {
                                        throw new GeneralSecurityException("invalid keyset, corrupted key material");
                                    }
                                } else {
                                    g gVarB2 = hVar.b();
                                    e eVar3 = this.f19364b;
                                    if (!eVar3.f19375a.putString(eVar3.f19376b, p4.h.o(gVarB2.f18666a.l())).commit()) {
                                        throw new IOException("Failed to write to SharedPreferences");
                                    }
                                }
                                return hVar;
                            }
                        }
                        throw new GeneralSecurityException("key not found: " + iC);
                    }
                }
            }
        }

        public final y6.a b() throws GeneralSecurityException {
            int i10 = a.f19361b;
            c cVar = new c();
            boolean zC = cVar.c(this.f19365c);
            if (!zC) {
                try {
                    c.a(this.f19365c);
                } catch (GeneralSecurityException | ProviderException e10) {
                    int i11 = a.f19361b;
                    Log.w("a", "cannot use Android Keystore, it'll be disabled", e10);
                    return null;
                }
            }
            try {
                return cVar.b(this.f19365c);
            } catch (GeneralSecurityException | ProviderException e11) {
                if (zC) {
                    throw new KeyStoreException(String.format("the master key %s exists but is unusable", this.f19365c), e11);
                }
                int i12 = a.f19361b;
                Log.w("a", "cannot use Android Keystore, it'll be disabled", e11);
                return null;
            }
        }
    }

    public a(C0333a c0333a) throws GeneralSecurityException, IOException {
        this.f19362a = c0333a.f19368f;
    }
}
