package n2;

import android.util.Log;
import androidx.recyclerview.widget.s;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: GifHeaderParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer f11195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f11196c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f11194a = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11197d = 0;

    public final boolean a() {
        return this.f11196c.f11184b != 0;
    }

    /* JADX WARN: Type inference failed for: r6v23, types: [java.util.ArrayList, java.util.List<n2.b>] */
    public final c b() {
        if (this.f11195b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.f11196c;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 6; i10++) {
            sb2.append((char) c());
        }
        if (sb2.toString().startsWith("GIF")) {
            this.f11196c.f11188f = f();
            this.f11196c.f11189g = f();
            int iC = c();
            c cVar = this.f11196c;
            cVar.f11190h = (iC & 128) != 0;
            cVar.f11191i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.f11196c.f11192j = c();
            c cVar2 = this.f11196c;
            c();
            Objects.requireNonNull(cVar2);
            if (this.f11196c.f11190h && !a()) {
                c cVar3 = this.f11196c;
                cVar3.f11183a = e(cVar3.f11191i);
                c cVar4 = this.f11196c;
                cVar4.f11193k = cVar4.f11183a[cVar4.f11192j];
            }
        } else {
            this.f11196c.f11184b = 1;
        }
        if (!a()) {
            boolean z10 = false;
            while (!z10 && !a() && this.f11196c.f11185c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        g();
                    } else if (iC3 == 249) {
                        this.f11196c.f11186d = new b();
                        c();
                        int iC4 = c();
                        b bVar = this.f11196c.f11186d;
                        int i11 = (iC4 & 28) >> 2;
                        bVar.f11178g = i11;
                        if (i11 == 0) {
                            bVar.f11178g = 1;
                        }
                        bVar.f11177f = (iC4 & 1) != 0;
                        int iF = f();
                        if (iF < 2) {
                            iF = 10;
                        }
                        b bVar2 = this.f11196c.f11186d;
                        bVar2.f11180i = iF * 10;
                        bVar2.f11179h = c();
                        c();
                    } else if (iC3 == 254) {
                        g();
                    } else if (iC3 != 255) {
                        g();
                    } else {
                        d();
                        StringBuilder sb3 = new StringBuilder();
                        for (int i12 = 0; i12 < 11; i12++) {
                            sb3.append((char) this.f11194a[i12]);
                        }
                        if (sb3.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                byte[] bArr = this.f11194a;
                                if (bArr[0] == 1) {
                                    byte b10 = bArr[1];
                                    byte b11 = bArr[2];
                                    Objects.requireNonNull(this.f11196c);
                                }
                                if (this.f11197d <= 0) {
                                    break;
                                }
                            } while (!a());
                        } else {
                            g();
                        }
                    }
                } else if (iC2 == 44) {
                    c cVar5 = this.f11196c;
                    if (cVar5.f11186d == null) {
                        cVar5.f11186d = new b();
                    }
                    cVar5.f11186d.f11172a = f();
                    this.f11196c.f11186d.f11173b = f();
                    this.f11196c.f11186d.f11174c = f();
                    this.f11196c.f11186d.f11175d = f();
                    int iC5 = c();
                    boolean z11 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    b bVar3 = this.f11196c.f11186d;
                    bVar3.f11176e = (iC5 & 64) != 0;
                    if (z11) {
                        bVar3.f11182k = e(iPow);
                    } else {
                        bVar3.f11182k = null;
                    }
                    this.f11196c.f11186d.f11181j = this.f11195b.position();
                    c();
                    g();
                    if (!a()) {
                        c cVar6 = this.f11196c;
                        cVar6.f11185c++;
                        cVar6.f11187e.add(cVar6.f11186d);
                    }
                } else if (iC2 != 59) {
                    this.f11196c.f11184b = 1;
                } else {
                    z10 = true;
                }
            }
            c cVar7 = this.f11196c;
            if (cVar7.f11185c < 0) {
                cVar7.f11184b = 1;
            }
        }
        return this.f11196c;
    }

    public final int c() {
        try {
            return this.f11195b.get() & 255;
        } catch (Exception unused) {
            this.f11196c.f11184b = 1;
            return 0;
        }
    }

    public final void d() {
        int iC = c();
        this.f11197d = iC;
        if (iC <= 0) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                int i12 = this.f11197d;
                if (i10 >= i12) {
                    return;
                }
                i11 = i12 - i10;
                this.f11195b.get(this.f11194a, i10, i11);
                i10 += i11;
            } catch (Exception e10) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbB = s.b("Error Reading Block n: ", i10, " count: ", i11, " blockSize: ");
                    sbB.append(this.f11197d);
                    Log.d("GifHeaderParser", sbB.toString(), e10);
                }
                this.f11196c.f11184b = 1;
                return;
            }
        }
    }

    public final int[] e(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.f11195b.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = i12 + 1;
                int i14 = i13 + 1;
                int i15 = i14 + 1;
                int i16 = i11 + 1;
                iArr[i11] = ((bArr[i12] & 255) << 16) | (-16777216) | ((bArr[i13] & 255) << 8) | (bArr[i14] & 255);
                i12 = i15;
                i11 = i16;
            }
        } catch (BufferUnderflowException e10) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e10);
            }
            this.f11196c.f11184b = 1;
        }
        return iArr;
    }

    public final int f() {
        return this.f11195b.getShort();
    }

    public final void g() {
        int iC;
        do {
            iC = c();
            this.f11195b.position(Math.min(this.f11195b.position() + iC, this.f11195b.limit()));
        } while (iC > 0);
    }
}
