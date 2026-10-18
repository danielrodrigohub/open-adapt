package b7;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: ByteString.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i implements Iterable<Byte>, Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final f f3419i = new f(z.f3565b);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final d f3420j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3421h = 0;

    /* JADX INFO: compiled from: ByteString.java */
    public static abstract class a implements Iterator {
        @Override // java.util.Iterator
        public final Object next() {
            return Byte.valueOf(((h) this).a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static final class b implements d {
        @Override // b7.i.d
        public final byte[] a(byte[] bArr, int i10, int i11) {
            return Arrays.copyOfRange(bArr, i10, i11 + i10);
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static final class c extends f {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f3422l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f3423m;

        public c(byte[] bArr, int i10, int i11) {
            super(bArr);
            i.k(i10, i10 + i11, bArr.length);
            this.f3422l = i10;
            this.f3423m = i11;
        }

        @Override // b7.i.f, b7.i
        public final byte h(int i10) {
            int i11 = this.f3423m;
            if (((i11 - (i10 + 1)) | i10) >= 0) {
                return this.f3424k[this.f3422l + i10];
            }
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException(androidx.appcompat.widget.e0.d("Index < 0: ", i10));
            }
            throw new ArrayIndexOutOfBoundsException(d1.c.a("Index > length: ", i10, ", ", i11));
        }

        @Override // b7.i.f, b7.i
        public final void m(byte[] bArr, int i10) {
            System.arraycopy(this.f3424k, this.f3422l + 0, bArr, 0, i10);
        }

        @Override // b7.i.f, b7.i
        public final byte n(int i10) {
            return this.f3424k[this.f3422l + i10];
        }

        @Override // b7.i.f, b7.i
        public final int size() {
            return this.f3423m;
        }

        @Override // b7.i.f
        public final int v() {
            return this.f3422l;
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public interface d {
        byte[] a(byte[] bArr, int i10, int i11);
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static abstract class e extends i {
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static class f extends e {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final byte[] f3424k;

        public f(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.f3424k = bArr;
        }

        @Override // b7.i
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof i) || size() != ((i) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof f)) {
                return obj.equals(this);
            }
            f fVar = (f) obj;
            int i10 = this.f3421h;
            int i11 = fVar.f3421h;
            if (i10 != 0 && i11 != 0 && i10 != i11) {
                return false;
            }
            int size = size();
            if (size > fVar.size()) {
                throw new IllegalArgumentException("Length too large: " + size + size());
            }
            if (0 + size > fVar.size()) {
                StringBuilder sbB = androidx.recyclerview.widget.s.b("Ran off end of other: ", 0, ", ", size, ", ");
                sbB.append(fVar.size());
                throw new IllegalArgumentException(sbB.toString());
            }
            byte[] bArr = this.f3424k;
            byte[] bArr2 = fVar.f3424k;
            int iV = v() + size;
            int iV2 = v();
            int iV3 = fVar.v() + 0;
            while (iV2 < iV) {
                if (bArr[iV2] != bArr2[iV3]) {
                    return false;
                }
                iV2++;
                iV3++;
            }
            return true;
        }

        @Override // b7.i
        public byte h(int i10) {
            return this.f3424k[i10];
        }

        @Override // b7.i
        public void m(byte[] bArr, int i10) {
            System.arraycopy(this.f3424k, 0, bArr, 0, i10);
        }

        @Override // b7.i
        public byte n(int i10) {
            return this.f3424k[i10];
        }

        @Override // b7.i
        public final boolean o() {
            int iV = v();
            return q1.e(this.f3424k, iV, size() + iV);
        }

        @Override // b7.i
        public final j p() {
            return j.f(this.f3424k, v(), size(), true);
        }

        @Override // b7.i
        public final int q(int i10, int i11) {
            byte[] bArr = this.f3424k;
            int iV = v() + 0;
            Charset charset = z.f3564a;
            for (int i12 = iV; i12 < iV + i11; i12++) {
                i10 = (i10 * 31) + bArr[i12];
            }
            return i10;
        }

        @Override // b7.i
        public final i r(int i10) {
            int iK = i.k(0, i10, size());
            return iK == 0 ? i.f3419i : new c(this.f3424k, v() + 0, iK);
        }

        @Override // b7.i
        public int size() {
            return this.f3424k.length;
        }

        @Override // b7.i
        public final String t(Charset charset) {
            return new String(this.f3424k, v(), size(), charset);
        }

        @Override // b7.i
        public final void u(b7.g gVar) throws IOException {
            gVar.a(this.f3424k, v(), size());
        }

        public int v() {
            return 0;
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static final class g implements d {
        @Override // b7.i.d
        public final byte[] a(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            return bArr2;
        }
    }

    static {
        f3420j = b7.d.a() ? new g() : new b();
    }

    public static int k(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(a0.d.b("Beginning index: ", i10, " < 0"));
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException(d1.c.a("Beginning index larger than ending index: ", i10, ", ", i11));
        }
        throw new IndexOutOfBoundsException(d1.c.a("End index: ", i11, " >= ", i12));
    }

    public static i l(byte[] bArr, int i10, int i11) {
        k(i10, i10 + i11, bArr.length);
        return new f(f3420j.a(bArr, i10, i11));
    }

    public abstract boolean equals(Object obj);

    public abstract byte h(int i10);

    public final int hashCode() {
        int iQ = this.f3421h;
        if (iQ == 0) {
            int size = size();
            iQ = q(size, size);
            if (iQ == 0) {
                iQ = 1;
            }
            this.f3421h = iQ;
        }
        return iQ;
    }

    @Override // java.lang.Iterable
    public final Iterator<Byte> iterator() {
        return new h(this);
    }

    public abstract void m(byte[] bArr, int i10);

    public abstract byte n(int i10);

    public abstract boolean o();

    public abstract j p();

    public abstract int q(int i10, int i11);

    public abstract i r(int i10);

    public final byte[] s() {
        int size = size();
        if (size == 0) {
            return z.f3565b;
        }
        byte[] bArr = new byte[size];
        m(bArr, size);
        return bArr;
    }

    public abstract int size();

    public abstract String t(Charset charset);

    public final String toString() {
        String strD;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        if (size() <= 50) {
            strD = j1.d(this);
        } else {
            strD = j1.d(r(47)) + "...";
        }
        objArr[2] = strD;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract void u(b7.g gVar) throws IOException;
}
