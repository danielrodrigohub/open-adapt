package de;

import androidx.appcompat.widget.y0;
import androidx.fragment.app.r0;
import com.newrelic.agent.android.AgentConfiguration;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Arrays;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: compiled from: Buffer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements f, e, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e0 f6198h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f6199i;

    /* JADX INFO: compiled from: Buffer.kt */
    public static final class a implements Closeable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c f6200h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f6201i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public e0 f6202j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public byte[] f6204l;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f6203k = -1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f6205m = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f6206n = -1;

        public final int Y(long j10) {
            long j11;
            e0 e0Var;
            c cVar = this.f6200h;
            if (cVar == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (j10 >= -1) {
                long j12 = cVar.f6199i;
                if (j10 <= j12) {
                    if (j10 == -1 || j10 == j12) {
                        this.f6202j = null;
                        this.f6203k = j10;
                        this.f6204l = null;
                        this.f6205m = -1;
                        this.f6206n = -1;
                        return -1;
                    }
                    e0 e0Var2 = cVar.f6198h;
                    e0 e0Var3 = this.f6202j;
                    if (e0Var3 != null) {
                        long j13 = this.f6203k;
                        int i10 = this.f6205m;
                        p4.h.g(e0Var3);
                        j11 = j13 - ((long) (i10 - e0Var3.f6217b));
                        if (j11 > j10) {
                            e0Var = e0Var2;
                            e0Var2 = this.f6202j;
                            j12 = j11;
                            j11 = 0;
                        } else {
                            e0Var = this.f6202j;
                        }
                    } else {
                        j11 = 0;
                        e0Var = e0Var2;
                    }
                    if (j12 - j10 > j10 - j11) {
                        while (true) {
                            p4.h.g(e0Var);
                            int i11 = e0Var.f6218c;
                            int i12 = e0Var.f6217b;
                            if (j10 < ((long) (i11 - i12)) + j11) {
                                break;
                            }
                            j11 += (long) (i11 - i12);
                            e0Var = e0Var.f6221f;
                        }
                    } else {
                        while (j12 > j10) {
                            p4.h.g(e0Var2);
                            e0Var2 = e0Var2.f6222g;
                            p4.h.g(e0Var2);
                            j12 -= (long) (e0Var2.f6218c - e0Var2.f6217b);
                        }
                        e0Var = e0Var2;
                        j11 = j12;
                    }
                    if (this.f6201i) {
                        p4.h.g(e0Var);
                        if (e0Var.f6219d) {
                            byte[] bArr = e0Var.f6216a;
                            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                            p4.h.i(bArrCopyOf, "copyOf(this, size)");
                            e0 e0Var4 = new e0(bArrCopyOf, e0Var.f6217b, e0Var.f6218c, false, true);
                            if (cVar.f6198h == e0Var) {
                                cVar.f6198h = e0Var4;
                            }
                            e0Var.b(e0Var4);
                            e0 e0Var5 = e0Var4.f6222g;
                            p4.h.g(e0Var5);
                            e0Var5.a();
                            e0Var = e0Var4;
                        }
                    }
                    this.f6202j = e0Var;
                    this.f6203k = j10;
                    p4.h.g(e0Var);
                    this.f6204l = e0Var.f6216a;
                    int i13 = e0Var.f6217b + ((int) (j10 - j11));
                    this.f6205m = i13;
                    int i14 = e0Var.f6218c;
                    this.f6206n = i14;
                    return i14 - i13;
                }
            }
            throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + cVar.f6199i);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!(this.f6200h != null)) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            this.f6200h = null;
            this.f6202j = null;
            this.f6203k = -1L;
            this.f6204l = null;
            this.f6205m = -1;
            this.f6206n = -1;
        }

        public final long x(long j10) {
            c cVar = this.f6200h;
            if (cVar == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (!this.f6201i) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
            }
            long j11 = cVar.f6199i;
            int i10 = 1;
            if (j10 <= j11) {
                if ((j10 < 0 ? 0 : 1) == 0) {
                    throw new IllegalArgumentException(r0.f("newSize < 0: ", j10).toString());
                }
                long j12 = j11 - j10;
                while (j12 > 0) {
                    e0 e0Var = cVar.f6198h;
                    p4.h.g(e0Var);
                    e0 e0Var2 = e0Var.f6222g;
                    p4.h.g(e0Var2);
                    int i11 = e0Var2.f6218c;
                    long j13 = i11 - e0Var2.f6217b;
                    if (j13 > j12) {
                        e0Var2.f6218c = i11 - ((int) j12);
                        break;
                    }
                    cVar.f6198h = e0Var2.a();
                    f0.b(e0Var2);
                    j12 -= j13;
                }
                this.f6202j = null;
                this.f6203k = j10;
                this.f6204l = null;
                this.f6205m = -1;
                this.f6206n = -1;
            } else if (j10 > j11) {
                long j14 = j10 - j11;
                boolean z10 = true;
                while (j14 > 0) {
                    e0 e0VarT0 = cVar.t0(i10);
                    int iMin = (int) Math.min(j14, 8192 - e0VarT0.f6218c);
                    int i12 = e0VarT0.f6218c + iMin;
                    e0VarT0.f6218c = i12;
                    j14 -= (long) iMin;
                    if (z10) {
                        this.f6202j = e0VarT0;
                        this.f6203k = j11;
                        this.f6204l = e0VarT0.f6216a;
                        this.f6205m = i12 - iMin;
                        this.f6206n = i12;
                        z10 = false;
                    }
                    i10 = 1;
                }
            }
            cVar.f6199i = j10;
            return j11;
        }
    }

    @Override // de.e
    public final /* bridge */ /* synthetic */ e A(int i10) {
        y0(i10);
        return this;
    }

    @Override // de.e
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public final c g(long j10) {
        if (j10 == 0) {
            y0(48);
        } else {
            long j11 = (j10 >>> 1) | j10;
            long j12 = j11 | (j11 >>> 2);
            long j13 = j12 | (j12 >>> 4);
            long j14 = j13 | (j13 >>> 8);
            long j15 = j14 | (j14 >>> 16);
            long j16 = j15 | (j15 >>> 32);
            long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
            long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
            long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
            long j20 = j19 + (j19 >>> 8);
            long j21 = j20 + (j20 >>> 16);
            int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
            e0 e0VarT0 = t0(i10);
            byte[] bArr = e0VarT0.f6216a;
            int i11 = e0VarT0.f6218c;
            for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
                bArr[i12] = ee.h.f6774a[(int) (15 & j10)];
                j10 >>>= 4;
            }
            e0VarT0.f6218c += i10;
            this.f6199i += (long) i10;
        }
        return this;
    }

    @Override // de.f
    public final byte[] B(long j10) throws EOFException {
        if (!(j10 >= 0 && j10 <= 2147483647L)) {
            throw new IllegalArgumentException(r0.f("byteCount: ", j10).toString());
        }
        if (this.f6199i < j10) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j10];
        readFully(bArr);
        return bArr;
    }

    public final c B0(int i10) {
        e0 e0VarT0 = t0(4);
        byte[] bArr = e0VarT0.f6216a;
        int i11 = e0VarT0.f6218c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >>> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >>> 8) & 255);
        bArr[i14] = (byte) (i10 & 255);
        e0VarT0.f6218c = i14 + 1;
        this.f6199i += 4;
        return this;
    }

    public final c C0(long j10) {
        e0 e0VarT0 = t0(8);
        byte[] bArr = e0VarT0.f6216a;
        int i10 = e0VarT0.f6218c;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j10 >>> 48) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((j10 >>> 40) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((j10 >>> 32) & 255);
        int i15 = i14 + 1;
        bArr[i14] = (byte) ((j10 >>> 24) & 255);
        int i16 = i15 + 1;
        bArr[i15] = (byte) ((j10 >>> 16) & 255);
        int i17 = i16 + 1;
        bArr[i16] = (byte) ((j10 >>> 8) & 255);
        bArr[i17] = (byte) (j10 & 255);
        e0VarT0.f6218c = i17 + 1;
        this.f6199i += 8;
        return this;
    }

    @Override // de.e
    public final /* bridge */ /* synthetic */ e D(byte[] bArr) {
        w0(bArr);
        return this;
    }

    public final c D0(int i10) {
        e0 e0VarT0 = t0(2);
        byte[] bArr = e0VarT0.f6216a;
        int i11 = e0VarT0.f6218c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i12] = (byte) (i10 & 255);
        e0VarT0.f6218c = i12 + 1;
        this.f6199i += 2;
        return this;
    }

    @Override // de.f
    public final long E(h0 h0Var) throws IOException {
        long j10 = this.f6199i;
        if (j10 > 0) {
            ((c) h0Var).write(this, j10);
        }
        return j10;
    }

    public final c E0(String str, int i10, int i11, Charset charset) {
        p4.h.j(str, "string");
        p4.h.j(charset, "charset");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("beginIndex < 0: ", i10).toString());
        }
        if (!(i11 >= i10)) {
            throw new IllegalArgumentException(d1.c.a("endIndex < beginIndex: ", i11, " < ", i10).toString());
        }
        if (!(i11 <= str.length())) {
            StringBuilder sbC = y0.c("endIndex > string.length: ", i11, " > ");
            sbC.append(str.length());
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        if (p4.h.c(charset, yd.a.f19171b)) {
            G0(str, i10, i11);
            return this;
        }
        String strSubstring = str.substring(i10, i11);
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        byte[] bytes = strSubstring.getBytes(charset);
        p4.h.i(bytes, "this as java.lang.String).getBytes(charset)");
        x0(bytes, 0, bytes.length);
        return this;
    }

    @Override // de.e
    public final e F() {
        return this;
    }

    public final c F0(String str) {
        p4.h.j(str, "string");
        G0(str, 0, str.length());
        return this;
    }

    @Override // de.f
    public final long G() throws EOFException {
        long j10 = 0;
        if (this.f6199i == 0) {
            throw new EOFException();
        }
        long j11 = -7;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        do {
            e0 e0Var = this.f6198h;
            p4.h.g(e0Var);
            byte[] bArr = e0Var.f6216a;
            int i11 = e0Var.f6217b;
            int i12 = e0Var.f6218c;
            while (i11 < i12) {
                byte b10 = bArr[i11];
                byte b11 = (byte) 48;
                if (b10 >= b11 && b10 <= ((byte) 57)) {
                    int i13 = b11 - b10;
                    if (j10 < -922337203685477580L || (j10 == -922337203685477580L && i13 < j11)) {
                        c cVarW = new c().W(j10);
                        cVarW.y0(b10);
                        if (!z10) {
                            cVarW.readByte();
                        }
                        StringBuilder sbC = a0.b.c("Number too large: ");
                        sbC.append(cVarW.p0());
                        throw new NumberFormatException(sbC.toString());
                    }
                    j10 = (j10 * 10) + ((long) i13);
                } else {
                    if (b10 != ((byte) 45) || i10 != 0) {
                        z11 = true;
                        break;
                    }
                    j11--;
                    z10 = true;
                }
                i11++;
                i10++;
            }
            if (i11 == i12) {
                this.f6198h = e0Var.a();
                f0.b(e0Var);
            } else {
                e0Var.f6217b = i11;
            }
            if (z11) {
                break;
            }
        } while (this.f6198h != null);
        long j12 = this.f6199i - ((long) i10);
        this.f6199i = j12;
        if (i10 >= (z10 ? 2 : 1)) {
            return z10 ? j10 : -j10;
        }
        if (j12 == 0) {
            throw new EOFException();
        }
        StringBuilder sbH = r0.h(z10 ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
        sbH.append(n0.n(h0(0L)));
        throw new NumberFormatException(sbH.toString());
    }

    public final c G0(String str, int i10, int i11) {
        char cCharAt;
        p4.h.j(str, "string");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("beginIndex < 0: ", i10).toString());
        }
        if (!(i11 >= i10)) {
            throw new IllegalArgumentException(d1.c.a("endIndex < beginIndex: ", i11, " < ", i10).toString());
        }
        if (!(i11 <= str.length())) {
            StringBuilder sbC = y0.c("endIndex > string.length: ", i11, " > ");
            sbC.append(str.length());
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        while (i10 < i11) {
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 128) {
                e0 e0VarT0 = t0(1);
                byte[] bArr = e0VarT0.f6216a;
                int i12 = e0VarT0.f6218c - i10;
                int iMin = Math.min(i11, 8192 - i12);
                int i13 = i10 + 1;
                bArr[i10 + i12] = (byte) cCharAt2;
                while (true) {
                    i10 = i13;
                    if (i10 >= iMin || (cCharAt = str.charAt(i10)) >= 128) {
                        break;
                    }
                    i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt;
                }
                int i14 = e0VarT0.f6218c;
                int i15 = (i12 + i10) - i14;
                e0VarT0.f6218c = i14 + i15;
                this.f6199i += (long) i15;
            } else {
                if (cCharAt2 < 2048) {
                    e0 e0VarT1 = t0(2);
                    byte[] bArr2 = e0VarT1.f6216a;
                    int i16 = e0VarT1.f6218c;
                    bArr2[i16] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i16 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    e0VarT1.f6218c = i16 + 2;
                    this.f6199i += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    e0 e0VarT2 = t0(3);
                    byte[] bArr3 = e0VarT2.f6216a;
                    int i17 = e0VarT2.f6218c;
                    bArr3[i17] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i17 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i17 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    e0VarT2.f6218c = i17 + 3;
                    this.f6199i += 3;
                } else {
                    int i18 = i10 + 1;
                    char cCharAt3 = i18 < i11 ? str.charAt(i18) : (char) 0;
                    if (cCharAt2 <= 56319) {
                        if (56320 <= cCharAt3 && cCharAt3 < 57344) {
                            int i19 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            e0 e0VarT3 = t0(4);
                            byte[] bArr4 = e0VarT3.f6216a;
                            int i20 = e0VarT3.f6218c;
                            bArr4[i20] = (byte) ((i19 >> 18) | 240);
                            bArr4[i20 + 1] = (byte) (((i19 >> 12) & 63) | 128);
                            bArr4[i20 + 2] = (byte) (((i19 >> 6) & 63) | 128);
                            bArr4[i20 + 3] = (byte) ((i19 & 63) | 128);
                            e0VarT3.f6218c = i20 + 4;
                            this.f6199i += 4;
                            i10 += 2;
                        }
                    }
                    y0(63);
                    i10 = i18;
                }
                i10++;
            }
        }
        return this;
    }

    public final c H0(int i10) {
        String str;
        if (i10 < 128) {
            y0(i10);
        } else if (i10 < 2048) {
            e0 e0VarT0 = t0(2);
            byte[] bArr = e0VarT0.f6216a;
            int i11 = e0VarT0.f6218c;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            e0VarT0.f6218c = i11 + 2;
            this.f6199i += 2;
        } else {
            int i12 = 0;
            if (55296 <= i10 && i10 < 57344) {
                y0(63);
            } else if (i10 < 65536) {
                e0 e0VarT1 = t0(3);
                byte[] bArr2 = e0VarT1.f6216a;
                int i13 = e0VarT1.f6218c;
                bArr2[i13] = (byte) ((i10 >> 12) | 224);
                bArr2[i13 + 1] = (byte) (((i10 >> 6) & 63) | 128);
                bArr2[i13 + 2] = (byte) ((i10 & 63) | 128);
                e0VarT1.f6218c = i13 + 3;
                this.f6199i += 3;
            } else {
                if (i10 > 1114111) {
                    StringBuilder sbC = a0.b.c("Unexpected code point: 0x");
                    if (i10 != 0) {
                        char[] cArr = androidx.emoji2.text.b.f1801h;
                        char[] cArr2 = {cArr[(i10 >> 28) & 15], cArr[(i10 >> 24) & 15], cArr[(i10 >> 20) & 15], cArr[(i10 >> 16) & 15], cArr[(i10 >> 12) & 15], cArr[(i10 >> 8) & 15], cArr[(i10 >> 4) & 15], cArr[i10 & 15]};
                        while (i12 < 8 && cArr2[i12] == '0') {
                            i12++;
                        }
                        if (i12 < 0) {
                            StringBuilder sbB = androidx.recyclerview.widget.s.b("startIndex: ", i12, ", endIndex: ", 8, ", size: ");
                            sbB.append(8);
                            throw new IndexOutOfBoundsException(sbB.toString());
                        }
                        if (i12 > 8) {
                            throw new IllegalArgumentException(d1.c.a("startIndex: ", i12, " > endIndex: ", 8));
                        }
                        str = new String(cArr2, i12, 8 - i12);
                    } else {
                        str = AgentConfiguration.DEFAULT_DEVICE_UUID;
                    }
                    sbC.append(str);
                    throw new IllegalArgumentException(sbC.toString());
                }
                e0 e0VarT2 = t0(4);
                byte[] bArr3 = e0VarT2.f6216a;
                int i14 = e0VarT2.f6218c;
                bArr3[i14] = (byte) ((i10 >> 18) | 240);
                bArr3[i14 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                bArr3[i14 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                bArr3[i14 + 3] = (byte) ((i10 & 63) | 128);
                e0VarT2.f6218c = i14 + 4;
                this.f6199i += 4;
            }
        }
        return this;
    }

    @Override // de.f
    public final long I() throws EOFException {
        long j10 = readLong();
        return ((j10 & 255) << 56) | (((-72057594037927936L) & j10) >>> 56) | ((71776119061217280L & j10) >>> 40) | ((280375465082880L & j10) >>> 24) | ((1095216660480L & j10) >>> 8) | ((4278190080L & j10) << 8) | ((16711680 & j10) << 24) | ((65280 & j10) << 40);
    }

    @Override // de.f
    public final String J(long j10) throws EOFException {
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("limit < 0: ", j10).toString());
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        byte b10 = (byte) 10;
        long jI0 = i0(b10, 0L, j11);
        if (jI0 != -1) {
            return ee.h.b(this, jI0);
        }
        if (j11 < this.f6199i && h0(j11 - 1) == ((byte) 13) && h0(j11) == b10) {
            return ee.h.b(this, j11);
        }
        c cVar = new c();
        g0(cVar, 0L, Math.min(32, this.f6199i));
        StringBuilder sbC = a0.b.c("\\n not found: limit=");
        sbC.append(Math.min(this.f6199i, j10));
        sbC.append(" content=");
        sbC.append(cVar.i().k());
        sbC.append((char) 8230);
        throw new EOFException(sbC.toString());
    }

    @Override // de.e
    public final /* bridge */ /* synthetic */ e N(g gVar) {
        u0(gVar);
        return this;
    }

    @Override // de.f
    public final f Q() {
        return w.b(new b0(this));
    }

    @Override // de.f
    public final long S(g gVar) {
        p4.h.j(gVar, "targetBytes");
        return k0(gVar, 0L);
    }

    @Override // de.f
    public final void T(long j10) throws EOFException {
        if (this.f6199i < j10) {
            throw new EOFException();
        }
    }

    @Override // de.e
    public final /* bridge */ /* synthetic */ e U(String str) {
        F0(str);
        return this;
    }

    @Override // de.f
    public final int V(y yVar) throws EOFException {
        p4.h.j(yVar, "options");
        int iC = ee.h.c(this, yVar, false);
        if (iC == -1) {
            return -1;
        }
        a(yVar.f6280h[iC].j());
        return iC;
    }

    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final c clone() {
        c cVar = new c();
        if (this.f6199i != 0) {
            e0 e0Var = this.f6198h;
            p4.h.g(e0Var);
            e0 e0VarC = e0Var.c();
            cVar.f6198h = e0VarC;
            e0VarC.f6222g = e0VarC;
            e0VarC.f6221f = e0VarC;
            for (e0 e0Var2 = e0Var.f6221f; e0Var2 != e0Var; e0Var2 = e0Var2.f6221f) {
                e0 e0Var3 = e0VarC.f6222g;
                p4.h.g(e0Var3);
                p4.h.g(e0Var2);
                e0Var3.b(e0Var2.c());
            }
            cVar.f6199i = this.f6199i;
        }
        return cVar;
    }

    @Override // de.f
    public final void a(long j10) throws EOFException {
        while (j10 > 0) {
            e0 e0Var = this.f6198h;
            if (e0Var == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, e0Var.f6218c - e0Var.f6217b);
            long j11 = iMin;
            this.f6199i -= j11;
            j10 -= j11;
            int i10 = e0Var.f6217b + iMin;
            e0Var.f6217b = i10;
            if (i10 == e0Var.f6218c) {
                this.f6198h = e0Var.a();
                f0.b(e0Var);
            }
        }
    }

    @Override // de.f
    public final boolean a0(long j10, g gVar) {
        p4.h.j(gVar, "bytes");
        int iJ = gVar.j();
        if (j10 < 0 || iJ < 0 || this.f6199i - j10 < iJ || gVar.j() - 0 < iJ) {
            return false;
        }
        for (int i10 = 0; i10 < iJ; i10++) {
            if (h0(((long) i10) + j10) != gVar.o(0 + i10)) {
                return false;
            }
        }
        return true;
    }

    @Override // de.f, de.e
    public final c b() {
        return this;
    }

    @Override // de.e
    public final /* bridge */ /* synthetic */ e c(byte[] bArr, int i10, int i11) {
        x0(bArr, i10, i11);
        return this;
    }

    @Override // de.f
    public final long c0() throws EOFException {
        int i10;
        if (this.f6199i == 0) {
            throw new EOFException();
        }
        int i11 = 0;
        boolean z10 = false;
        long j10 = 0;
        do {
            e0 e0Var = this.f6198h;
            p4.h.g(e0Var);
            byte[] bArr = e0Var.f6216a;
            int i12 = e0Var.f6217b;
            int i13 = e0Var.f6218c;
            while (i12 < i13) {
                byte b10 = bArr[i12];
                byte b11 = (byte) 48;
                if (b10 < b11 || b10 > ((byte) 57)) {
                    byte b12 = (byte) 97;
                    if ((b10 < b12 || b10 > ((byte) 102)) && (b10 < (b12 = (byte) 65) || b10 > ((byte) 70))) {
                        if (i11 != 0) {
                            z10 = true;
                            break;
                        }
                        StringBuilder sbC = a0.b.c("Expected leading [0-9a-fA-F] character but was 0x");
                        sbC.append(n0.n(b10));
                        throw new NumberFormatException(sbC.toString());
                    }
                    i10 = (b10 - b12) + 10;
                } else {
                    i10 = b10 - b11;
                }
                if (((-1152921504606846976L) & j10) != 0) {
                    c cVarG = new c().g(j10);
                    cVarG.y0(b10);
                    StringBuilder sbC2 = a0.b.c("Number too large: ");
                    sbC2.append(cVarG.p0());
                    throw new NumberFormatException(sbC2.toString());
                }
                j10 = (j10 << 4) | ((long) i10);
                i12++;
                i11++;
            }
            if (i12 == i13) {
                this.f6198h = e0Var.a();
                f0.b(e0Var);
            } else {
                e0Var.f6217b = i12;
            }
            if (z10) {
                break;
            }
        } while (this.f6198h != null);
        this.f6199i -= (long) i11;
        return j10;
    }

    @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // de.f
    public final String d0(Charset charset) {
        p4.h.j(charset, "charset");
        return o0(this.f6199i, charset);
    }

    @Override // de.f
    public final InputStream e0() {
        return new b();
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            long j10 = this.f6199i;
            c cVar = (c) obj;
            if (j10 != cVar.f6199i) {
                return false;
            }
            if (j10 != 0) {
                e0 e0Var = this.f6198h;
                p4.h.g(e0Var);
                e0 e0Var2 = cVar.f6198h;
                p4.h.g(e0Var2);
                int i10 = e0Var.f6217b;
                int i11 = e0Var2.f6217b;
                long j11 = 0;
                while (j11 < this.f6199i) {
                    long jMin = Math.min(e0Var.f6218c - i10, e0Var2.f6218c - i11);
                    long j12 = 0;
                    while (j12 < jMin) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (e0Var.f6216a[i10] != e0Var2.f6216a[i11]) {
                            return false;
                        }
                        j12++;
                        i10 = i12;
                        i11 = i13;
                    }
                    if (i10 == e0Var.f6218c) {
                        e0Var = e0Var.f6221f;
                        p4.h.g(e0Var);
                        i10 = e0Var.f6217b;
                    }
                    if (i11 == e0Var2.f6218c) {
                        e0Var2 = e0Var2.f6221f;
                        p4.h.g(e0Var2);
                        i11 = e0Var2.f6217b;
                    }
                    j11 += jMin;
                }
            }
        }
        return true;
    }

    @Override // de.f
    public final void f(c cVar, long j10) throws EOFException {
        p4.h.j(cVar, "sink");
        long j11 = this.f6199i;
        if (j11 >= j10) {
            cVar.write(this, j10);
        } else {
            cVar.write(this, j11);
            throw new EOFException();
        }
    }

    public final long f0() {
        long j10 = this.f6199i;
        if (j10 == 0) {
            return 0L;
        }
        e0 e0Var = this.f6198h;
        p4.h.g(e0Var);
        e0 e0Var2 = e0Var.f6222g;
        p4.h.g(e0Var2);
        int i10 = e0Var2.f6218c;
        if (i10 < 8192 && e0Var2.f6220e) {
            j10 -= (long) (i10 - e0Var2.f6217b);
        }
        return j10;
    }

    @Override // de.e, de.h0, java.io.Flushable
    public final void flush() {
    }

    public final c g0(c cVar, long j10, long j11) {
        p4.h.j(cVar, "out");
        n0.e(this.f6199i, j10, j11);
        if (j11 != 0) {
            cVar.f6199i += j11;
            e0 e0Var = this.f6198h;
            while (true) {
                p4.h.g(e0Var);
                int i10 = e0Var.f6218c;
                int i11 = e0Var.f6217b;
                if (j10 < i10 - i11) {
                    break;
                }
                j10 -= (long) (i10 - i11);
                e0Var = e0Var.f6221f;
            }
            while (j11 > 0) {
                p4.h.g(e0Var);
                e0 e0VarC = e0Var.c();
                int i12 = e0VarC.f6217b + ((int) j10);
                e0VarC.f6217b = i12;
                e0VarC.f6218c = Math.min(i12 + ((int) j11), e0VarC.f6218c);
                e0 e0Var2 = cVar.f6198h;
                if (e0Var2 == null) {
                    e0VarC.f6222g = e0VarC;
                    e0VarC.f6221f = e0VarC;
                    cVar.f6198h = e0VarC;
                } else {
                    p4.h.g(e0Var2);
                    e0 e0Var3 = e0Var2.f6222g;
                    p4.h.g(e0Var3);
                    e0Var3.b(e0VarC);
                }
                j11 -= (long) (e0VarC.f6218c - e0VarC.f6217b);
                e0Var = e0Var.f6221f;
                j10 = 0;
            }
        }
        return this;
    }

    @Override // de.f
    public final c h() {
        return this;
    }

    public final byte h0(long j10) {
        n0.e(this.f6199i, j10, 1L);
        e0 e0Var = this.f6198h;
        if (e0Var == null) {
            p4.h.g(null);
            throw null;
        }
        long j11 = this.f6199i;
        if (j11 - j10 < j10) {
            while (j11 > j10) {
                e0Var = e0Var.f6222g;
                p4.h.g(e0Var);
                j11 -= (long) (e0Var.f6218c - e0Var.f6217b);
            }
            return e0Var.f6216a[(int) ((((long) e0Var.f6217b) + j10) - j11)];
        }
        long j12 = 0;
        while (true) {
            int i10 = e0Var.f6218c;
            int i11 = e0Var.f6217b;
            long j13 = ((long) (i10 - i11)) + j12;
            if (j13 > j10) {
                return e0Var.f6216a[(int) ((((long) i11) + j10) - j12)];
            }
            e0Var = e0Var.f6221f;
            p4.h.g(e0Var);
            j12 = j13;
        }
    }

    public final int hashCode() {
        e0 e0Var = this.f6198h;
        if (e0Var == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = e0Var.f6218c;
            for (int i12 = e0Var.f6217b; i12 < i11; i12++) {
                i10 = (i10 * 31) + e0Var.f6216a[i12];
            }
            e0Var = e0Var.f6221f;
            p4.h.g(e0Var);
        } while (e0Var != this.f6198h);
        return i10;
    }

    @Override // de.f
    public final g i() {
        return j(this.f6199i);
    }

    public final long i0(byte b10, long j10, long j11) {
        e0 e0Var;
        long j12 = 0;
        boolean z10 = false;
        if (0 <= j10 && j10 <= j11) {
            z10 = true;
        }
        if (!z10) {
            StringBuilder sbC = a0.b.c("size=");
            sbC.append(this.f6199i);
            sbC.append(" fromIndex=");
            sbC.append(j10);
            sbC.append(" toIndex=");
            sbC.append(j11);
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        long j13 = this.f6199i;
        if (j11 > j13) {
            j11 = j13;
        }
        if (j10 != j11 && (e0Var = this.f6198h) != null) {
            if (j13 - j10 < j10) {
                while (j13 > j10) {
                    e0Var = e0Var.f6222g;
                    p4.h.g(e0Var);
                    j13 -= (long) (e0Var.f6218c - e0Var.f6217b);
                }
                while (j13 < j11) {
                    byte[] bArr = e0Var.f6216a;
                    int iMin = (int) Math.min(e0Var.f6218c, (((long) e0Var.f6217b) + j11) - j13);
                    for (int i10 = (int) ((((long) e0Var.f6217b) + j10) - j13); i10 < iMin; i10++) {
                        if (bArr[i10] == b10) {
                            return ((long) (i10 - e0Var.f6217b)) + j13;
                        }
                    }
                    j13 += (long) (e0Var.f6218c - e0Var.f6217b);
                    e0Var = e0Var.f6221f;
                    p4.h.g(e0Var);
                    j10 = j13;
                }
            } else {
                while (true) {
                    long j14 = ((long) (e0Var.f6218c - e0Var.f6217b)) + j12;
                    if (j14 > j10) {
                        break;
                    }
                    e0Var = e0Var.f6221f;
                    p4.h.g(e0Var);
                    j12 = j14;
                }
                while (j12 < j11) {
                    byte[] bArr2 = e0Var.f6216a;
                    int iMin2 = (int) Math.min(e0Var.f6218c, (((long) e0Var.f6217b) + j11) - j12);
                    for (int i11 = (int) ((((long) e0Var.f6217b) + j10) - j12); i11 < iMin2; i11++) {
                        if (bArr2[i11] == b10) {
                            return ((long) (i11 - e0Var.f6217b)) + j12;
                        }
                    }
                    j12 += (long) (e0Var.f6218c - e0Var.f6217b);
                    e0Var = e0Var.f6221f;
                    p4.h.g(e0Var);
                    j10 = j12;
                }
            }
        }
        return -1L;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // de.f
    public final g j(long j10) throws EOFException {
        if (!(j10 >= 0 && j10 <= 2147483647L)) {
            throw new IllegalArgumentException(r0.f("byteCount: ", j10).toString());
        }
        if (this.f6199i < j10) {
            throw new EOFException();
        }
        if (j10 < 4096) {
            return new g(B(j10));
        }
        g gVarS0 = s0((int) j10);
        a(j10);
        return gVarS0;
    }

    public final long j0(g gVar, long j10) throws IOException {
        long j11 = j10;
        p4.h.j(gVar, "bytes");
        if (!(gVar.j() > 0)) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long j12 = 0;
        if (!(j11 >= 0)) {
            throw new IllegalArgumentException(r0.f("fromIndex < 0: ", j11).toString());
        }
        e0 e0Var = this.f6198h;
        if (e0Var != null) {
            long j13 = this.f6199i;
            if (j13 - j11 < j11) {
                while (j13 > j11) {
                    e0Var = e0Var.f6222g;
                    p4.h.g(e0Var);
                    j13 -= (long) (e0Var.f6218c - e0Var.f6217b);
                }
                byte[] bArrN = gVar.n();
                byte b10 = bArrN[0];
                int iJ = gVar.j();
                long j14 = (this.f6199i - ((long) iJ)) + 1;
                while (j13 < j14) {
                    byte[] bArr = e0Var.f6216a;
                    long j15 = j14;
                    int iMin = (int) Math.min(e0Var.f6218c, (((long) e0Var.f6217b) + j14) - j13);
                    for (int i10 = (int) ((((long) e0Var.f6217b) + j11) - j13); i10 < iMin; i10++) {
                        if (bArr[i10] == b10 && ee.h.a(e0Var, i10 + 1, bArrN, iJ)) {
                            return ((long) (i10 - e0Var.f6217b)) + j13;
                        }
                    }
                    j13 += (long) (e0Var.f6218c - e0Var.f6217b);
                    e0Var = e0Var.f6221f;
                    p4.h.g(e0Var);
                    j11 = j13;
                    j14 = j15;
                }
            } else {
                while (true) {
                    long j16 = ((long) (e0Var.f6218c - e0Var.f6217b)) + j12;
                    if (j16 > j11) {
                        break;
                    }
                    e0Var = e0Var.f6221f;
                    p4.h.g(e0Var);
                    j12 = j16;
                }
                byte[] bArrN2 = gVar.n();
                byte b11 = bArrN2[0];
                int iJ2 = gVar.j();
                long j17 = (this.f6199i - ((long) iJ2)) + 1;
                while (j12 < j17) {
                    byte[] bArr2 = e0Var.f6216a;
                    long j18 = j17;
                    int iMin2 = (int) Math.min(e0Var.f6218c, (((long) e0Var.f6217b) + j17) - j12);
                    for (int i11 = (int) ((((long) e0Var.f6217b) + j11) - j12); i11 < iMin2; i11++) {
                        if (bArr2[i11] == b11 && ee.h.a(e0Var, i11 + 1, bArrN2, iJ2)) {
                            return ((long) (i11 - e0Var.f6217b)) + j12;
                        }
                    }
                    j12 += (long) (e0Var.f6218c - e0Var.f6217b);
                    e0Var = e0Var.f6221f;
                    p4.h.g(e0Var);
                    j11 = j12;
                    j17 = j18;
                }
            }
        }
        return -1L;
    }

    public final long k0(g gVar, long j10) {
        int i10;
        int i11;
        int i12;
        int i13;
        p4.h.j(gVar, "targetBytes");
        long j11 = 0;
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("fromIndex < 0: ", j10).toString());
        }
        e0 e0Var = this.f6198h;
        if (e0Var == null) {
            return -1L;
        }
        long j12 = this.f6199i;
        if (j12 - j10 < j10) {
            while (j12 > j10) {
                e0Var = e0Var.f6222g;
                p4.h.g(e0Var);
                j12 -= (long) (e0Var.f6218c - e0Var.f6217b);
            }
            if (gVar.j() == 2) {
                byte bO = gVar.o(0);
                byte bO2 = gVar.o(1);
                while (j12 < this.f6199i) {
                    byte[] bArr = e0Var.f6216a;
                    i12 = (int) ((((long) e0Var.f6217b) + j10) - j12);
                    int i14 = e0Var.f6218c;
                    while (i12 < i14) {
                        byte b10 = bArr[i12];
                        if (b10 == bO || b10 == bO2) {
                            i13 = e0Var.f6217b;
                        } else {
                            i12++;
                        }
                    }
                    j12 += (long) (e0Var.f6218c - e0Var.f6217b);
                    e0Var = e0Var.f6221f;
                    p4.h.g(e0Var);
                    j10 = j12;
                }
                return -1L;
            }
            byte[] bArrN = gVar.n();
            while (j12 < this.f6199i) {
                byte[] bArr2 = e0Var.f6216a;
                i12 = (int) ((((long) e0Var.f6217b) + j10) - j12);
                int i15 = e0Var.f6218c;
                while (i12 < i15) {
                    byte b11 = bArr2[i12];
                    for (byte b12 : bArrN) {
                        if (b11 == b12) {
                            i13 = e0Var.f6217b;
                        }
                    }
                    i12++;
                }
                j12 += (long) (e0Var.f6218c - e0Var.f6217b);
                e0Var = e0Var.f6221f;
                p4.h.g(e0Var);
                j10 = j12;
            }
            return -1L;
            return ((long) (i12 - i13)) + j12;
        }
        while (true) {
            long j13 = ((long) (e0Var.f6218c - e0Var.f6217b)) + j11;
            if (j13 > j10) {
                break;
            }
            e0Var = e0Var.f6221f;
            p4.h.g(e0Var);
            j11 = j13;
        }
        if (gVar.j() == 2) {
            byte bO3 = gVar.o(0);
            byte bO4 = gVar.o(1);
            while (j11 < this.f6199i) {
                byte[] bArr3 = e0Var.f6216a;
                i10 = (int) ((((long) e0Var.f6217b) + j10) - j11);
                int i16 = e0Var.f6218c;
                while (i10 < i16) {
                    byte b13 = bArr3[i10];
                    if (b13 == bO3 || b13 == bO4) {
                        i11 = e0Var.f6217b;
                    } else {
                        i10++;
                    }
                }
                j11 += (long) (e0Var.f6218c - e0Var.f6217b);
                e0Var = e0Var.f6221f;
                p4.h.g(e0Var);
                j10 = j11;
            }
            return -1L;
        }
        byte[] bArrN2 = gVar.n();
        while (j11 < this.f6199i) {
            byte[] bArr4 = e0Var.f6216a;
            i10 = (int) ((((long) e0Var.f6217b) + j10) - j11);
            int i17 = e0Var.f6218c;
            while (i10 < i17) {
                byte b14 = bArr4[i10];
                for (byte b15 : bArrN2) {
                    if (b14 == b15) {
                        i11 = e0Var.f6217b;
                    }
                }
                i10++;
            }
            j11 += (long) (e0Var.f6218c - e0Var.f6217b);
            e0Var = e0Var.f6221f;
            p4.h.g(e0Var);
            j10 = j11;
        }
        return -1L;
        return ((long) (i10 - i11)) + j11;
    }

    public final int l0(byte[] bArr, int i10, int i11) {
        p4.h.j(bArr, "sink");
        n0.e(bArr.length, i10, i11);
        e0 e0Var = this.f6198h;
        if (e0Var == null) {
            return -1;
        }
        int iMin = Math.min(i11, e0Var.f6218c - e0Var.f6217b);
        byte[] bArr2 = e0Var.f6216a;
        int i12 = e0Var.f6217b;
        gd.g.j(bArr2, bArr, i10, i12, i12 + iMin);
        int i13 = e0Var.f6217b + iMin;
        e0Var.f6217b = i13;
        this.f6199i -= (long) iMin;
        if (i13 == e0Var.f6218c) {
            this.f6198h = e0Var.a();
            f0.b(e0Var);
        }
        return iMin;
    }

    @Override // de.e
    public final e m() {
        return this;
    }

    public final a m0(a aVar) {
        p4.h.j(aVar, "unsafeCursor");
        byte[] bArr = ee.h.f6774a;
        if (aVar == n0.f6257a) {
            aVar = new a();
        }
        if (!(aVar.f6200h == null)) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        aVar.f6200h = this;
        aVar.f6201i = true;
        return aVar;
    }

    @Override // de.e
    public final /* bridge */ /* synthetic */ e n(int i10) {
        D0(i10);
        return this;
    }

    public final short n0() throws EOFException {
        int i10 = readShort() & 65535;
        return (short) (((i10 & 255) << 8) | ((65280 & i10) >>> 8));
    }

    @Override // de.f
    public final boolean o(long j10) {
        return this.f6199i >= j10;
    }

    public final String o0(long j10, Charset charset) throws EOFException {
        p4.h.j(charset, "charset");
        if (!(j10 >= 0 && j10 <= 2147483647L)) {
            throw new IllegalArgumentException(r0.f("byteCount: ", j10).toString());
        }
        if (this.f6199i < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        e0 e0Var = this.f6198h;
        p4.h.g(e0Var);
        int i10 = e0Var.f6217b;
        if (((long) i10) + j10 > e0Var.f6218c) {
            return new String(B(j10), charset);
        }
        int i11 = (int) j10;
        String str = new String(e0Var.f6216a, i10, i11, charset);
        int i12 = e0Var.f6217b + i11;
        e0Var.f6217b = i12;
        this.f6199i -= j10;
        if (i12 == e0Var.f6218c) {
            this.f6198h = e0Var.a();
            f0.b(e0Var);
        }
        return str;
    }

    public final String p0() {
        return o0(this.f6199i, yd.a.f19171b);
    }

    public final String q0(long j10) throws EOFException {
        return o0(j10, yd.a.f19171b);
    }

    @Override // de.e
    public final /* bridge */ /* synthetic */ e r(int i10) {
        B0(i10);
        return this;
    }

    public final int r0() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (this.f6199i == 0) {
            throw new EOFException();
        }
        byte bH0 = h0(0L);
        boolean z10 = false;
        if ((bH0 & 128) == 0) {
            i10 = bH0 & 127;
            i12 = 0;
            i11 = 1;
        } else if ((bH0 & 224) == 192) {
            i10 = bH0 & 31;
            i11 = 2;
            i12 = 128;
        } else if ((bH0 & 240) == 224) {
            i10 = bH0 & 15;
            i11 = 3;
            i12 = 2048;
        } else {
            if ((bH0 & 248) != 240) {
                a(1L);
                return 65533;
            }
            i10 = bH0 & 7;
            i11 = 4;
            i12 = 65536;
        }
        long j10 = i11;
        if (this.f6199i < j10) {
            StringBuilder sbC = y0.c("size < ", i11, ": ");
            sbC.append(this.f6199i);
            sbC.append(" (to read code point prefixed 0x");
            sbC.append(n0.n(bH0));
            sbC.append(')');
            throw new EOFException(sbC.toString());
        }
        for (int i13 = 1; i13 < i11; i13++) {
            long j11 = i13;
            byte bH1 = h0(j11);
            if ((bH1 & 192) != 128) {
                a(j11);
                return 65533;
            }
            i10 = (i10 << 6) | (bH1 & 63);
        }
        a(j10);
        if (i10 > 1114111) {
            return 65533;
        }
        if (55296 <= i10 && i10 < 57344) {
            z10 = true;
        }
        if (!z10 && i10 >= i12) {
            return i10;
        }
        return 65533;
    }

    @Override // de.j0
    public final long read(c cVar, long j10) {
        p4.h.j(cVar, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        long j11 = this.f6199i;
        if (j11 == 0) {
            return -1L;
        }
        if (j10 > j11) {
            j10 = j11;
        }
        cVar.write(this, j10);
        return j10;
    }

    @Override // de.f
    public final byte readByte() throws EOFException {
        if (this.f6199i == 0) {
            throw new EOFException();
        }
        e0 e0Var = this.f6198h;
        p4.h.g(e0Var);
        int i10 = e0Var.f6217b;
        int i11 = e0Var.f6218c;
        int i12 = i10 + 1;
        byte b10 = e0Var.f6216a[i10];
        this.f6199i--;
        if (i12 == i11) {
            this.f6198h = e0Var.a();
            f0.b(e0Var);
        } else {
            e0Var.f6217b = i12;
        }
        return b10;
    }

    @Override // de.f
    public final void readFully(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int iL0 = l0(bArr, i10, bArr.length - i10);
            if (iL0 == -1) {
                throw new EOFException();
            }
            i10 += iL0;
        }
    }

    @Override // de.f
    public final int readInt() throws EOFException {
        if (this.f6199i < 4) {
            throw new EOFException();
        }
        e0 e0Var = this.f6198h;
        p4.h.g(e0Var);
        int i10 = e0Var.f6217b;
        int i11 = e0Var.f6218c;
        if (i11 - i10 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = e0Var.f6216a;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 24) | ((bArr[i12] & 255) << 16);
        int i15 = i13 + 1;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        int i17 = i15 + 1;
        int i18 = i16 | (bArr[i15] & 255);
        this.f6199i -= 4;
        if (i17 == i11) {
            this.f6198h = e0Var.a();
            f0.b(e0Var);
        } else {
            e0Var.f6217b = i17;
        }
        return i18;
    }

    @Override // de.f
    public final long readLong() throws EOFException {
        if (this.f6199i < 8) {
            throw new EOFException();
        }
        e0 e0Var = this.f6198h;
        p4.h.g(e0Var);
        int i10 = e0Var.f6217b;
        int i11 = e0Var.f6218c;
        if (i11 - i10 < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = e0Var.f6216a;
        int i12 = i10 + 1;
        long j10 = (((long) bArr[i10]) & 255) << 56;
        int i13 = i12 + 1;
        int i14 = i13 + 1;
        long j11 = j10 | ((((long) bArr[i12]) & 255) << 48) | ((((long) bArr[i13]) & 255) << 40);
        int i15 = i14 + 1;
        int i16 = i15 + 1;
        long j12 = j11 | ((((long) bArr[i14]) & 255) << 32) | ((((long) bArr[i15]) & 255) << 24);
        int i17 = i16 + 1;
        long j13 = j12 | ((((long) bArr[i16]) & 255) << 16);
        int i18 = i17 + 1;
        long j14 = j13 | ((((long) bArr[i17]) & 255) << 8);
        int i19 = i18 + 1;
        long j15 = j14 | (((long) bArr[i18]) & 255);
        this.f6199i -= 8;
        if (i19 == i11) {
            this.f6198h = e0Var.a();
            f0.b(e0Var);
        } else {
            e0Var.f6217b = i19;
        }
        return j15;
    }

    @Override // de.f
    public final short readShort() throws EOFException {
        if (this.f6199i < 2) {
            throw new EOFException();
        }
        e0 e0Var = this.f6198h;
        p4.h.g(e0Var);
        int i10 = e0Var.f6217b;
        int i11 = e0Var.f6218c;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = e0Var.f6216a;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 8) | (bArr[i12] & 255);
        this.f6199i -= 2;
        if (i13 == i11) {
            this.f6198h = e0Var.a();
            f0.b(e0Var);
        } else {
            e0Var.f6217b = i13;
        }
        return (short) i14;
    }

    @Override // de.e
    public final long s(j0 j0Var) throws IOException {
        p4.h.j(j0Var, "source");
        long j10 = 0;
        while (true) {
            long j11 = j0Var.read(this, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    public final g s0(int i10) {
        if (i10 == 0) {
            return g.f6228l;
        }
        n0.e(this.f6199i, 0L, i10);
        e0 e0Var = this.f6198h;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            p4.h.g(e0Var);
            int i14 = e0Var.f6218c;
            int i15 = e0Var.f6217b;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            e0Var = e0Var.f6221f;
        }
        byte[][] bArr = new byte[i13][];
        int[] iArr = new int[i13 * 2];
        e0 e0Var2 = this.f6198h;
        int i16 = 0;
        while (i11 < i10) {
            p4.h.g(e0Var2);
            bArr[i16] = e0Var2.f6216a;
            i11 += e0Var2.f6218c - e0Var2.f6217b;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = e0Var2.f6217b;
            e0Var2.f6219d = true;
            i16++;
            e0Var2 = e0Var2.f6221f;
        }
        return new g0(bArr, iArr);
    }

    public final e0 t0(int i10) {
        if (!(i10 >= 1 && i10 <= 8192)) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        e0 e0Var = this.f6198h;
        if (e0Var == null) {
            e0 e0VarC = f0.c();
            this.f6198h = e0VarC;
            e0VarC.f6222g = e0VarC;
            e0VarC.f6221f = e0VarC;
            return e0VarC;
        }
        p4.h.g(e0Var);
        e0 e0Var2 = e0Var.f6222g;
        p4.h.g(e0Var2);
        if (e0Var2.f6218c + i10 <= 8192 && e0Var2.f6220e) {
            return e0Var2;
        }
        e0 e0VarC2 = f0.c();
        e0Var2.b(e0VarC2);
        return e0VarC2;
    }

    @Override // de.j0
    public final k0 timeout() {
        return k0.NONE;
    }

    public final String toString() {
        long j10 = this.f6199i;
        if (j10 <= 2147483647L) {
            return s0((int) j10).toString();
        }
        StringBuilder sbC = a0.b.c("size > Int.MAX_VALUE: ");
        sbC.append(this.f6199i);
        throw new IllegalStateException(sbC.toString().toString());
    }

    @Override // de.f
    public final String u() throws EOFException {
        return J(Long.MAX_VALUE);
    }

    public final c u0(g gVar) {
        p4.h.j(gVar, "byteString");
        gVar.B(this, gVar.j());
        return this;
    }

    public final c v0(j0 j0Var, long j10) throws IOException {
        while (j10 > 0) {
            long j11 = j0Var.read(this, j10);
            if (j11 == -1) {
                throw new EOFException();
            }
            j10 -= j11;
        }
        return this;
    }

    @Override // de.f
    public final byte[] w() {
        return B(this.f6199i);
    }

    public final c w0(byte[] bArr) {
        p4.h.j(bArr, "source");
        x0(bArr, 0, bArr.length);
        return this;
    }

    @Override // de.h0
    public final void write(c cVar, long j10) {
        int i10;
        e0 e0Var;
        e0 e0VarC;
        p4.h.j(cVar, "source");
        if (!(cVar != this)) {
            throw new IllegalArgumentException("source == this".toString());
        }
        n0.e(cVar.f6199i, 0L, j10);
        while (j10 > 0) {
            e0 e0Var2 = cVar.f6198h;
            p4.h.g(e0Var2);
            int i11 = e0Var2.f6218c;
            e0 e0Var3 = cVar.f6198h;
            p4.h.g(e0Var3);
            if (j10 < i11 - e0Var3.f6217b) {
                e0 e0Var4 = this.f6198h;
                if (e0Var4 != null) {
                    p4.h.g(e0Var4);
                    e0Var = e0Var4.f6222g;
                } else {
                    e0Var = null;
                }
                if (e0Var != null && e0Var.f6220e) {
                    if ((((long) e0Var.f6218c) + j10) - ((long) (e0Var.f6219d ? 0 : e0Var.f6217b)) <= 8192) {
                        e0 e0Var5 = cVar.f6198h;
                        p4.h.g(e0Var5);
                        e0Var5.d(e0Var, (int) j10);
                        cVar.f6199i -= j10;
                        this.f6199i += j10;
                        return;
                    }
                }
                e0 e0Var6 = cVar.f6198h;
                p4.h.g(e0Var6);
                int i12 = (int) j10;
                if (!(i12 > 0 && i12 <= e0Var6.f6218c - e0Var6.f6217b)) {
                    throw new IllegalArgumentException("byteCount out of range".toString());
                }
                if (i12 >= 1024) {
                    e0VarC = e0Var6.c();
                } else {
                    e0VarC = f0.c();
                    byte[] bArr = e0Var6.f6216a;
                    byte[] bArr2 = e0VarC.f6216a;
                    int i13 = e0Var6.f6217b;
                    gd.g.j(bArr, bArr2, 0, i13, i13 + i12);
                }
                e0VarC.f6218c = e0VarC.f6217b + i12;
                e0Var6.f6217b += i12;
                e0 e0Var7 = e0Var6.f6222g;
                p4.h.g(e0Var7);
                e0Var7.b(e0VarC);
                cVar.f6198h = e0VarC;
            }
            e0 e0Var8 = cVar.f6198h;
            p4.h.g(e0Var8);
            long j11 = e0Var8.f6218c - e0Var8.f6217b;
            cVar.f6198h = e0Var8.a();
            e0 e0Var9 = this.f6198h;
            if (e0Var9 == null) {
                this.f6198h = e0Var8;
                e0Var8.f6222g = e0Var8;
                e0Var8.f6221f = e0Var8;
            } else {
                p4.h.g(e0Var9);
                e0 e0Var10 = e0Var9.f6222g;
                p4.h.g(e0Var10);
                e0Var10.b(e0Var8);
                e0 e0Var11 = e0Var8.f6222g;
                if (!(e0Var11 != e0Var8)) {
                    throw new IllegalStateException("cannot compact".toString());
                }
                p4.h.g(e0Var11);
                if (e0Var11.f6220e) {
                    int i14 = e0Var8.f6218c - e0Var8.f6217b;
                    e0 e0Var12 = e0Var8.f6222g;
                    p4.h.g(e0Var12);
                    int i15 = 8192 - e0Var12.f6218c;
                    e0 e0Var13 = e0Var8.f6222g;
                    p4.h.g(e0Var13);
                    if (e0Var13.f6219d) {
                        i10 = 0;
                    } else {
                        e0 e0Var14 = e0Var8.f6222g;
                        p4.h.g(e0Var14);
                        i10 = e0Var14.f6217b;
                    }
                    if (i14 <= i15 + i10) {
                        e0 e0Var15 = e0Var8.f6222g;
                        p4.h.g(e0Var15);
                        e0Var8.d(e0Var15, i14);
                        e0Var8.a();
                        f0.b(e0Var8);
                    }
                }
            }
            cVar.f6199i -= j11;
            this.f6199i += j11;
            j10 -= j11;
        }
    }

    public final void x() throws EOFException {
        a(this.f6199i);
    }

    public final c x0(byte[] bArr, int i10, int i11) {
        p4.h.j(bArr, "source");
        long j10 = i11;
        n0.e(bArr.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            e0 e0VarT0 = t0(1);
            int iMin = Math.min(i12 - i10, 8192 - e0VarT0.f6218c);
            int i13 = i10 + iMin;
            gd.g.j(bArr, e0VarT0.f6216a, e0VarT0.f6218c, i10, i13);
            e0VarT0.f6218c += iMin;
            i10 = i13;
        }
        this.f6199i += j10;
        return this;
    }

    @Override // de.f
    public final int y() throws EOFException {
        return n0.l(readInt());
    }

    public final c y0(int i10) {
        e0 e0VarT0 = t0(1);
        byte[] bArr = e0VarT0.f6216a;
        int i11 = e0VarT0.f6218c;
        e0VarT0.f6218c = i11 + 1;
        bArr[i11] = (byte) i10;
        this.f6199i++;
        return this;
    }

    @Override // de.f
    public final boolean z() {
        return this.f6199i == 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    /* JADX WARN: Code duplicated, block: B:20:0x003b  */
    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    /* JADX WARN: Code duplicated, block: B:23:0x0044  */
    /* JADX WARN: Code duplicated, block: B:24:0x0047  */
    /* JADX WARN: Code duplicated, block: B:25:0x004a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:34:0x0068  */
    /* JADX WARN: Code duplicated, block: B:35:0x006c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0075  */
    /* JADX WARN: Code duplicated, block: B:39:0x007e  */
    /* JADX WARN: Code duplicated, block: B:41:0x0085  */
    /* JADX WARN: Code duplicated, block: B:42:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x008a  */
    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:46:0x0096  */
    /* JADX WARN: Code duplicated, block: B:47:0x0099  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:56:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00de  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:71:0x00f4 A[LOOP:0: B:69:0x00f0->B:71:0x00f4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x0104  */
    @Override // de.e
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public final c W(long j10) {
        byte[] bArr;
        int i10;
        if (j10 == 0) {
            y0(48);
        } else {
            boolean z10 = false;
            int i11 = 1;
            if (j10 < 0) {
                j10 = -j10;
                if (j10 < 0) {
                    F0("-9223372036854775808");
                } else {
                    z10 = true;
                    if (j10 < 100000000) {
                        if (j10 < 10000) {
                            if (j10 < 100) {
                                if (j10 >= 10) {
                                    i11 = 2;
                                }
                            } else if (j10 < 1000) {
                                i11 = 3;
                            } else {
                                i11 = 4;
                            }
                        } else if (j10 < 1000000) {
                            if (j10 < 100000) {
                                i11 = 5;
                            } else {
                                i11 = 6;
                            }
                        } else if (j10 < 10000000) {
                            i11 = 7;
                        } else {
                            i11 = 8;
                        }
                    } else if (j10 < 1000000000000L) {
                        if (j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                            if (j10 < 1000000000) {
                                i11 = 9;
                            } else {
                                i11 = 10;
                            }
                        } else if (j10 < 100000000000L) {
                            i11 = 11;
                        } else {
                            i11 = 12;
                        }
                    } else if (j10 < 1000000000000000L) {
                        if (j10 < 10000000000000L) {
                            i11 = 13;
                        } else if (j10 < 100000000000000L) {
                            i11 = 14;
                        } else {
                            i11 = 15;
                        }
                    } else if (j10 < 100000000000000000L) {
                        if (j10 < 10000000000000000L) {
                            i11 = 16;
                        } else {
                            i11 = 17;
                        }
                    } else if (j10 < 1000000000000000000L) {
                        i11 = 18;
                    } else {
                        i11 = 19;
                    }
                    if (z10) {
                        i11++;
                    }
                    e0 e0VarT0 = t0(i11);
                    bArr = e0VarT0.f6216a;
                    i10 = e0VarT0.f6218c + i11;
                    while (j10 != 0) {
                        long j11 = 10;
                        i10--;
                        bArr[i10] = ee.h.f6774a[(int) (j10 % j11)];
                        j10 /= j11;
                    }
                    if (z10) {
                        bArr[i10 - 1] = (byte) 45;
                    }
                    e0VarT0.f6218c += i11;
                    this.f6199i += (long) i11;
                }
            } else {
                if (j10 < 100000000) {
                    if (j10 < 10000) {
                        if (j10 < 100) {
                            if (j10 >= 10) {
                                i11 = 2;
                            }
                        } else if (j10 < 1000) {
                            i11 = 3;
                        } else {
                            i11 = 4;
                        }
                    } else if (j10 < 1000000) {
                        if (j10 < 100000) {
                            i11 = 5;
                        } else {
                            i11 = 6;
                        }
                    } else if (j10 < 10000000) {
                        i11 = 7;
                    } else {
                        i11 = 8;
                    }
                } else if (j10 < 1000000000000L) {
                    if (j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                        if (j10 < 1000000000) {
                            i11 = 9;
                        } else {
                            i11 = 10;
                        }
                    } else if (j10 < 100000000000L) {
                        i11 = 11;
                    } else {
                        i11 = 12;
                    }
                } else if (j10 < 1000000000000000L) {
                    if (j10 < 10000000000000L) {
                        i11 = 13;
                    } else if (j10 < 100000000000000L) {
                        i11 = 14;
                    } else {
                        i11 = 15;
                    }
                } else if (j10 < 100000000000000000L) {
                    if (j10 < 10000000000000000L) {
                        i11 = 16;
                    } else {
                        i11 = 17;
                    }
                } else if (j10 < 1000000000000000000L) {
                    i11 = 18;
                } else {
                    i11 = 19;
                }
                if (z10) {
                    i11++;
                }
                e0 e0VarT1 = t0(i11);
                bArr = e0VarT1.f6216a;
                i10 = e0VarT1.f6218c + i11;
                while (j10 != 0) {
                    long j12 = 10;
                    i10--;
                    bArr[i10] = ee.h.f6774a[(int) (j10 % j12)];
                    j10 /= j12;
                }
                if (z10) {
                    bArr[i10 - 1] = (byte) 45;
                }
                e0VarT1.f6218c += i11;
                this.f6199i += (long) i11;
            }
        }
        return this;
    }

    /* JADX INFO: compiled from: Buffer.kt */
    public static final class b extends InputStream {
        public b() {
        }

        @Override // java.io.InputStream
        public final int available() {
            return (int) Math.min(c.this.f6199i, Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.InputStream
        public final int read() {
            c cVar = c.this;
            if (cVar.f6199i > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        public final String toString() {
            return c.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i10, int i11) {
            p4.h.j(bArr, "sink");
            return c.this.l0(bArr, i10, i11);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) throws IOException {
        p4.h.j(byteBuffer, "sink");
        e0 e0Var = this.f6198h;
        if (e0Var == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), e0Var.f6218c - e0Var.f6217b);
        byteBuffer.put(e0Var.f6216a, e0Var.f6217b, iMin);
        int i10 = e0Var.f6217b + iMin;
        e0Var.f6217b = i10;
        this.f6199i -= (long) iMin;
        if (i10 == e0Var.f6218c) {
            this.f6198h = e0Var.a();
            f0.b(e0Var);
        }
        return iMin;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        p4.h.j(byteBuffer, "source");
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            e0 e0VarT0 = t0(1);
            int iMin = Math.min(i10, 8192 - e0VarT0.f6218c);
            byteBuffer.get(e0VarT0.f6216a, e0VarT0.f6218c, iMin);
            i10 -= iMin;
            e0VarT0.f6218c += iMin;
        }
        this.f6199i += (long) iRemaining;
        return iRemaining;
    }
}
