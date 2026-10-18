package y6;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: PrimitiveSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class i<P> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentMap<b, List<a<P>>> f18668a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a<P> f18669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class<P> f18670c;

    /* JADX INFO: compiled from: PrimitiveSet.java */
    public static final class a<P> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final P f18671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f18672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a7.k f18673c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Object obj, byte[] bArr, a7.k kVar) {
            this.f18671a = obj;
            this.f18672b = Arrays.copyOf(bArr, bArr.length);
            this.f18673c = kVar;
        }
    }

    /* JADX INFO: compiled from: PrimitiveSet.java */
    public static class b implements Comparable<b> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final byte[] f18674h;

        public b(byte[] bArr) {
            this.f18674h = Arrays.copyOf(bArr, bArr.length);
        }

        @Override // java.lang.Comparable
        public final int compareTo(b bVar) {
            int length;
            int length2;
            b bVar2 = bVar;
            byte[] bArr = this.f18674h;
            int length3 = bArr.length;
            byte[] bArr2 = bVar2.f18674h;
            if (length3 != bArr2.length) {
                length = bArr.length;
                length2 = bArr2.length;
            } else {
                int i10 = 0;
                while (true) {
                    byte[] bArr3 = this.f18674h;
                    if (i10 >= bArr3.length) {
                        return 0;
                    }
                    char c10 = bArr3[i10];
                    byte[] bArr4 = bVar2.f18674h;
                    if (c10 != bArr4[i10]) {
                        length = bArr3[i10];
                        length2 = bArr4[i10];
                    } else {
                        i10++;
                    }
                }
            }
            return length - length2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return Arrays.equals(this.f18674h, ((b) obj).f18674h);
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f18674h);
        }

        public final String toString() {
            return p4.h.o(this.f18674h);
        }
    }

    public i(Class<P> cls) {
        this.f18670c = cls;
    }

    public final List<a<P>> a(byte[] bArr) {
        List<a<P>> list = (List) this.f18668a.get(new b(bArr));
        return list != null ? list : Collections.emptyList();
    }
}
