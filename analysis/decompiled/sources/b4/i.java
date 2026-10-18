package b4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import m5.p;
import m5.w;
import n3.i1;
import n3.s0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import s3.y;
import s3.z;
import u6.v;

/* JADX INFO: compiled from: VorbisReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f3281n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3282o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3283p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public z.c f3284q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public z.a f3285r;

    /* JADX INFO: compiled from: VorbisReader.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final z.c f3286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final z.a f3287b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f3288c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final z.b[] f3289d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f3290e;

        public a(z.c cVar, z.a aVar, byte[] bArr, z.b[] bVarArr, int i10) {
            this.f3286a = cVar;
            this.f3287b = aVar;
            this.f3288c = bArr;
            this.f3289d = bVarArr;
            this.f3290e = i10;
        }
    }

    @Override // b4.h
    public final void b(long j10) {
        this.f3272g = j10;
        this.f3283p = j10 != 0;
        z.c cVar = this.f3284q;
        this.f3282o = cVar != null ? cVar.f15105e : 0;
    }

    @Override // b4.h
    public final long c(w wVar) {
        byte[] bArr = wVar.f10475a;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        byte b10 = bArr[0];
        a aVar = this.f3281n;
        m5.a.f(aVar);
        int i10 = !aVar.f3289d[(b10 >> 1) & (255 >>> (8 - aVar.f3290e))].f15100a ? aVar.f3286a.f15105e : aVar.f3286a.f15106f;
        long j10 = this.f3283p ? (this.f3282o + i10) / 4 : 0;
        byte[] bArr2 = wVar.f10475a;
        int length = bArr2.length;
        int i11 = wVar.f10477c + 4;
        if (length < i11) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr2, i11);
            wVar.B(bArrCopyOf, bArrCopyOf.length);
        } else {
            wVar.C(i11);
        }
        byte[] bArr3 = wVar.f10475a;
        int i12 = wVar.f10477c;
        bArr3[i12 - 4] = (byte) (j10 & 255);
        bArr3[i12 - 3] = (byte) ((j10 >>> 8) & 255);
        bArr3[i12 - 2] = (byte) ((j10 >>> 16) & 255);
        bArr3[i12 - 1] = (byte) ((j10 >>> 24) & 255);
        this.f3283p = true;
        this.f3282o = i10;
        return j10;
    }

    /* JADX WARN: Code duplicated, block: B:161:0x03bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:163:0x03bf  */
    @Override // b4.h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean d(w wVar, long j10, h.a aVar) throws IOException {
        a aVar2;
        int i10;
        int iB;
        int i11;
        int i12;
        byte[] bArr;
        int i13 = 0;
        if (this.f3281n != null) {
            Objects.requireNonNull(aVar.f3279a);
            return false;
        }
        z.c cVar = this.f3284q;
        if (cVar != null) {
            z.a aVar3 = this.f3285r;
            if (aVar3 == null) {
                this.f3285r = z.c(wVar, true, true);
            } else {
                int i14 = wVar.f10477c;
                byte[] bArr2 = new byte[i14];
                System.arraycopy(wVar.f10475a, 0, bArr2, 0, i14);
                int i15 = cVar.f15101a;
                int i16 = 5;
                z.d(5, wVar, false);
                int iT = wVar.t() + 1;
                y yVar = new y(wVar.f10475a);
                yVar.c(wVar.f10476b * 8);
                while (true) {
                    int i17 = 16;
                    if (i13 >= iT) {
                        byte[] bArr3 = bArr2;
                        int i18 = 6;
                        int iB2 = yVar.b(6) + 1;
                        for (int i19 = 0; i19 < iB2; i19++) {
                            if (yVar.b(16) != 0) {
                                throw i1.a("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i20 = 1;
                        int iB3 = yVar.b(6) + 1;
                        int i21 = 0;
                        while (true) {
                            int i22 = 3;
                            if (i21 >= iB3) {
                                int i23 = 1;
                                int iB4 = yVar.b(i18) + 1;
                                int i24 = 0;
                                while (i24 < iB4) {
                                    if (yVar.b(16) > 2) {
                                        throw i1.a("residueType greater than 2 is not decodable", null);
                                    }
                                    yVar.c(24);
                                    yVar.c(24);
                                    yVar.c(24);
                                    int iB5 = yVar.b(i18) + i23;
                                    int i25 = 8;
                                    yVar.c(8);
                                    int[] iArr = new int[iB5];
                                    for (int i26 = 0; i26 < iB5; i26++) {
                                        iArr[i26] = ((yVar.a() ? yVar.b(5) : 0) * 8) + yVar.b(3);
                                    }
                                    int i27 = 0;
                                    while (i27 < iB5) {
                                        int i28 = 0;
                                        while (i28 < i25) {
                                            if ((iArr[i27] & (1 << i28)) != 0) {
                                                yVar.c(i25);
                                            }
                                            i28++;
                                            i25 = 8;
                                        }
                                        i27++;
                                        i25 = 8;
                                    }
                                    i24++;
                                    i18 = 6;
                                    i23 = 1;
                                }
                                int iB6 = yVar.b(i18) + 1;
                                for (int i29 = 0; i29 < iB6; i29++) {
                                    int iB7 = yVar.b(16);
                                    if (iB7 != 0) {
                                        p.c("VorbisUtil", "mapping type other than 0 not supported: " + iB7);
                                    } else {
                                        if (yVar.a()) {
                                            i10 = 1;
                                            iB = yVar.b(4) + 1;
                                        } else {
                                            i10 = 1;
                                            iB = 1;
                                        }
                                        if (yVar.a()) {
                                            int iB8 = yVar.b(8) + i10;
                                            for (int i30 = 0; i30 < iB8; i30++) {
                                                int i31 = i15 - 1;
                                                yVar.c(z.a(i31));
                                                yVar.c(z.a(i31));
                                            }
                                        }
                                        if (yVar.b(2) != 0) {
                                            throw i1.a("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (iB > 1) {
                                            for (int i32 = 0; i32 < i15; i32++) {
                                                yVar.c(4);
                                            }
                                        }
                                        for (int i33 = 0; i33 < iB; i33++) {
                                            yVar.c(8);
                                            yVar.c(8);
                                            yVar.c(8);
                                        }
                                    }
                                }
                                int iB9 = yVar.b(6) + 1;
                                z.b[] bVarArr = new z.b[iB9];
                                for (int i34 = 0; i34 < iB9; i34++) {
                                    boolean zA = yVar.a();
                                    yVar.b(16);
                                    yVar.b(16);
                                    yVar.b(8);
                                    bVarArr[i34] = new z.b(zA);
                                }
                                if (!yVar.a()) {
                                    throw i1.a("framing bit after modes not set as expected", null);
                                }
                                aVar2 = new a(cVar, aVar3, bArr3, bVarArr, z.a(iB9 - 1));
                                break;
                            }
                            int iB10 = yVar.b(i17);
                            if (iB10 == 0) {
                                i11 = iB3;
                                int i35 = 8;
                                yVar.c(8);
                                yVar.c(16);
                                yVar.c(16);
                                yVar.c(6);
                                yVar.c(8);
                                int iB11 = yVar.b(4) + 1;
                                int i36 = 0;
                                while (i36 < iB11) {
                                    yVar.c(i35);
                                    i36++;
                                    i35 = 8;
                                }
                            } else {
                                if (iB10 != i20) {
                                    throw i1.a("floor type greater than 1 not decodable: " + iB10, null);
                                }
                                int iB12 = yVar.b(5);
                                int[] iArr2 = new int[iB12];
                                int i37 = -1;
                                for (int i38 = 0; i38 < iB12; i38++) {
                                    iArr2[i38] = yVar.b(4);
                                    if (iArr2[i38] > i37) {
                                        i37 = iArr2[i38];
                                    }
                                }
                                int i39 = i37 + 1;
                                int[] iArr3 = new int[i39];
                                int i40 = 0;
                                while (i40 < i39) {
                                    iArr3[i40] = yVar.b(i22) + 1;
                                    int iB13 = yVar.b(2);
                                    int i41 = 8;
                                    if (iB13 > 0) {
                                        yVar.c(8);
                                    }
                                    int i42 = iB3;
                                    int i43 = 0;
                                    for (int i44 = 1; i43 < (i44 << iB13); i44 = 1) {
                                        yVar.c(i41);
                                        i43++;
                                        i41 = 8;
                                    }
                                    i40++;
                                    i22 = 3;
                                    iB3 = i42;
                                }
                                i11 = iB3;
                                yVar.c(2);
                                int iB14 = yVar.b(4);
                                int i45 = 0;
                                int i46 = 0;
                                for (int i47 = 0; i47 < iB12; i47++) {
                                    i45 += iArr3[iArr2[i47]];
                                    while (i46 < i45) {
                                        yVar.c(iB14);
                                        i46++;
                                    }
                                }
                            }
                            i21++;
                            i18 = 6;
                            i17 = 16;
                            i20 = 1;
                            iB3 = i11;
                        }
                    } else {
                        if (yVar.b(24) != 5653314) {
                            StringBuilder sbC = a0.b.c("expected code book to start with [0x56, 0x43, 0x42] at ");
                            sbC.append((yVar.f15097c * 8) + yVar.f15098d);
                            throw i1.a(sbC.toString(), null);
                        }
                        int iB15 = yVar.b(16);
                        int iB16 = yVar.b(24);
                        long[] jArr = new long[iB16];
                        if (yVar.a()) {
                            byte[] bArr4 = bArr2;
                            i12 = iT;
                            int iB17 = yVar.b(i16) + 1;
                            int i48 = 0;
                            while (i48 < iB16) {
                                int iB18 = yVar.b(z.a(iB16 - i48));
                                int i49 = 0;
                                while (i49 < iB18 && i48 < iB16) {
                                    jArr[i48] = iB17;
                                    i48++;
                                    i49++;
                                    bArr4 = bArr4;
                                }
                                iB17++;
                                bArr4 = bArr4;
                            }
                            bArr = bArr4;
                        } else {
                            boolean zA2 = yVar.a();
                            int i50 = 0;
                            while (i50 < iB16) {
                                if (zA2) {
                                    if (yVar.a()) {
                                        jArr[i50] = yVar.b(i16) + 1;
                                    } else {
                                        jArr[i50] = 0;
                                    }
                                    i16 = 5;
                                } else {
                                    bArr2 = bArr2;
                                    iT = iT;
                                    jArr[i50] = yVar.b(i16) + 1;
                                }
                                i50++;
                                iT = iT;
                                bArr2 = bArr2;
                            }
                            i12 = iT;
                            bArr = bArr2;
                        }
                        int iB19 = yVar.b(4);
                        if (iB19 > 2) {
                            throw i1.a("lookup type greater than 2 not decodable: " + iB19, null);
                        }
                        if (iB19 == 1 || iB19 == 2) {
                            yVar.c(32);
                            yVar.c(32);
                            int iB20 = yVar.b(4) + 1;
                            yVar.c(1);
                            yVar.c((int) (((long) iB20) * (iB19 == 1 ? iB15 != 0 ? (long) Math.floor(Math.pow(iB16, 1.0d / ((double) iB15))) : 0L : ((long) iB16) * ((long) iB15))));
                        }
                        i13++;
                        i16 = 5;
                        iT = i12;
                        bArr2 = bArr;
                    }
                }
            }
            this.f3281n = aVar2;
            if (aVar2 == null) {
                return true;
            }
            z.c cVar2 = aVar2.f3286a;
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar2.f15107g);
            arrayList.add(aVar2.f3288c);
            f4.a aVarB = z.b(v.t(aVar2.f3287b.f15099a));
            s0.a aVar4 = new s0.a();
            aVar4.f11705k = "audio/vorbis";
            aVar4.f11700f = cVar2.f15104d;
            aVar4.f11701g = cVar2.f15103c;
            aVar4.f11718x = cVar2.f15101a;
            aVar4.f11719y = cVar2.f15102b;
            aVar4.f11707m = arrayList;
            aVar4.f11703i = aVarB;
            aVar.f3279a = new s0(aVar4);
            return true;
        }
        z.d(1, wVar, false);
        wVar.k();
        int iT2 = wVar.t();
        int iK = wVar.k();
        int iG = wVar.g();
        if (iG <= 0) {
            iG = -1;
        }
        int i51 = iG;
        int iG2 = wVar.g();
        if (iG2 <= 0) {
            iG2 = -1;
        }
        int i52 = iG2;
        wVar.g();
        int iT3 = wVar.t();
        int iPow = (int) Math.pow(2.0d, iT3 & 15);
        int iPow2 = (int) Math.pow(2.0d, (iT3 & 240) >> 4);
        wVar.t();
        this.f3284q = new z.c(iT2, iK, i51, i52, iPow, iPow2, Arrays.copyOf(wVar.f10475a, wVar.f10477c));
        aVar2 = null;
        this.f3281n = aVar2;
        if (aVar2 == null) {
            return true;
        }
        z.c cVar3 = aVar2.f3286a;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cVar3.f15107g);
        arrayList2.add(aVar2.f3288c);
        f4.a aVarB2 = z.b(v.t(aVar2.f3287b.f15099a));
        s0.a aVar5 = new s0.a();
        aVar5.f11705k = "audio/vorbis";
        aVar5.f11700f = cVar3.f15104d;
        aVar5.f11701g = cVar3.f15103c;
        aVar5.f11718x = cVar3.f15101a;
        aVar5.f11719y = cVar3.f15102b;
        aVar5.f11707m = arrayList2;
        aVar5.f11703i = aVarB2;
        aVar.f3279a = new s0(aVar5);
        return true;
    }

    @Override // b4.h
    public final void e(boolean z10) {
        super.e(z10);
        if (z10) {
            this.f3281n = null;
            this.f3284q = null;
            this.f3285r = null;
        }
        this.f3282o = 0;
        this.f3283p = false;
    }
}
