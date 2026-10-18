package m7;

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
    public static final f f10666i = new f(y.f10803c);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final d f10667j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10668h = 0;

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
        @Override // m7.i.d
        public final byte[] a(byte[] bArr, int i10, int i11) {
            return Arrays.copyOfRange(bArr, i10, i11 + i10);
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static final class c extends f {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f10669l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f10670m;

        public c(byte[] bArr, int i10, int i11) {
            super(bArr);
            i.k(i10, i10 + i11, bArr.length);
            this.f10669l = i10;
            this.f10670m = i11;
        }

        @Override // m7.i.f, m7.i
        public final byte h(int i10) {
            int i11 = this.f10670m;
            if (((i11 - (i10 + 1)) | i10) >= 0) {
                return this.f10671k[this.f10669l + i10];
            }
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException(androidx.appcompat.widget.e0.d("Index < 0: ", i10));
            }
            throw new ArrayIndexOutOfBoundsException(d1.c.a("Index > length: ", i10, ", ", i11));
        }

        @Override // m7.i.f, m7.i
        public final void m(byte[] bArr, int i10) {
            System.arraycopy(this.f10671k, this.f10669l + 0, bArr, 0, i10);
        }

        @Override // m7.i.f, m7.i
        public final byte n(int i10) {
            return this.f10671k[this.f10669l + i10];
        }

        @Override // m7.i.f, m7.i
        public final int size() {
            return this.f10670m;
        }

        @Override // m7.i.f
        public final int u() {
            return this.f10669l;
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public interface d {
        byte[] a(byte[] bArr, int i10, int i11);
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static abstract class e extends i {
        @Override // m7.i, java.lang.Iterable
        public final Iterator<Byte> iterator() {
            return new h(this);
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static class f extends e {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final byte[] f10671k;

        public f(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.f10671k = bArr;
        }

        @Override // m7.i
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
            int i10 = this.f10668h;
            int i11 = fVar.f10668h;
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
            byte[] bArr = this.f10671k;
            byte[] bArr2 = fVar.f10671k;
            int iU = u() + size;
            int iU2 = u();
            int iU3 = fVar.u() + 0;
            while (iU2 < iU) {
                if (bArr[iU2] != bArr2[iU3]) {
                    return false;
                }
                iU2++;
                iU3++;
            }
            return true;
        }

        @Override // m7.i
        public byte h(int i10) {
            return this.f10671k[i10];
        }

        @Override // m7.i
        public void m(byte[] bArr, int i10) {
            System.arraycopy(this.f10671k, 0, bArr, 0, i10);
        }

        @Override // m7.i
        public byte n(int i10) {
            return this.f10671k[i10];
        }

        @Override // m7.i
        public final boolean o() {
            int iU = u();
            return n1.e(this.f10671k, iU, size() + iU);
        }

        @Override // m7.i
        public final int p(int i10, int i11) {
            byte[] bArr = this.f10671k;
            int iU = u() + 0;
            Charset charset = y.f10801a;
            for (int i12 = iU; i12 < iU + i11; i12++) {
                i10 = (i10 * 31) + bArr[i12];
            }
            return i10;
        }

        @Override // m7.i
        public final i q(int i10) {
            int iK = i.k(0, i10, size());
            return iK == 0 ? i.f10666i : new c(this.f10671k, u() + 0, iK);
        }

        @Override // m7.i
        public final String s(Charset charset) {
            return new String(this.f10671k, u(), size(), charset);
        }

        @Override // m7.i
        public int size() {
            return this.f10671k.length;
        }

        @Override // m7.i
        public final void t(m7.g gVar) throws IOException {
            gVar.a(this.f10671k, u(), size());
        }

        public int u() {
            return 0;
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    public static final class g implements d {
        @Override // m7.i.d
        public final byte[] a(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            return bArr2;
        }
    }

    static {
        f10667j = m7.d.a() ? new g() : new b();
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
        return new f(f10667j.a(bArr, i10, i11));
    }

    public abstract boolean equals(Object obj);

    public abstract byte h(int i10);

    public final int hashCode() {
        int iP = this.f10668h;
        if (iP == 0) {
            int size = size();
            iP = p(size, size);
            if (iP == 0) {
                iP = 1;
            }
            this.f10668h = iP;
        }
        return iP;
    }

    @Override // java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new h(this);
    }

    public abstract void m(byte[] bArr, int i10);

    public abstract byte n(int i10);

    public abstract boolean o();

    public abstract int p(int i10, int i11);

    public abstract i q(int i10);

    public final byte[] r() {
        int size = size();
        if (size == 0) {
            return y.f10803c;
        }
        byte[] bArr = new byte[size];
        m(bArr, size);
        return bArr;
    }

    public abstract String s(Charset charset);

    public abstract int size();

    public abstract void t(m7.g gVar) throws IOException;

    public final String toString() {
        String strA;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        if (size() <= 50) {
            strA = androidx.lifecycle.m0.a(this);
        } else {
            strA = androidx.lifecycle.m0.a(q(47)) + "...";
        }
        objArr[2] = strA;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
