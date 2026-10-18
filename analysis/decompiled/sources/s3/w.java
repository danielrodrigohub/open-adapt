package s3;

import java.io.IOException;
import java.util.Arrays;
import n3.s0;

/* JADX INFO: compiled from: TrackOutput.java */
/* JADX INFO: loaded from: classes.dex */
public interface w {

    /* JADX INFO: compiled from: TrackOutput.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15084a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f15085b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15086c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f15087d;

        public a(int i10, byte[] bArr, int i11, int i12) {
            this.f15084a = i10;
            this.f15085b = bArr;
            this.f15086c = i11;
            this.f15087d = i12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f15084a == aVar.f15084a && this.f15086c == aVar.f15086c && this.f15087d == aVar.f15087d && Arrays.equals(this.f15085b, aVar.f15085b);
        }

        public final int hashCode() {
            return ((((Arrays.hashCode(this.f15085b) + (this.f15084a * 31)) * 31) + this.f15086c) * 31) + this.f15087d;
        }
    }

    void a(m5.w wVar, int i10);

    void b(s0 s0Var);

    void c(long j10, int i10, int i11, int i12, a aVar);

    default int d(l5.h hVar, int i10, boolean z10) throws IOException {
        return e(hVar, i10, z10);
    }

    int e(l5.h hVar, int i10, boolean z10) throws IOException;

    default void f(m5.w wVar, int i10) {
        a(wVar, i10);
    }
}
