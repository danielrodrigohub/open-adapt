package t2;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import l3.l;

/* JADX INFO: compiled from: SafeKeyGenerator.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l3.i<p2.f, String> f15408a = new l3.i<>(1000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i0.e<b> f15409b = (m3.a.c) m3.a.a(10, new a());

    /* JADX INFO: compiled from: SafeKeyGenerator.java */
    public class a implements m3.a.b<b> {
        @Override // m3.a.b
        public final b create() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* JADX INFO: compiled from: SafeKeyGenerator.java */
    public static final class b implements m3.a.d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MessageDigest f15410h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final m3.d.a f15411i = new m3.d.a();

        public b(MessageDigest messageDigest) {
            this.f15410h = messageDigest;
        }

        @Override // m3.a.d
        public final m3.d j() {
            return this.f15411i;
        }
    }

    public final String a(p2.f fVar) {
        String strA;
        synchronized (this.f15408a) {
            strA = this.f15408a.a(fVar);
        }
        if (strA == null) {
            b bVarB = this.f15409b.b();
            Objects.requireNonNull(bVarB, "Argument must not be null");
            b bVar = bVarB;
            try {
                fVar.a(bVar.f15410h);
                byte[] bArrDigest = bVar.f15410h.digest();
                char[] cArr = l.f9946b;
                synchronized (cArr) {
                    for (int i10 = 0; i10 < bArrDigest.length; i10++) {
                        int i11 = bArrDigest[i10] & 255;
                        int i12 = i10 * 2;
                        char[] cArr2 = l.f9945a;
                        cArr[i12] = cArr2[i11 >>> 4];
                        cArr[i12 + 1] = cArr2[i11 & 15];
                    }
                    strA = new String(cArr);
                }
                this.f15409b.a(bVar);
            } catch (Throwable th) {
                this.f15409b.a(bVar);
                throw th;
            }
        }
        synchronized (this.f15408a) {
            this.f15408a.d(fVar, strA);
        }
        return strA;
    }
}
