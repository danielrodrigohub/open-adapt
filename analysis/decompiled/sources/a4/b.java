package a4;

import android.util.Pair;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import m5.g0;
import m5.p;
import m5.s;
import m5.w;
import n3.i1;
import n3.s0;
import s3.q;
import u6.v;

/* JADX INFO: compiled from: AtomParsers.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f216a = g0.F("OpusHead");

    /* JADX INFO: compiled from: AtomParsers.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f217a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f218b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f219c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f220d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f221e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final w f222f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final w f223g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f224h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f225i;

        public a(w wVar, w wVar2, boolean z10) throws i1 {
            this.f223g = wVar;
            this.f222f = wVar2;
            this.f221e = z10;
            wVar2.D(12);
            this.f217a = wVar2.w();
            wVar.D(12);
            this.f225i = wVar.w();
            s3.k.a(wVar.e() == 1, "first_chunk must be 1");
            this.f218b = -1;
        }

        public final boolean a() {
            int i10 = this.f218b + 1;
            this.f218b = i10;
            if (i10 == this.f217a) {
                return false;
            }
            this.f220d = this.f221e ? this.f222f.x() : this.f222f.u();
            if (this.f218b == this.f224h) {
                this.f219c = this.f223g.w();
                this.f223g.E(4);
                int i11 = this.f225i - 1;
                this.f225i = i11;
                this.f224h = i11 > 0 ? this.f223g.w() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: a4.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AtomParsers.java */
    public static final class C0005b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f227b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f228c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f229d;

        public C0005b(String str, byte[] bArr, long j10, long j11) {
            this.f226a = str;
            this.f227b = bArr;
            this.f228c = j10;
            this.f229d = j11;
        }
    }

    /* JADX INFO: compiled from: AtomParsers.java */
    public interface c {
        int a();

        int b();

        int c();
    }

    /* JADX INFO: compiled from: AtomParsers.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m[] f230a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public s0 f231b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f232c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f233d = 0;

        public d(int i10) {
            this.f230a = new m[i10];
        }
    }

    /* JADX INFO: compiled from: AtomParsers.java */
    public static final class e implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f235b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final w f236c;

        public e(a4.a.b bVar, s0 s0Var) {
            w wVar = bVar.f215b;
            this.f236c = wVar;
            wVar.D(12);
            int iW = wVar.w();
            if ("audio/raw".equals(s0Var.f11687s)) {
                int iZ = g0.z(s0Var.H, s0Var.F);
                if (iW == 0 || iW % iZ != 0) {
                    p.g("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iZ + ", stsz sample size: " + iW);
                    iW = iZ;
                }
            }
            this.f234a = iW == 0 ? -1 : iW;
            this.f235b = wVar.w();
        }

        @Override // a4.b.c
        public final int a() {
            return this.f234a;
        }

        @Override // a4.b.c
        public final int b() {
            return this.f235b;
        }

        @Override // a4.b.c
        public final int c() {
            int i10 = this.f234a;
            return i10 == -1 ? this.f236c.w() : i10;
        }
    }

    /* JADX INFO: compiled from: AtomParsers.java */
    public static final class f implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w f237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f239c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f240d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f241e;

        public f(a4.a.b bVar) {
            w wVar = bVar.f215b;
            this.f237a = wVar;
            wVar.D(12);
            this.f239c = wVar.w() & 255;
            this.f238b = wVar.w();
        }

        @Override // a4.b.c
        public final int a() {
            return -1;
        }

        @Override // a4.b.c
        public final int b() {
            return this.f238b;
        }

        @Override // a4.b.c
        public final int c() {
            int i10 = this.f239c;
            if (i10 == 8) {
                return this.f237a.t();
            }
            if (i10 == 16) {
                return this.f237a.y();
            }
            int i11 = this.f240d;
            this.f240d = i11 + 1;
            if (i11 % 2 != 0) {
                return this.f241e & 15;
            }
            int iT = this.f237a.t();
            this.f241e = iT;
            return (iT & 240) >> 4;
        }
    }

    public static void a(w wVar) {
        int i10 = wVar.f10476b;
        wVar.E(4);
        if (wVar.e() != 1751411826) {
            i10 += 4;
        }
        wVar.D(i10);
    }

    public static C0005b b(w wVar, int i10) {
        wVar.D(i10 + 8 + 4);
        wVar.E(1);
        c(wVar);
        wVar.E(2);
        int iT = wVar.t();
        if ((iT & 128) != 0) {
            wVar.E(2);
        }
        if ((iT & 64) != 0) {
            wVar.E(wVar.t());
        }
        if ((iT & 32) != 0) {
            wVar.E(2);
        }
        wVar.E(1);
        c(wVar);
        String strF = s.f(wVar.t());
        if ("audio/mpeg".equals(strF) || "audio/vnd.dts".equals(strF) || "audio/vnd.dts.hd".equals(strF)) {
            return new C0005b(strF, null, -1L, -1L);
        }
        wVar.E(4);
        long jU = wVar.u();
        long jU2 = wVar.u();
        wVar.E(1);
        int iC = c(wVar);
        byte[] bArr = new byte[iC];
        wVar.d(bArr, 0, iC);
        return new C0005b(strF, bArr, jU2 > 0 ? jU2 : -1L, jU > 0 ? jU : -1L);
    }

    public static int c(w wVar) {
        int iT = wVar.t();
        int i10 = iT & 127;
        while ((iT & 128) == 128) {
            iT = wVar.t();
            i10 = (i10 << 7) | (iT & 127);
        }
        return i10;
    }

    public static Pair<Integer, m> d(w wVar, int i10, int i11) throws i1 {
        m mVar;
        Pair<Integer, m> pairCreate;
        int i12;
        int i13;
        byte[] bArr;
        int i14 = wVar.f10476b;
        while (i14 - i10 < i11) {
            wVar.D(i14);
            int iE = wVar.e();
            s3.k.a(iE > 0, "childAtomSize must be positive");
            if (wVar.e() == 1936289382) {
                int i15 = i14 + 8;
                int i16 = 0;
                int i17 = -1;
                String strQ = null;
                Integer numValueOf = null;
                while (i15 - i14 < iE) {
                    wVar.D(i15);
                    int iE2 = wVar.e();
                    int iE3 = wVar.e();
                    if (iE3 == 1718775137) {
                        numValueOf = Integer.valueOf(wVar.e());
                    } else if (iE3 == 1935894637) {
                        wVar.E(4);
                        strQ = wVar.q(4);
                    } else if (iE3 == 1935894633) {
                        i17 = i15;
                        i16 = iE2;
                    }
                    i15 += iE2;
                }
                if ("cenc".equals(strQ) || "cbc1".equals(strQ) || "cens".equals(strQ) || "cbcs".equals(strQ)) {
                    s3.k.a(numValueOf != null, "frma atom is mandatory");
                    s3.k.a(i17 != -1, "schi atom is mandatory");
                    int i18 = i17 + 8;
                    while (true) {
                        if (i18 - i17 >= i16) {
                            mVar = null;
                            break;
                        }
                        wVar.D(i18);
                        int iE4 = wVar.e();
                        if (wVar.e() == 1952804451) {
                            int iE5 = (wVar.e() >> 24) & 255;
                            wVar.E(1);
                            if (iE5 == 0) {
                                wVar.E(1);
                                i12 = 0;
                                i13 = 0;
                            } else {
                                int iT = wVar.t();
                                int i19 = (iT & 240) >> 4;
                                i12 = iT & 15;
                                i13 = i19;
                            }
                            boolean z10 = wVar.t() == 1;
                            int iT2 = wVar.t();
                            byte[] bArr2 = new byte[16];
                            wVar.d(bArr2, 0, 16);
                            if (z10 && iT2 == 0) {
                                int iT3 = wVar.t();
                                byte[] bArr3 = new byte[iT3];
                                wVar.d(bArr3, 0, iT3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            mVar = new m(z10, strQ, iT2, bArr2, i13, i12, bArr);
                            break;
                        }
                        i18 += iE4;
                    }
                    s3.k.a(mVar != null, "tenc atom is mandatory");
                    int i20 = g0.f10384a;
                    pairCreate = Pair.create(numValueOf, mVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            i14 += iE;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:232:0x036d  */
    /* JADX WARN: Code duplicated, block: B:234:0x0376  */
    /* JADX WARN: Code duplicated, block: B:235:0x0379  */
    /* JADX WARN: Code duplicated, block: B:238:0x038d  */
    /* JADX WARN: Code duplicated, block: B:239:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:241:0x03af  */
    /* JADX WARN: Code duplicated, block: B:247:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:249:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:251:0x040b  */
    /* JADX WARN: Code duplicated, block: B:253:0x0412  */
    /* JADX WARN: Code duplicated, block: B:255:0x043b  */
    /* JADX WARN: Code duplicated, block: B:266:0x0465  */
    /* JADX WARN: Code duplicated, block: B:268:0x0480  */
    /* JADX WARN: Code duplicated, block: B:270:0x0487  */
    /* JADX WARN: Code duplicated, block: B:272:0x049e  */
    /* JADX WARN: Code duplicated, block: B:273:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:275:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:277:0x04c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:278:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:281:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:283:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:284:0x0500  */
    /* JADX WARN: Code duplicated, block: B:286:0x0505  */
    /* JADX WARN: Code duplicated, block: B:287:0x051d  */
    /* JADX WARN: Code duplicated, block: B:289:0x0522  */
    /* JADX WARN: Code duplicated, block: B:291:0x054c  */
    /* JADX WARN: Code duplicated, block: B:293:0x0551  */
    /* JADX WARN: Code duplicated, block: B:295:0x059c  */
    /* JADX WARN: Code duplicated, block: B:297:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:298:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:300:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:301:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:305:0x05bd  */
    /* JADX WARN: Code duplicated, block: B:307:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:311:0x05d8 A[LOOP:2: B:303:0x05b7->B:311:0x05d8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:315:0x05e1  */
    /* JADX WARN: Code duplicated, block: B:317:0x05eb  */
    /* JADX WARN: Code duplicated, block: B:319:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:320:0x0601  */
    /* JADX WARN: Code duplicated, block: B:322:0x060a  */
    /* JADX WARN: Code duplicated, block: B:330:0x0647  */
    /* JADX WARN: Code duplicated, block: B:511:0x04ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:519:0x0610 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:520:0x05dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:521:0x05de A[EDGE_INSN: B:521:0x05de->B:313:0x05de BREAK  A[LOOP:2: B:303:0x05b7->B:311:0x05d8], SYNTHETIC] */
    public static d e(w wVar, int i10, int i11, String str, r3.d dVar, boolean z10) throws i1 {
        int i12;
        int i13;
        int i14;
        r3.d dVarA;
        String str2;
        int i15;
        byte[] bArr;
        d dVar2;
        float f10;
        List<byte[]> listV;
        int i16;
        int i17;
        List<byte[]> list;
        List<byte[]> list2;
        String str3;
        int iY;
        int iY2;
        int iRound;
        int i18;
        int i19;
        int i20;
        r3.d dVarA2;
        String str4;
        int i21;
        int i22;
        C0005b c0005b;
        int iIntValue;
        String str5;
        String str6;
        int i23;
        List<byte[]> listV2;
        int i24;
        s0.a aVar;
        C0005b c0005b2;
        int iE;
        boolean z11;
        int iE2;
        String str7;
        boolean z12;
        int i25;
        int i26;
        boolean z13;
        int i27;
        int i28;
        int iE3;
        byte[] bArr2;
        String str8;
        int i29;
        List<byte[]> listV3;
        int i30;
        int iT;
        int i31;
        String str9;
        int iT2;
        int i32;
        v vVarV;
        String str10;
        wVar.D(12);
        int iE4 = wVar.e();
        d dVar3 = new d(iE4);
        int i33 = 0;
        while (i33 < iE4) {
            int i34 = wVar.f10476b;
            int iE5 = wVar.e();
            String str11 = "childAtomSize must be positive";
            s3.k.a(iE5 > 0, "childAtomSize must be positive");
            int iE6 = wVar.e();
            if (iE6 == 1635148593 || iE6 == 1635148595 || iE6 == 1701733238 || iE6 == 1831958048 || iE6 == 1836070006 || iE6 == 1752589105 || iE6 == 1751479857 || iE6 == 1932670515 || iE6 == 1211250227 || iE6 == 1987063864 || iE6 == 1987063865 || iE6 == 1635135537 || iE6 == 1685479798 || iE6 == 1685479729 || iE6 == 1685481573 || iE6 == 1685481521) {
                iE4 = iE4;
                i12 = i33;
                String str12 = "childAtomSize must be positive";
                wVar.D(i34 + 8 + 8);
                wVar.E(16);
                int iY3 = wVar.y();
                int iY4 = wVar.y();
                wVar.E(50);
                int i35 = wVar.f10476b;
                if (iE6 == 1701733238) {
                    i13 = i34;
                    i14 = iE5;
                    Pair<Integer, m> pairD = d(wVar, i13, i14);
                    if (pairD != null) {
                        iE6 = ((Integer) pairD.first).intValue();
                        dVarA = dVar == null ? null : dVar.a(((m) pairD.second).f344b);
                        dVar3.f230a[i12] = (m) pairD.second;
                    } else {
                        dVarA = dVar;
                    }
                    wVar.D(i35);
                } else {
                    i13 = i34;
                    i14 = iE5;
                    dVarA = dVar;
                }
                if (iE6 == 1831958048) {
                    str2 = "video/mpeg";
                } else {
                    str2 = iE6 == 1211250227 ? "video/3gpp" : null;
                }
                float fW = 1.0f;
                ByteBuffer byteBufferOrder = null;
                boolean z14 = false;
                List<byte[]> list3 = null;
                String str13 = null;
                int iC = -1;
                int i36 = -1;
                C0005b c0005b3 = null;
                int i37 = -1;
                int i38 = -1;
                r3.d dVar4 = dVarA;
                byte[] bArr3 = null;
                while (true) {
                    if (i35 - i13 >= i14) {
                        i15 = i36;
                        bArr = bArr3;
                        break;
                    }
                    wVar.D(i35);
                    int i39 = wVar.f10476b;
                    i15 = i36;
                    int iE7 = wVar.e();
                    bArr = bArr3;
                    if (iE7 == 0 && wVar.f10476b - i13 == i14) {
                        break;
                    }
                    s3.k.a(iE7 > 0, str12);
                    int iE8 = wVar.e();
                    String str14 = str12;
                    if (iE8 == 1635148611) {
                        s3.k.a(str2 == null, null);
                        wVar.D(i39 + 8);
                        n5.a aVarB = n5.a.b(wVar);
                        list2 = aVarB.f11857a;
                        dVar3.f232c = aVarB.f11858b;
                        if (!z14) {
                            fW = aVarB.f11861e;
                        }
                        str13 = aVarB.f11862f;
                        str3 = "video/avc";
                    } else {
                        if (iE8 == 1752589123) {
                            s3.k.a(str2 == null, null);
                            wVar.D(i39 + 8);
                            n5.e eVarA = n5.e.a(wVar);
                            list2 = eVarA.f11883a;
                            dVar3.f232c = eVarA.f11884b;
                            if (!z14) {
                                fW = eVarA.f11885c;
                            }
                            str13 = eVarA.f11886d;
                            str3 = "video/hevc";
                        } else {
                            if (iE8 == 1685480259 || iE8 == 1685485123) {
                                iY3 = iY3;
                                dVar3 = dVar3;
                                iY4 = iY4;
                                i13 = i13;
                                iE6 = iE6;
                                i14 = i14;
                                f10 = fW;
                                n5.c cVarA = n5.c.a(wVar);
                                if (cVarA != null) {
                                    str13 = cVarA.f11869a;
                                    str2 = "video/dolby-vision";
                                }
                            } else {
                                if (iE8 == 1987076931) {
                                    s3.k.a(str2 == null, null);
                                    str2 = iE6 == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                } else if (iE8 == 1635135811) {
                                    s3.k.a(str2 == null, null);
                                    str2 = "video/av01";
                                } else {
                                    if (iE8 == 1668050025) {
                                        if (byteBufferOrder == null) {
                                            byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                        }
                                        ByteBuffer byteBuffer = byteBufferOrder;
                                        byteBuffer.position(21);
                                        byteBuffer.putShort(wVar.p());
                                        byteBuffer.putShort(wVar.p());
                                        byteBufferOrder = byteBuffer;
                                    } else if (iE8 == 1835295606) {
                                        if (byteBufferOrder == null) {
                                            byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                        }
                                        ByteBuffer byteBuffer2 = byteBufferOrder;
                                        short sP = wVar.p();
                                        short sP2 = wVar.p();
                                        short sP3 = wVar.p();
                                        short sP4 = wVar.p();
                                        short sP5 = wVar.p();
                                        short sP6 = wVar.p();
                                        float f11 = fW;
                                        short sP7 = wVar.p();
                                        short sP8 = wVar.p();
                                        long jU = wVar.u();
                                        long jU2 = wVar.u();
                                        byteBuffer2.position(1);
                                        byteBuffer2.putShort(sP5);
                                        byteBuffer2.putShort(sP6);
                                        byteBuffer2.putShort(sP);
                                        byteBuffer2.putShort(sP2);
                                        byteBuffer2.putShort(sP3);
                                        byteBuffer2.putShort(sP4);
                                        byteBuffer2.putShort(sP7);
                                        byteBuffer2.putShort(sP8);
                                        byteBuffer2.putShort((short) (jU / 10000));
                                        byteBuffer2.putShort((short) (jU2 / 10000));
                                        byteBufferOrder = byteBuffer2;
                                        list = list3;
                                        fW = f11;
                                        list3 = list;
                                    } else {
                                        iY3 = iY3;
                                        dVar3 = dVar3;
                                        iY4 = iY4;
                                        i13 = i13;
                                        iE6 = iE6;
                                        i14 = i14;
                                        f10 = fW;
                                        if (iE8 == 1681012275) {
                                            s3.k.a(str2 == null, null);
                                            str2 = "video/3gpp";
                                        } else {
                                            byte[] bArrCopyOfRange = null;
                                            if (iE8 == 1702061171) {
                                                s3.k.a(str2 == null, null);
                                                C0005b c0005bB = b(wVar, i39);
                                                String str15 = c0005bB.f226a;
                                                byte[] bArr4 = c0005bB.f227b;
                                                listV = bArr4 != null ? v.v(bArr4) : list3;
                                                c0005b3 = c0005bB;
                                                str2 = str15;
                                                bArr3 = bArr;
                                            } else if (iE8 == 1885434736) {
                                                wVar.D(i39 + 8);
                                                fW = wVar.w() / wVar.w();
                                                z14 = true;
                                            } else if (iE8 == 1937126244) {
                                                int i40 = i39 + 8;
                                                while (i40 - i39 < iE7) {
                                                    wVar.D(i40);
                                                    int iE9 = wVar.e();
                                                    if (wVar.e() == 1886547818) {
                                                        bArrCopyOfRange = Arrays.copyOfRange(wVar.f10475a, i40, iE9 + i40);
                                                        break;
                                                    }
                                                    i40 += iE9;
                                                }
                                                bArr3 = bArrCopyOfRange;
                                                listV = list3;
                                            } else if (iE8 == 1936995172) {
                                                int iT3 = wVar.t();
                                                wVar.E(3);
                                                if (iT3 == 0) {
                                                    int iT4 = wVar.t();
                                                    if (iT4 == 0) {
                                                        i17 = 0;
                                                    } else if (iT4 == 1) {
                                                        i15 = 1;
                                                    } else if (iT4 == 2) {
                                                        i17 = 2;
                                                    } else if (iT4 == 3) {
                                                        i15 = 3;
                                                    }
                                                    i15 = i17;
                                                }
                                            } else {
                                                if (iE8 == 1668246642) {
                                                    int iE10 = wVar.e();
                                                    if (iE10 == 1852009592 || iE10 == 1852009571) {
                                                        int iY5 = wVar.y();
                                                        int iY6 = wVar.y();
                                                        wVar.E(2);
                                                        boolean z15 = iE7 == 19 && (wVar.t() & 128) != 0;
                                                        int iB = n5.b.b(iY5);
                                                        i16 = z15 ? 1 : 2;
                                                        i38 = iB;
                                                        iC = n5.b.c(iY6);
                                                    } else {
                                                        StringBuilder sbC = a0.b.c("Unsupported color type: ");
                                                        sbC.append(a4.a.a(iE10));
                                                        p.g("AtomParsers", sbC.toString());
                                                    }
                                                }
                                                i37 = i16;
                                                listV = list3;
                                                bArr3 = bArr;
                                            }
                                            list3 = listV;
                                            fW = f10;
                                        }
                                    }
                                    bArr3 = bArr;
                                }
                                list = list3;
                                list3 = list;
                                bArr3 = bArr;
                            }
                            i16 = i37;
                            i37 = i16;
                            listV = list3;
                            bArr3 = bArr;
                            list3 = listV;
                            fW = f10;
                        }
                        i35 += iE7;
                        i36 = i15;
                        str12 = str14;
                        iE6 = iE6;
                        i13 = i13;
                        i14 = i14;
                        dVar3 = dVar3;
                        iY4 = iY4;
                        iY3 = iY3;
                    }
                    str2 = str3;
                    list = list2;
                    list3 = list;
                    bArr3 = bArr;
                    i35 += iE7;
                    i36 = i15;
                    str12 = str14;
                    iE6 = iE6;
                    i13 = i13;
                    i14 = i14;
                    dVar3 = dVar3;
                    iY4 = iY4;
                    iY3 = iY3;
                }
                float f12 = fW;
                if (str2 == null) {
                    dVar2 = dVar3;
                } else {
                    s0.a aVar2 = new s0.a();
                    aVar2.b(i10);
                    aVar2.f11705k = str2;
                    aVar2.f11702h = str13;
                    aVar2.f11710p = iY3;
                    aVar2.f11711q = iY4;
                    aVar2.f11714t = f12;
                    aVar2.f11713s = i11;
                    aVar2.f11715u = bArr;
                    aVar2.f11716v = i15;
                    aVar2.f11707m = list3;
                    aVar2.f11708n = dVar4;
                    int i41 = i38;
                    int i42 = i37;
                    int i43 = iC;
                    if (i41 != -1 || i42 != -1 || i43 != -1 || byteBufferOrder != null) {
                        aVar2.f11717w = new n5.b(i41, i42, i43, byteBufferOrder != null ? byteBufferOrder.array() : null);
                    }
                    if (c0005b3 != null) {
                        C0005b c0005b4 = c0005b3;
                        aVar2.f11700f = w6.a.c(c0005b4.f228c);
                        aVar2.f11701g = w6.a.c(c0005b4.f229d);
                    }
                    s0 s0VarA = aVar2.a();
                    dVar2 = dVar3;
                    dVar2.f231b = s0VarA;
                }
            } else if (iE6 == 1836069985 || iE6 == 1701733217 || iE6 == 1633889587 || iE6 == 1700998451 || iE6 == 1633889588 || iE6 == 1835823201 || iE6 == 1685353315 || iE6 == 1685353317 || iE6 == 1685353320 || iE6 == 1685353324 || iE6 == 1685353336 || iE6 == 1935764850 || iE6 == 1935767394 || iE6 == 1819304813 || iE6 == 1936684916 || iE6 == 1953984371 || iE6 == 778924082 || iE6 == 778924083 || iE6 == 1835557169 || iE6 == 1835560241 || iE6 == 1634492771 || iE6 == 1634492791 || iE6 == 1970037111 || iE6 == 1332770163 || iE6 == 1716281667) {
                wVar.D(i34 + 8 + 8);
                if (z10) {
                    iY = wVar.y();
                    wVar.E(6);
                } else {
                    wVar.E(8);
                    iY = 0;
                }
                if (iY == 0 || iY == 1) {
                    iY2 = wVar.y();
                    wVar.E(6);
                    byte[] bArr5 = wVar.f10475a;
                    int i44 = wVar.f10476b;
                    int i45 = i44 + 1;
                    wVar.f10476b = i45;
                    int i46 = (bArr5[i44] & 255) << 8;
                    int i47 = i45 + 1;
                    wVar.f10476b = i47;
                    int i48 = (bArr5[i45] & 255) | i46;
                    int i49 = i47 + 2;
                    wVar.f10476b = i49;
                    wVar.D(i49 - 4);
                    int iE11 = wVar.e();
                    if (iY == 1) {
                        wVar.E(16);
                    }
                    iRound = i48;
                    i18 = iE11;
                } else {
                    if (iY == 2) {
                        wVar.E(16);
                        iRound = (int) Math.round(Double.longBitsToDouble(wVar.m()));
                        iY2 = wVar.w();
                        wVar.E(20);
                        i18 = 0;
                    } else {
                        iE4 = iE4;
                        i12 = i33;
                        i20 = i34;
                        i19 = iE5;
                    }
                    dVar2 = dVar3;
                    i13 = i20;
                    i14 = i19;
                }
                int i50 = wVar.f10476b;
                if (iE6 == 1701733217) {
                    Pair<Integer, m> pairD2 = d(wVar, i34, iE5);
                    if (pairD2 != null) {
                        int iIntValue2 = ((Integer) pairD2.first).intValue();
                        dVarA2 = dVar == 0 ? null : dVar.a(((m) pairD2.second).f344b);
                        dVar3.f230a[i33] = (m) pairD2.second;
                        iE6 = iIntValue2;
                    } else {
                        dVarA2 = dVar;
                    }
                    wVar.D(i50);
                } else {
                    dVarA2 = dVar;
                }
                String str16 = "audio/ac3";
                String str17 = "audio/raw";
                int i51 = iRound;
                if (iE6 == 1633889587) {
                    str17 = "audio/ac3";
                } else if (iE6 == 1700998451) {
                    str17 = "audio/eac3";
                } else if (iE6 == 1633889588) {
                    str17 = "audio/ac4";
                } else {
                    if (iE6 == 1685353315) {
                        str4 = "audio/vnd.dts";
                    } else if (iE6 == 1685353320 || iE6 == 1685353324) {
                        str4 = "audio/vnd.dts.hd";
                    } else if (iE6 == 1685353317) {
                        str4 = "audio/vnd.dts.hd;profile=lbr";
                    } else if (iE6 == 1685353336) {
                        str4 = "audio/vnd.dts.uhd;profile=p2";
                    } else if (iE6 == 1935764850) {
                        str4 = "audio/3gpp";
                    } else if (iE6 == 1935767394) {
                        str4 = "audio/amr-wb";
                    } else {
                        if (iE6 == 1819304813 || iE6 == 1936684916) {
                            i21 = 2;
                        } else if (iE6 == 1953984371) {
                            i21 = 268435456;
                        } else if (iE6 == 778924082 || iE6 == 778924083) {
                            str4 = "audio/mpeg";
                        } else if (iE6 == 1835557169) {
                            str4 = "audio/mha1";
                        } else if (iE6 == 1835560241) {
                            str4 = "audio/mhm1";
                        } else if (iE6 == 1634492771) {
                            str4 = "audio/alac";
                        } else if (iE6 == 1634492791) {
                            str4 = "audio/g711-alaw";
                        } else if (iE6 == 1970037111) {
                            str4 = "audio/g711-mlaw";
                        } else if (iE6 == 1332770163) {
                            str4 = "audio/opus";
                        } else if (iE6 == 1716281667) {
                            str4 = "audio/flac";
                        } else if (iE6 == 1835823201) {
                            str4 = "audio/true-hd";
                        } else {
                            i21 = -1;
                            str17 = null;
                        }
                        i22 = iY2;
                        c0005b = null;
                        iIntValue = i51;
                        str5 = null;
                        i12 = i33;
                        str6 = str17;
                        i23 = i21;
                        listV2 = null;
                        i24 = i50;
                        while (i24 - i34 < iE5) {
                            wVar.D(i24);
                            iE = wVar.e();
                            if (iE > 0) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            int i52 = iE5;
                            s3.k.a(z11, str11);
                            iE2 = wVar.e();
                            int i53 = i34;
                            if (iE2 == 1835557187) {
                                int i54 = iE - 13;
                                byte[] bArr6 = new byte[i54];
                                str7 = str11;
                                wVar.D(i24 + 13);
                                wVar.d(bArr6, 0, i54);
                                str16 = str16;
                                listV2 = v.v(bArr6);
                                i29 = iE;
                            } else {
                                str7 = str11;
                                if (iE2 == 1702061171) {
                                    z12 = false;
                                    i25 = 1702061171;
                                } else if (!z10 && iE2 == 2002876005) {
                                    i25 = 1702061171;
                                    z12 = false;
                                } else if (iE2 == 1684103987) {
                                    wVar.D(i24 + 8);
                                    String string = Integer.toString(i10);
                                    int i55 = p3.b.f12658b[(wVar.t() & 192) >> 6];
                                    iT2 = wVar.t();
                                    i32 = p3.b.f12660d[(iT2 & 56) >> 3];
                                    if ((iT2 & 4) != 0) {
                                        i32++;
                                    }
                                    int i56 = i32;
                                    i29 = iE;
                                    s0.a aVar3 = new s0.a();
                                    aVar3.f11695a = string;
                                    aVar3.f11705k = str16;
                                    aVar3.f11718x = i56;
                                    aVar3.f11719y = i55;
                                    aVar3.f11708n = dVarA2;
                                    aVar3.f11697c = str;
                                    dVar3.f231b = aVar3.a();
                                    str16 = str16;
                                } else {
                                    i29 = iE;
                                    if (iE2 == 1684366131) {
                                        wVar.D(i24 + 8);
                                        String string2 = Integer.toString(i10);
                                        wVar.E(2);
                                        int i57 = p3.b.f12658b[(wVar.t() & 192) >> 6];
                                        iT = wVar.t();
                                        i31 = p3.b.f12660d[(iT & 14) >> 1];
                                        if ((iT & 1) != 0) {
                                            i31++;
                                        }
                                        if (((wVar.t() & 30) >> 1) > 0 && (wVar.t() & 2) != 0) {
                                            i31 += 2;
                                        }
                                        str16 = str16;
                                        if (wVar.f10477c - wVar.f10476b > 0 || (wVar.t() & 1) == 0) {
                                            str9 = "audio/eac3";
                                        } else {
                                            str9 = "audio/eac3-joc";
                                        }
                                        s0.a aVar4 = new s0.a();
                                        aVar4.f11695a = string2;
                                        aVar4.f11705k = str9;
                                        aVar4.f11718x = i31;
                                        aVar4.f11719y = i57;
                                        aVar4.f11708n = dVarA2;
                                        aVar4.f11697c = str;
                                        dVar3.f231b = aVar4.a();
                                    } else {
                                        str16 = str16;
                                        if (iE2 == 1684103988) {
                                            wVar.D(i24 + 8);
                                            String string3 = Integer.toString(i10);
                                            wVar.E(1);
                                            if (((wVar.t() & 32) >> 5) == 1) {
                                                i30 = 48000;
                                            } else {
                                                i30 = 44100;
                                            }
                                            s0.a aVar5 = new s0.a();
                                            aVar5.f11695a = string3;
                                            aVar5.f11705k = "audio/ac4";
                                            aVar5.f11718x = 2;
                                            aVar5.f11719y = i30;
                                            aVar5.f11708n = dVarA2;
                                            aVar5.f11697c = str;
                                            dVar3.f231b = aVar5.a();
                                        } else if (iE2 == 1684892784) {
                                            if (i18 > 0) {
                                                throw i1.a("Invalid sample rate for Dolby TrueHD MLP stream: " + i18, null);
                                            }
                                            i22 = 2;
                                            iIntValue = i18;
                                        } else if (iE2 == 1684305011) {
                                            s0.a aVar6 = new s0.a();
                                            aVar6.b(i10);
                                            aVar6.f11705k = str6;
                                            aVar6.f11718x = i22;
                                            aVar6.f11719y = iIntValue;
                                            aVar6.f11708n = dVarA2;
                                            aVar6.f11697c = str;
                                            dVar3.f231b = aVar6.a();
                                        } else {
                                            if (iE2 == 1682927731) {
                                                int i58 = i29 - 8;
                                                byte[] bArr7 = f216a;
                                                byte[] bArrCopyOf = Arrays.copyOf(bArr7, bArr7.length + i58);
                                                wVar.D(i24 + 8);
                                                wVar.d(bArrCopyOf, bArr7.length, i58);
                                                listV3 = p4.h.d(bArrCopyOf);
                                            } else if (iE2 == 1684425825) {
                                                int i59 = i29 - 12;
                                                byte[] bArr8 = new byte[i59 + 4];
                                                bArr8[0] = 102;
                                                bArr8[1] = 76;
                                                bArr8[2] = 97;
                                                bArr8[3] = 67;
                                                wVar.D(i24 + 12);
                                                wVar.d(bArr8, 4, i59);
                                                listV3 = v.v(bArr8);
                                            } else if (iE2 == 1634492771) {
                                                int i60 = i29 - 12;
                                                byte[] bArr9 = new byte[i60];
                                                wVar.D(i24 + 12);
                                                wVar.d(bArr9, 0, i60);
                                                w wVar2 = new w(bArr9);
                                                wVar2.D(9);
                                                int iT5 = wVar2.t();
                                                wVar2.D(20);
                                                Pair pairCreate = Pair.create(Integer.valueOf(wVar2.w()), Integer.valueOf(iT5));
                                                iIntValue = ((Integer) pairCreate.first).intValue();
                                                int iIntValue3 = ((Integer) pairCreate.second).intValue();
                                                listV2 = v.v(bArr9);
                                                i22 = iIntValue3;
                                            }
                                            listV2 = listV3;
                                        }
                                    }
                                }
                                if (iE2 == i25) {
                                    i28 = -1;
                                    i26 = i24;
                                    i27 = iE;
                                } else {
                                    i26 = wVar.f10476b;
                                    if (i26 >= i24) {
                                        z13 = true;
                                    } else {
                                        z13 = z12;
                                    }
                                    s3.k.a(z13, null);
                                    while (true) {
                                        i27 = iE;
                                        if (i26 - i24 < i27) {
                                            i26 = -1;
                                            break;
                                        }
                                        wVar.D(i26);
                                        iE3 = wVar.e();
                                        if (iE3 > 0) {
                                            z12 = true;
                                        }
                                        String str18 = str7;
                                        s3.k.a(z12, str18);
                                        str7 = str18;
                                        if (wVar.e() == 1702061171) {
                                            break;
                                        }
                                        i26 += iE3;
                                        z12 = false;
                                        iE = i27;
                                    }
                                    i28 = -1;
                                }
                                if (i26 != i28) {
                                    C0005b c0005bB2 = b(wVar, i26);
                                    str6 = c0005bB2.f226a;
                                    bArr2 = c0005bB2.f227b;
                                    if (bArr2 != null) {
                                        if ("audio/mp4a-latm".equals(str6)) {
                                            p3.a.C0228a c0228aE = p3.a.e(bArr2);
                                            int i61 = c0228aE.f12653a;
                                            int i62 = c0228aE.f12654b;
                                            iIntValue = i61;
                                            str8 = c0228aE.f12655c;
                                            i22 = i62;
                                        } else {
                                            str8 = str5;
                                        }
                                        listV2 = v.v(bArr2);
                                    } else {
                                        str8 = str5;
                                    }
                                    c0005b = c0005bB2;
                                    str5 = str8;
                                }
                                i24 += i27;
                                i34 = i53;
                                iE5 = i52;
                                str11 = str7;
                                str16 = str16;
                            }
                            i27 = i29;
                            i24 += i27;
                            i34 = i53;
                            iE5 = i52;
                            str11 = str7;
                            str16 = str16;
                        }
                        i20 = i34;
                        i19 = iE5;
                        if (dVar3.f231b == null && str6 != null) {
                            aVar = new s0.a();
                            aVar.b(i10);
                            aVar.f11705k = str6;
                            aVar.f11702h = str5;
                            aVar.f11718x = i22;
                            aVar.f11719y = iIntValue;
                            aVar.f11720z = i23;
                            aVar.f11707m = listV2;
                            aVar.f11708n = dVarA2;
                            aVar.f11697c = str;
                            c0005b2 = c0005b;
                            if (c0005b2 != null) {
                                aVar.f11700f = w6.a.c(c0005b2.f228c);
                                aVar.f11701g = w6.a.c(c0005b2.f229d);
                            }
                            dVar3.f231b = aVar.a();
                        }
                        dVar2 = dVar3;
                        i13 = i20;
                        i14 = i19;
                    }
                    str17 = str4;
                }
                i21 = -1;
                i22 = iY2;
                c0005b = null;
                iIntValue = i51;
                str5 = null;
                i12 = i33;
                str6 = str17;
                i23 = i21;
                listV2 = null;
                i24 = i50;
                while (i24 - i34 < iE5) {
                    wVar.D(i24);
                    iE = wVar.e();
                    if (iE > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    int i510 = iE5;
                    s3.k.a(z11, str11);
                    iE2 = wVar.e();
                    int i511 = i34;
                    if (iE2 == 1835557187) {
                        int i512 = iE - 13;
                        byte[] bArr10 = new byte[i512];
                        str7 = str11;
                        wVar.D(i24 + 13);
                        wVar.d(bArr10, 0, i512);
                        str16 = str16;
                        listV2 = v.v(bArr10);
                        i29 = iE;
                    } else {
                        str7 = str11;
                        if (iE2 == 1702061171) {
                            if (!z10) {
                            }
                            if (iE2 == 1684103987) {
                                wVar.D(i24 + 8);
                                String string4 = Integer.toString(i10);
                                int i513 = p3.b.f12658b[(wVar.t() & 192) >> 6];
                                iT2 = wVar.t();
                                i32 = p3.b.f12660d[(iT2 & 56) >> 3];
                                if ((iT2 & 4) != 0) {
                                    i32++;
                                }
                                int i514 = i32;
                                i29 = iE;
                                s0.a aVar7 = new s0.a();
                                aVar7.f11695a = string4;
                                aVar7.f11705k = str16;
                                aVar7.f11718x = i514;
                                aVar7.f11719y = i513;
                                aVar7.f11708n = dVarA2;
                                aVar7.f11697c = str;
                                dVar3.f231b = aVar7.a();
                                str16 = str16;
                            } else {
                                i29 = iE;
                                if (iE2 == 1684366131) {
                                    wVar.D(i24 + 8);
                                    String string5 = Integer.toString(i10);
                                    wVar.E(2);
                                    int i515 = p3.b.f12658b[(wVar.t() & 192) >> 6];
                                    iT = wVar.t();
                                    i31 = p3.b.f12660d[(iT & 14) >> 1];
                                    if ((iT & 1) != 0) {
                                        i31++;
                                    }
                                    if (((wVar.t() & 30) >> 1) > 0) {
                                        i31 += 2;
                                    }
                                    str16 = str16;
                                    if (wVar.f10477c - wVar.f10476b > 0) {
                                        str9 = "audio/eac3";
                                    } else {
                                        str9 = "audio/eac3";
                                    }
                                    s0.a aVar8 = new s0.a();
                                    aVar8.f11695a = string5;
                                    aVar8.f11705k = str9;
                                    aVar8.f11718x = i31;
                                    aVar8.f11719y = i515;
                                    aVar8.f11708n = dVarA2;
                                    aVar8.f11697c = str;
                                    dVar3.f231b = aVar8.a();
                                } else {
                                    str16 = str16;
                                    if (iE2 == 1684103988) {
                                        wVar.D(i24 + 8);
                                        String string6 = Integer.toString(i10);
                                        wVar.E(1);
                                        if (((wVar.t() & 32) >> 5) == 1) {
                                            i30 = 48000;
                                        } else {
                                            i30 = 44100;
                                        }
                                        s0.a aVar9 = new s0.a();
                                        aVar9.f11695a = string6;
                                        aVar9.f11705k = "audio/ac4";
                                        aVar9.f11718x = 2;
                                        aVar9.f11719y = i30;
                                        aVar9.f11708n = dVarA2;
                                        aVar9.f11697c = str;
                                        dVar3.f231b = aVar9.a();
                                    } else if (iE2 == 1684892784) {
                                        if (i18 > 0) {
                                            throw i1.a("Invalid sample rate for Dolby TrueHD MLP stream: " + i18, null);
                                        }
                                        i22 = 2;
                                        iIntValue = i18;
                                    } else if (iE2 == 1684305011) {
                                        s0.a aVar10 = new s0.a();
                                        aVar10.b(i10);
                                        aVar10.f11705k = str6;
                                        aVar10.f11718x = i22;
                                        aVar10.f11719y = iIntValue;
                                        aVar10.f11708n = dVarA2;
                                        aVar10.f11697c = str;
                                        dVar3.f231b = aVar10.a();
                                    } else {
                                        if (iE2 == 1682927731) {
                                            int i516 = i29 - 8;
                                            byte[] bArr11 = f216a;
                                            byte[] bArrCopyOf2 = Arrays.copyOf(bArr11, bArr11.length + i516);
                                            wVar.D(i24 + 8);
                                            wVar.d(bArrCopyOf2, bArr11.length, i516);
                                            listV3 = p4.h.d(bArrCopyOf2);
                                        } else if (iE2 == 1684425825) {
                                            int i517 = i29 - 12;
                                            byte[] bArr12 = new byte[i517 + 4];
                                            bArr12[0] = 102;
                                            bArr12[1] = 76;
                                            bArr12[2] = 97;
                                            bArr12[3] = 67;
                                            wVar.D(i24 + 12);
                                            wVar.d(bArr12, 4, i517);
                                            listV3 = v.v(bArr12);
                                        } else if (iE2 == 1634492771) {
                                            int i63 = i29 - 12;
                                            byte[] bArr13 = new byte[i63];
                                            wVar.D(i24 + 12);
                                            wVar.d(bArr13, 0, i63);
                                            w wVar3 = new w(bArr13);
                                            wVar3.D(9);
                                            int iT6 = wVar3.t();
                                            wVar3.D(20);
                                            Pair pairCreate2 = Pair.create(Integer.valueOf(wVar3.w()), Integer.valueOf(iT6));
                                            iIntValue = ((Integer) pairCreate2.first).intValue();
                                            int iIntValue4 = ((Integer) pairCreate2.second).intValue();
                                            listV2 = v.v(bArr13);
                                            i22 = iIntValue4;
                                        }
                                        listV2 = listV3;
                                    }
                                }
                            }
                        } else {
                            z12 = false;
                            i25 = 1702061171;
                        }
                        if (iE2 == i25) {
                            i28 = -1;
                            i26 = i24;
                            i27 = iE;
                        } else {
                            i26 = wVar.f10476b;
                            if (i26 >= i24) {
                                z13 = true;
                            } else {
                                z13 = z12;
                            }
                            s3.k.a(z13, null);
                            while (true) {
                                i27 = iE;
                                if (i26 - i24 < i27) {
                                    i26 = -1;
                                    break;
                                }
                                wVar.D(i26);
                                iE3 = wVar.e();
                                if (iE3 > 0) {
                                    z12 = true;
                                }
                                String str19 = str7;
                                s3.k.a(z12, str19);
                                str7 = str19;
                                if (wVar.e() == 1702061171) {
                                    break;
                                    break;
                                }
                                i26 += iE3;
                                z12 = false;
                                iE = i27;
                            }
                            i28 = -1;
                        }
                        if (i26 != i28) {
                            C0005b c0005bB3 = b(wVar, i26);
                            str6 = c0005bB3.f226a;
                            bArr2 = c0005bB3.f227b;
                            if (bArr2 != null) {
                                if ("audio/mp4a-latm".equals(str6)) {
                                    p3.a.C0228a c0228aE2 = p3.a.e(bArr2);
                                    int i64 = c0228aE2.f12653a;
                                    int i65 = c0228aE2.f12654b;
                                    iIntValue = i64;
                                    str8 = c0228aE2.f12655c;
                                    i22 = i65;
                                } else {
                                    str8 = str5;
                                }
                                listV2 = v.v(bArr2);
                            } else {
                                str8 = str5;
                            }
                            c0005b = c0005bB3;
                            str5 = str8;
                        }
                        i24 += i27;
                        i34 = i511;
                        iE5 = i510;
                        str11 = str7;
                        str16 = str16;
                    }
                    i27 = i29;
                    i24 += i27;
                    i34 = i511;
                    iE5 = i510;
                    str11 = str7;
                    str16 = str16;
                }
                i20 = i34;
                i19 = iE5;
                if (dVar3.f231b == null) {
                    aVar = new s0.a();
                    aVar.b(i10);
                    aVar.f11705k = str6;
                    aVar.f11702h = str5;
                    aVar.f11718x = i22;
                    aVar.f11719y = iIntValue;
                    aVar.f11720z = i23;
                    aVar.f11707m = listV2;
                    aVar.f11708n = dVarA2;
                    aVar.f11697c = str;
                    c0005b2 = c0005b;
                    if (c0005b2 != null) {
                        aVar.f11700f = w6.a.c(c0005b2.f228c);
                        aVar.f11701g = w6.a.c(c0005b2.f229d);
                    }
                    dVar3.f231b = aVar.a();
                }
                dVar2 = dVar3;
                i13 = i20;
                i14 = i19;
            } else {
                if (iE6 == 1414810956 || iE6 == 1954034535 || iE6 == 2004251764 || iE6 == 1937010800 || iE6 == 1664495672) {
                    wVar.D(i34 + 8 + 8);
                    long j10 = Long.MAX_VALUE;
                    String str20 = "application/ttml+xml";
                    if (iE6 == 1414810956) {
                        vVarV = null;
                        str10 = str20;
                    } else if (iE6 == 1954034535) {
                        int i66 = (iE5 - 8) - 8;
                        byte[] bArr14 = new byte[i66];
                        wVar.d(bArr14, 0, i66);
                        vVarV = v.v(bArr14);
                        str10 = "application/x-quicktime-tx3g";
                    } else {
                        if (iE6 == 2004251764) {
                            str20 = "application/x-mp4-vtt";
                        } else if (iE6 == 1937010800) {
                            j10 = 0;
                        } else {
                            if (iE6 != 1664495672) {
                                throw new IllegalStateException();
                            }
                            dVar3.f233d = 1;
                            str20 = "application/x-mp4-cea-608";
                        }
                        vVarV = null;
                        str10 = str20;
                    }
                    s0.a aVar11 = new s0.a();
                    aVar11.b(i10);
                    aVar11.f11705k = str10;
                    aVar11.f11697c = str;
                    aVar11.f11709o = j10;
                    aVar11.f11707m = vVarV;
                    dVar3.f231b = aVar11.a();
                } else if (iE6 == 1835365492) {
                    wVar.D(i34 + 8 + 8);
                    if (iE6 == 1835365492) {
                        wVar.n();
                        String strN = wVar.n();
                        if (strN != null) {
                            s0.a aVar12 = new s0.a();
                            aVar12.b(i10);
                            aVar12.f11705k = strN;
                            dVar3.f231b = aVar12.a();
                        }
                    }
                } else if (iE6 == 1667329389) {
                    s0.a aVar13 = new s0.a();
                    aVar13.b(i10);
                    aVar13.f11705k = "application/x-camera-motion";
                    dVar3.f231b = aVar13.a();
                }
                iE4 = iE4;
                dVar2 = dVar3;
                i12 = i33;
                i13 = i34;
                i14 = iE5;
            }
            wVar.D(i13 + i14);
            i33 = i12 + 1;
            dVar3 = dVar2;
            iE4 = iE4;
        }
        return dVar3;
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0284  */
    /* JADX WARN: Code duplicated, block: B:121:0x0297  */
    /* JADX WARN: Code duplicated, block: B:125:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:127:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:128:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:130:0x0301  */
    /* JADX WARN: Code duplicated, block: B:133:0x030c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0324  */
    /* JADX WARN: Code duplicated, block: B:136:0x032d  */
    /* JADX WARN: Code duplicated, block: B:137:0x0339  */
    /* JADX WARN: Code duplicated, block: B:140:0x035d  */
    /* JADX WARN: Code duplicated, block: B:141:0x0360  */
    /* JADX WARN: Code duplicated, block: B:144:0x036a  */
    /* JADX WARN: Code duplicated, block: B:145:0x036d  */
    /* JADX WARN: Code duplicated, block: B:148:0x0388  */
    /* JADX WARN: Code duplicated, block: B:149:0x0390  */
    /* JADX WARN: Code duplicated, block: B:151:0x0393  */
    /* JADX WARN: Code duplicated, block: B:153:0x039c  */
    /* JADX WARN: Code duplicated, block: B:154:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:155:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:158:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:168:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:170:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:173:0x03e8 A[LOOP:1: B:171:0x03e2->B:173:0x03e8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:176:0x03fb A[LOOP:2: B:175:0x03f9->B:176:0x03fb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:179:0x0420  */
    /* JADX WARN: Code duplicated, block: B:181:0x0434 A[LOOP:4: B:180:0x0432->B:181:0x0434, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:184:0x0479  */
    /* JADX WARN: Code duplicated, block: B:187:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:189:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:191:0x04b4 A[LOOP:11: B:188:0x04ac->B:191:0x04b4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:195:0x04e9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:196:0x04eb A[ADDED_TO_REGION, LOOP:12: B:196:0x04eb->B:198:0x04ef, LOOP_START, PHI: r16 r30 r31
      0x04eb: PHI (r16v15 int) = (r16v7 int), (r16v16 int) binds: [B:195:0x04e9, B:198:0x04ef] A[DONT_GENERATE, DONT_INLINE]
      0x04eb: PHI (r30v4 int) = (r30v1 int), (r30v5 int) binds: [B:195:0x04e9, B:198:0x04ef] A[DONT_GENERATE, DONT_INLINE]
      0x04eb: PHI (r31v3 int) = (r31v1 int), (r31v5 int) binds: [B:195:0x04e9, B:198:0x04ef] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:197:0x04ed A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:202:0x050a  */
    /* JADX WARN: Code duplicated, block: B:205:0x0513  */
    /* JADX WARN: Code duplicated, block: B:206:0x0515  */
    /* JADX WARN: Code duplicated, block: B:209:0x051a  */
    /* JADX WARN: Code duplicated, block: B:211:0x0521  */
    /* JADX WARN: Code duplicated, block: B:214:0x0534 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:216:0x0541  */
    /* JADX WARN: Code duplicated, block: B:221:0x0566 A[DONT_INVERT, LOOP:13: B:221:0x0566->B:225:0x0570, LOOP_START, PHI: r16
      0x0566: PHI (r16v12 int) = (r16v7 int), (r16v13 int) binds: [B:220:0x0564, B:225:0x0570] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:222:0x0568  */
    /* JADX WARN: Code duplicated, block: B:225:0x0570 A[LOOP:13: B:221:0x0566->B:225:0x0570, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:226:0x0576 A[EDGE_INSN: B:226:0x0576->B:227:0x0577 BREAK  A[LOOP:13: B:221:0x0566->B:225:0x0570]] */
    /* JADX WARN: Code duplicated, block: B:228:0x0579 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:236:0x058d  */
    /* JADX WARN: Code duplicated, block: B:239:0x05bc  */
    /* JADX WARN: Code duplicated, block: B:240:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:245:0x05e1  */
    /* JADX WARN: Code duplicated, block: B:246:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:248:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:272:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:274:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:276:0x06be  */
    /* JADX WARN: Code duplicated, block: B:279:0x06c8 A[LOOP:5: B:277:0x06c5->B:279:0x06c8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:282:0x06fa  */
    /* JADX WARN: Code duplicated, block: B:285:0x0700  */
    /* JADX WARN: Code duplicated, block: B:286:0x0702  */
    /* JADX WARN: Code duplicated, block: B:290:0x0716  */
    /* JADX WARN: Code duplicated, block: B:292:0x0720  */
    /* JADX WARN: Code duplicated, block: B:295:0x0749  */
    /* JADX WARN: Code duplicated, block: B:301:0x0763  */
    /* JADX WARN: Code duplicated, block: B:303:0x076c  */
    /* JADX WARN: Code duplicated, block: B:308:0x0788  */
    /* JADX WARN: Code duplicated, block: B:311:0x078d  */
    /* JADX WARN: Code duplicated, block: B:312:0x0791  */
    /* JADX WARN: Code duplicated, block: B:314:0x0794  */
    /* JADX WARN: Code duplicated, block: B:315:0x0798  */
    /* JADX WARN: Code duplicated, block: B:317:0x079c  */
    /* JADX WARN: Code duplicated, block: B:319:0x07a0  */
    /* JADX WARN: Code duplicated, block: B:31:0x0084  */
    /* JADX WARN: Code duplicated, block: B:320:0x07a4  */
    /* JADX WARN: Code duplicated, block: B:324:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:326:0x07c0  */
    /* JADX WARN: Code duplicated, block: B:327:0x07d2  */
    /* JADX WARN: Code duplicated, block: B:329:0x07da  */
    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:331:0x080b  */
    /* JADX WARN: Code duplicated, block: B:345:0x0864 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:353:0x077c A[EDGE_INSN: B:353:0x077c->B:305:0x077c BREAK  A[LOOP:6: B:288:0x0711->B:304:0x0772], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:361:0x0812 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x04d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x0558 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:369:0x04c9 A[EDGE_INSN: B:369:0x04c9->B:192:0x04c9 BREAK  A[LOOP:11: B:188:0x04ac->B:191:0x04b4], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:372:0x0576 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:373:0x056e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:374:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:375:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c4 A[LOOP:14: B:40:0x00b7->B:44:0x00c4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:56:0x0108 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:60:0x0111 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x0113 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:65:0x011c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x011e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:70:0x0127  */
    /* JADX WARN: Code duplicated, block: B:73:0x0131  */
    /* JADX WARN: Code duplicated, block: B:74:0x0134  */
    /* JADX WARN: Code duplicated, block: B:77:0x0147  */
    /* JADX WARN: Code duplicated, block: B:78:0x014a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    /* JADX WARN: Code duplicated, block: B:82:0x015d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0197  */
    /* JADX WARN: Code duplicated, block: B:86:0x019a  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:90:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:93:0x01fc  */
    /* JADX WARN: Instruction removed from duplicated block: B:292:0x0720, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
    public static List<o> f(a4.a.C0004a c0004a, q qVar, long j10, r3.d dVar, boolean z10, boolean z11, t6.d<l, l> dVar2) throws i1 {
        int i10;
        int i11;
        String str;
        w wVar;
        int iE;
        int iE2;
        int i12;
        int i13;
        int i14;
        boolean z12;
        long jX;
        int iE3;
        long j11;
        int i15;
        long j12;
        w wVar2;
        int i16;
        long jU;
        long jR;
        int iE4;
        int i17;
        int i18;
        Pair pairCreate;
        d dVarE;
        long[] jArr;
        long[] jArr2;
        l lVar;
        int i19;
        a4.a.C0004a c0004aB;
        Pair pairCreate2;
        l lVarApply;
        a4.a.C0004a c0004aB2;
        a4.a.b bVarC;
        a4.a.b bVarC2;
        c fVar;
        int iB;
        a4.a.b bVarC3;
        boolean z13;
        a4.a.b bVarC4;
        w wVar3;
        a4.a.b bVarC5;
        w wVar4;
        a aVar;
        int iW;
        int iW2;
        int iW3;
        int iW4;
        int iW5;
        int iW6;
        int iA;
        int i20;
        boolean z14;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        long[] jArrCopyOf2;
        int[] iArrCopyOf2;
        int i21;
        long j13;
        long j14;
        int iW7;
        int iE5;
        int iW8;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        long j15;
        boolean z15;
        int i28;
        l lVar2;
        String str2;
        long[] jArr3;
        int[] iArr;
        long[] jArr4;
        int[] iArr2;
        int i29;
        boolean zA;
        int i30;
        int i31;
        int i32;
        int iW9;
        int iE6;
        long jR2;
        long[] jArr5;
        long[] jArr6;
        int i33;
        boolean z16;
        int[] iArr3;
        int[] iArr4;
        long[] jArr7;
        int i34;
        int i35;
        int i36;
        long[] jArr8;
        int[] iArr5;
        int i37;
        long[] jArr9;
        int[] iArr6;
        int[] iArr7;
        long[] jArr10;
        int i38;
        int i39;
        long j16;
        o oVar;
        long j17;
        int i40;
        int i41;
        int[] iArr8;
        long j18;
        long j19;
        o oVar2;
        int i42;
        long[] jArr11;
        int[] iArr9;
        long j20;
        int i43;
        int i44;
        int i45;
        long[] jArr12;
        long[] jArr13;
        int[] iArr10;
        int i46;
        int i47;
        int i48;
        long j21;
        int iMax;
        int i49;
        int i50;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        int i51 = 0;
        while (i51 < c0004a.f214d.size()) {
            a4.a.C0004a c0004a2 = (a4.a.C0004a) c0004a.f214d.get(i51);
            if (c0004a2.f211a != 1953653099) {
                arrayList = arrayList2;
                i20 = i51;
            } else {
                a4.a.b bVarC6 = c0004a.c(1836476516);
                Objects.requireNonNull(bVarC6);
                a4.a.C0004a c0004aB3 = c0004a2.b(1835297121);
                Objects.requireNonNull(c0004aB3);
                a4.a.b bVarC7 = c0004aB3.c(1751411826);
                Objects.requireNonNull(bVarC7);
                w wVar5 = bVarC7.f215b;
                wVar5.D(16);
                int iE7 = wVar5.e();
                if (iE7 == 1936684398) {
                    i10 = 1;
                } else if (iE7 == 1986618469) {
                    i10 = 2;
                } else if (iE7 == 1952807028 || iE7 == 1935832172 || iE7 == 1937072756 || iE7 == 1668047728) {
                    i10 = 3;
                } else {
                    if (iE7 == 1835365473) {
                        i10 = 5;
                    } else {
                        i11 = -1;
                    }
                    str = "";
                    if (i11 == -1) {
                        str = "";
                    } else {
                        a4.a.b bVarC8 = c0004a2.c(1953196132);
                        Objects.requireNonNull(bVarC8);
                        wVar = bVarC8.f215b;
                        wVar.D(8);
                        iE = (wVar.e() >> 24) & 255;
                        wVar.E(iE == 0 ? 8 : 16);
                        iE2 = wVar.e();
                        wVar.E(4);
                        i12 = wVar.f10476b;
                        if (iE == 0) {
                            i13 = 4;
                        } else {
                            i13 = 8;
                        }
                        i14 = 0;
                        while (true) {
                            if (i14 < i13) {
                                z12 = true;
                                break;
                            }
                            if (wVar.f10475a[i12 + i14] != -1) {
                                z12 = false;
                                break;
                            }
                            i14++;
                        }
                        if (z12) {
                            wVar.E(i13);
                        } else {
                            if (iE == 0) {
                                jX = wVar.u();
                            } else {
                                jX = wVar.x();
                            }
                            if (jX == 0) {
                            }
                            wVar.E(16);
                            iE3 = wVar.e();
                            int iE8 = wVar.e();
                            wVar.E(4);
                            int iE9 = wVar.e();
                            int iE10 = wVar.e();
                            j11 = jX;
                            if (iE3 != 0 && iE8 == 65536 && iE9 == -65536 && iE10 == 0) {
                                i15 = 90;
                            } else if (iE3 != 0 && iE8 == -65536 && iE9 == 65536 && iE10 == 0) {
                                i15 = 270;
                            } else if (iE3 != -65536 && iE8 == 0 && iE9 == 0 && iE10 == -65536) {
                                i15 = 180;
                            } else {
                                i15 = 0;
                            }
                            if (j10 == -9223372036854775807L) {
                                j12 = j11;
                            } else {
                                j12 = j10;
                            }
                            wVar2 = bVarC6.f215b;
                            wVar2.D(8);
                            if (((wVar2.e() >> 24) & 255) == 0) {
                                i16 = 8;
                            } else {
                                i16 = 16;
                            }
                            wVar2.E(i16);
                            jU = wVar2.u();
                            jR = j12 != -9223372036854775807L ? g0.R(j12, 1000000L, jU) : -9223372036854775807L;
                            a4.a.C0004a c0004aB4 = c0004aB3.b(1835626086);
                            Objects.requireNonNull(c0004aB4);
                            a4.a.C0004a c0004aB5 = c0004aB4.b(1937007212);
                            Objects.requireNonNull(c0004aB5);
                            a4.a.b bVarC9 = c0004aB3.c(1835296868);
                            Objects.requireNonNull(bVarC9);
                            w wVar6 = bVarC9.f215b;
                            wVar6.D(8);
                            iE4 = (wVar6.e() >> 24) & 255;
                            if (iE4 == 0) {
                                i17 = 8;
                            } else {
                                i17 = 16;
                            }
                            wVar6.E(i17);
                            long jU2 = wVar6.u();
                            if (iE4 == 0) {
                                i18 = 4;
                            } else {
                                i18 = 8;
                            }
                            wVar6.E(i18);
                            int iY = wVar6.y();
                            StringBuilder sbC = a0.b.c("");
                            sbC.append((char) (((iY >> 10) & 31) + 96));
                            sbC.append((char) (((iY >> 5) & 31) + 96));
                            sbC.append((char) ((iY & 31) + 96));
                            pairCreate = Pair.create(Long.valueOf(jU2), sbC.toString());
                            a4.a.b bVarC10 = c0004aB5.c(1937011556);
                            Objects.requireNonNull(bVarC10);
                            dVarE = e(bVarC10.f215b, iE2, i15, (String) pairCreate.second, dVar, z11);
                            if (!z10 || (c0004aB = c0004a2.b(1701082227)) == null) {
                                str = "";
                            } else {
                                a4.a.b bVarC11 = c0004aB.c(1701606260);
                                if (bVarC11 == null) {
                                    pairCreate2 = null;
                                } else {
                                    w wVar7 = bVarC11.f215b;
                                    wVar7.D(8);
                                    int iE11 = (wVar7.e() >> 24) & 255;
                                    int iW10 = wVar7.w();
                                    long[] jArr14 = new long[iW10];
                                    long[] jArr15 = new long[iW10];
                                    int i52 = 0;
                                    while (i52 < iW10) {
                                        int i53 = iW10;
                                        jArr14[i52] = iE11 == 1 ? wVar7.x() : wVar7.u();
                                        jArr15[i52] = iE11 == 1 ? wVar7.m() : wVar7.e();
                                        if (wVar7.p() != 1) {
                                            throw new IllegalArgumentException("Unsupported media rate.");
                                        }
                                        wVar7.E(2);
                                        i52++;
                                        iW10 = i53;
                                        iE11 = iE11;
                                    }
                                    pairCreate2 = Pair.create(jArr14, jArr15);
                                }
                                if (pairCreate2 != null) {
                                    long[] jArr16 = (long[]) pairCreate2.first;
                                    jArr2 = (long[]) pairCreate2.second;
                                    jArr = jArr16;
                                }
                                if (dVarE.f231b != null) {
                                    lVar = new l(iE2, i11, ((Long) pairCreate.first).longValue(), jU, jR, dVarE.f231b, dVarE.f233d, dVarE.f230a, dVarE.f232c, jArr, jArr2);
                                    i19 = 1835626086;
                                }
                                lVarApply = dVar2.apply(lVar);
                                if (lVarApply == null) {
                                    arrayList = arrayList2;
                                    i20 = i51;
                                } else {
                                    a4.a.C0004a c0004aB6 = c0004a2.b(1835297121);
                                    Objects.requireNonNull(c0004aB6);
                                    a4.a.C0004a c0004aB7 = c0004aB6.b(i19);
                                    Objects.requireNonNull(c0004aB7);
                                    c0004aB2 = c0004aB7.b(1937007212);
                                    Objects.requireNonNull(c0004aB2);
                                    bVarC = c0004aB2.c(1937011578);
                                    if (bVarC != null) {
                                        fVar = new e(bVarC, lVarApply.f337f);
                                    } else {
                                        bVarC2 = c0004aB2.c(1937013298);
                                        if (bVarC2 == null) {
                                            throw i1.a("Track has no sample table size information", null);
                                        }
                                        fVar = new f(bVarC2);
                                    }
                                    iB = fVar.b();
                                    if (iB == 0) {
                                        oVar = new o(lVarApply, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                                        arrayList2 = arrayList2;
                                        i20 = i51;
                                    } else {
                                        bVarC3 = c0004aB2.c(1937007471);
                                        if (bVarC3 == null) {
                                            bVarC3 = c0004aB2.c(1668232756);
                                            Objects.requireNonNull(bVarC3);
                                            z13 = true;
                                        } else {
                                            z13 = false;
                                        }
                                        w wVar8 = bVarC3.f215b;
                                        a4.a.b bVarC12 = c0004aB2.c(1937011555);
                                        Objects.requireNonNull(bVarC12);
                                        w wVar9 = bVarC12.f215b;
                                        a4.a.b bVarC13 = c0004aB2.c(1937011827);
                                        Objects.requireNonNull(bVarC13);
                                        w wVar10 = bVarC13.f215b;
                                        bVarC4 = c0004aB2.c(1937011571);
                                        if (bVarC4 != null) {
                                            wVar3 = bVarC4.f215b;
                                        } else {
                                            wVar3 = null;
                                        }
                                        bVarC5 = c0004aB2.c(1668576371);
                                        if (bVarC5 != null) {
                                            wVar4 = bVarC5.f215b;
                                        } else {
                                            wVar4 = null;
                                        }
                                        aVar = new a(wVar9, wVar8, z13);
                                        wVar10.D(12);
                                        iW = wVar10.w() - 1;
                                        iW2 = wVar10.w();
                                        iW3 = wVar10.w();
                                        if (wVar4 != null) {
                                            wVar4.D(12);
                                            iW4 = wVar4.w();
                                        } else {
                                            iW4 = 0;
                                        }
                                        if (wVar3 != null) {
                                            wVar3.D(12);
                                            iW6 = wVar3.w();
                                            if (iW6 > 0) {
                                                iW5 = wVar3.w() - 1;
                                            } else {
                                                iW5 = -1;
                                                wVar3 = null;
                                            }
                                        } else {
                                            iW5 = -1;
                                            iW6 = 0;
                                        }
                                        iA = fVar.a();
                                        String str3 = lVarApply.f337f.f11687s;
                                        i20 = i51;
                                        if (iA == -1 && (("audio/raw".equals(str3) || "audio/g711-mlaw".equals(str3) || "audio/g711-alaw".equals(str3)) && iW == 0 && iW4 == 0 && iW6 == 0)) {
                                            z14 = true;
                                        } else {
                                            z14 = false;
                                        }
                                        if (z14) {
                                            i42 = aVar.f217a;
                                            jArr11 = new long[i42];
                                            iArr9 = new int[i42];
                                            while (aVar.a()) {
                                                int i54 = aVar.f218b;
                                                jArr11[i54] = aVar.f220d;
                                                iArr9[i54] = aVar.f219c;
                                            }
                                            j20 = iW3;
                                            i43 = 8192 / iA;
                                            i45 = 0;
                                            for (i44 = 0; i44 < i42; i44++) {
                                                int i55 = iArr9[i44];
                                                int i56 = g0.f10384a;
                                                i45 += ((i55 + i43) - 1) / i43;
                                            }
                                            jArr12 = new long[i45];
                                            iArr2 = new int[i45];
                                            jArr13 = new long[i45];
                                            iArr10 = new int[i45];
                                            i46 = 0;
                                            i47 = 0;
                                            i48 = 0;
                                            i29 = 0;
                                            while (i46 < i42) {
                                                int i57 = iArr9[i46];
                                                j21 = jArr11[i46];
                                                int i58 = i47;
                                                int i59 = i42;
                                                iMax = i29;
                                                i49 = i58;
                                                long[] jArr17 = jArr11;
                                                i50 = i57;
                                                while (i50 > 0) {
                                                    int iMin = Math.min(i43, i50);
                                                    jArr12[i49] = j21;
                                                    iArr2[i49] = iA * iMin;
                                                    iMax = Math.max(iMax, iArr2[i49]);
                                                    jArr13[i49] = ((long) i48) * j20;
                                                    iArr10[i49] = 1;
                                                    j21 += (long) iArr2[i49];
                                                    i48 += iMin;
                                                    i50 -= iMin;
                                                    i49++;
                                                    iArr9 = iArr9;
                                                    iA = iA;
                                                }
                                                i46++;
                                                jArr11 = jArr17;
                                                int i60 = i49;
                                                i29 = iMax;
                                                i42 = i59;
                                                i47 = i60;
                                            }
                                            long j22 = j20 * ((long) i48);
                                            jArr4 = jArr12;
                                            iArr = iArr10;
                                            jArr3 = jArr13;
                                            lVar2 = lVarApply;
                                            j15 = j22;
                                        } else {
                                            jArrCopyOf = new long[iB];
                                            iArrCopyOf = new int[iB];
                                            jArrCopyOf2 = new long[iB];
                                            iArrCopyOf2 = new int[iB];
                                            i21 = 0;
                                            j13 = 0;
                                            j14 = 0;
                                            iW7 = iW5;
                                            iE5 = 0;
                                            iW8 = 0;
                                            int i61 = iW;
                                            i22 = iW4;
                                            i23 = iW3;
                                            i24 = iW2;
                                            i25 = 0;
                                            i26 = 0;
                                            while (true) {
                                                if (i26 >= iB) {
                                                    i27 = i24;
                                                    break;
                                                }
                                                zA = true;
                                                while (i21 == 0) {
                                                    zA = aVar.a();
                                                    if (!zA) {
                                                        break;
                                                    }
                                                    int i62 = i24;
                                                    long j23 = aVar.f220d;
                                                    i21 = aVar.f219c;
                                                    j14 = j23;
                                                    i24 = i62;
                                                    i23 = i23;
                                                    iB = iB;
                                                }
                                                i30 = iB;
                                                i27 = i24;
                                                i31 = i23;
                                                if (!zA) {
                                                    p.g("AtomParsers", "Unexpected end of chunk data");
                                                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i26);
                                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i26);
                                                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i26);
                                                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i26);
                                                    iB = i26;
                                                    break;
                                                }
                                                if (wVar4 != null) {
                                                    while (iW8 == 0 && i22 > 0) {
                                                        iW8 = wVar4.w();
                                                        iE5 = wVar4.e();
                                                        i22--;
                                                    }
                                                    iW8--;
                                                }
                                                int i63 = iE5;
                                                jArrCopyOf[i26] = j14;
                                                iArrCopyOf[i26] = fVar.c();
                                                if (iArrCopyOf[i26] > i25) {
                                                    i25 = iArrCopyOf[i26];
                                                }
                                                jArrCopyOf2[i26] = j13 + ((long) i63);
                                                if (wVar3 == null) {
                                                    i32 = 1;
                                                } else {
                                                    i32 = 0;
                                                }
                                                iArrCopyOf2[i26] = i32;
                                                if (i26 == iW7) {
                                                    iArrCopyOf2[i26] = 1;
                                                    iW6--;
                                                    if (iW6 > 0) {
                                                        Objects.requireNonNull(wVar3);
                                                        iW7 = wVar3.w() - 1;
                                                    }
                                                }
                                                int i64 = iW7;
                                                long[] jArr18 = jArrCopyOf;
                                                j13 += (long) i31;
                                                iW9 = i27 - 1;
                                                if (iW9 == 0 || i61 <= 0) {
                                                    iE6 = i31;
                                                } else {
                                                    iW9 = wVar10.w();
                                                    iE6 = wVar10.e();
                                                    i61--;
                                                }
                                                i24 = iW9;
                                                int i65 = iE6;
                                                j14 += (long) iArrCopyOf[i26];
                                                i21--;
                                                i26++;
                                                iE5 = i63;
                                                iW7 = i64;
                                                jArrCopyOf = jArr18;
                                                i23 = i65;
                                                iB = i30;
                                            }
                                            int i66 = i21;
                                            j15 = j13 + ((long) iE5);
                                            if (wVar4 == null) {
                                                z15 = true;
                                                break;
                                            }
                                            while (true) {
                                                if (i22 <= 0) {
                                                    z15 = true;
                                                    break;
                                                }
                                                if (wVar4.w() != 0) {
                                                    z15 = false;
                                                    break;
                                                }
                                                wVar4.e();
                                                i22--;
                                            }
                                            if (iW6 != 0 && i27 == 0 && i66 == 0 && i61 == 0) {
                                                i28 = iW8;
                                                if (i28 == 0 && z15) {
                                                    lVar2 = lVarApply;
                                                }
                                                jArr3 = jArrCopyOf2;
                                                iArr = iArrCopyOf2;
                                                jArr4 = jArrCopyOf;
                                                iArr2 = iArrCopyOf;
                                                i29 = i25;
                                            } else {
                                                i28 = iW8;
                                            }
                                            StringBuilder sbC2 = a0.b.c("Inconsistent stbl box for track ");
                                            lVar2 = lVarApply;
                                            a1.d.e(sbC2, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                            a1.d.e(sbC2, i27, ", remainingSamplesInChunk ", i66, ", remainingTimestampDeltaChanges ");
                                            sbC2.append(i61);
                                            sbC2.append(", remainingSamplesAtTimestampOffset ");
                                            sbC2.append(i28);
                                            if (z15) {
                                                str2 = str;
                                            } else {
                                                str2 = ", ctts invalid";
                                            }
                                            sbC2.append(str2);
                                            p.g("AtomParsers", sbC2.toString());
                                            jArr3 = jArrCopyOf2;
                                            iArr = iArrCopyOf2;
                                            jArr4 = jArrCopyOf;
                                            iArr2 = iArrCopyOf;
                                            i29 = i25;
                                        }
                                        jR2 = g0.R(j15, 1000000L, lVar2.f334c);
                                        jArr5 = lVar2.f339h;
                                        if (jArr5 == null) {
                                            g0.S(jArr3, lVar2.f334c);
                                            oVar = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, jR2);
                                        } else if (jArr5.length == 1 || lVar2.f333b != 1 || jArr3.length < 2) {
                                            jArr6 = lVar2.f339h;
                                            if (jArr6.length == 1) {
                                                i33 = 0;
                                                if (jArr6[0] == 0) {
                                                    long[] jArr19 = lVar2.f340i;
                                                    Objects.requireNonNull(jArr19);
                                                    j19 = jArr19[0];
                                                    while (i33 < jArr3.length) {
                                                        jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                        i33++;
                                                    }
                                                    oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                                    oVar = oVar2;
                                                }
                                            } else {
                                                i33 = 0;
                                            }
                                            if (lVar2.f333b == 1) {
                                                z16 = 1;
                                            } else {
                                                z16 = i33;
                                            }
                                            iArr3 = new int[jArr6.length];
                                            iArr4 = new int[jArr6.length];
                                            jArr7 = lVar2.f340i;
                                            Objects.requireNonNull(jArr7);
                                            i34 = i33;
                                            i35 = i34;
                                            i36 = i35;
                                            while (true) {
                                                jArr8 = lVar2.f339h;
                                                if (i33 >= jArr8.length) {
                                                    break;
                                                }
                                                int i67 = iB;
                                                j18 = jArr7[i33];
                                                if (j18 != -1) {
                                                    int i68 = i34;
                                                    int i69 = i36;
                                                    long jR3 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                                    iArr3[i33] = g0.f(jArr3, j18, true);
                                                    iArr4[i33] = g0.b(jArr3, j18 + jR3, z16);
                                                    while (iArr3[i33] < iArr4[i33] && (iArr[iArr3[i33]] & 1) == 0) {
                                                        iArr3[i33] = iArr3[i33] + 1;
                                                    }
                                                    i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                                    i34 = (i69 == iArr3[i33] ? 0 : 1) | i68;
                                                    i36 = iArr4[i33];
                                                }
                                                i33++;
                                                jArr7 = jArr7;
                                                iB = i67;
                                                iArr2 = iArr2;
                                            }
                                            iArr5 = iArr2;
                                            i37 = i34 | (i35 == iB ? 0 : 1);
                                            if (i37 != 0) {
                                                jArr9 = new long[i35];
                                            } else {
                                                jArr9 = jArr4;
                                            }
                                            if (i37 != 0) {
                                                iArr6 = new int[i35];
                                            } else {
                                                iArr6 = iArr5;
                                            }
                                            if (i37 != 0) {
                                                i29 = 0;
                                            }
                                            if (i37 != 0) {
                                                iArr7 = new int[i35];
                                            } else {
                                                iArr7 = iArr;
                                            }
                                            jArr10 = new long[i35];
                                            i38 = 0;
                                            i39 = 0;
                                            int i70 = i29;
                                            j16 = 0;
                                            while (i38 < lVar2.f339h.length) {
                                                j17 = lVar2.f340i[i38];
                                                i40 = iArr3[i38];
                                                int[] iArr11 = iArr3;
                                                i41 = iArr4[i38];
                                                if (i37 != 0) {
                                                    int i71 = i41 - i40;
                                                    System.arraycopy(jArr4, i40, jArr9, i39, i71);
                                                    iArr8 = iArr5;
                                                    System.arraycopy(iArr8, i40, iArr6, i39, i71);
                                                    System.arraycopy(iArr, i40, iArr7, i39, i71);
                                                } else {
                                                    iArr8 = iArr5;
                                                }
                                                while (i40 < i41) {
                                                    int[] iArr12 = iArr;
                                                    int i72 = i41;
                                                    long[] jArr20 = jArr9;
                                                    int[] iArr13 = iArr8;
                                                    long[] jArr21 = jArr3;
                                                    jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                                    if (i37 == 0 && iArr6[i39] > i70) {
                                                        i70 = iArr13[i40];
                                                    }
                                                    i39++;
                                                    i40++;
                                                    jArr3 = jArr21;
                                                    iArr8 = iArr13;
                                                    i41 = i72;
                                                    iArr = iArr12;
                                                    jArr9 = jArr20;
                                                }
                                                int[] iArr14 = iArr8;
                                                j16 += lVar2.f339h[i38];
                                                i38++;
                                                iArr3 = iArr11;
                                                jArr3 = jArr3;
                                                iArr4 = iArr4;
                                                iArr = iArr;
                                                jArr4 = jArr4;
                                                iArr5 = iArr14;
                                            }
                                            oVar = new o(lVar2, jArr9, iArr6, i70, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                        } else {
                                            long[] jArr22 = lVar2.f340i;
                                            Objects.requireNonNull(jArr22);
                                            long j24 = jArr22[0];
                                            long jR4 = g0.R(lVar2.f339h[0], lVar2.f334c, lVar2.f335d) + j24;
                                            int length = jArr3.length - 1;
                                            if (jArr3[0] <= j24 && j24 < jArr3[g0.i(4, 0, length)] && jArr3[g0.i(jArr3.length - 4, 0, length)] < jR4 && jR4 <= j15) {
                                                long j25 = j15 - jR4;
                                                long jR5 = g0.R(j24 - jArr3[0], lVar2.f337f.G, lVar2.f334c);
                                                long jR6 = g0.R(j25, lVar2.f337f.G, lVar2.f334c);
                                                if (!(jR5 == 0 && jR6 == 0) && jR5 <= 2147483647L && jR6 <= 2147483647L) {
                                                    qVar.f15069a = (int) jR5;
                                                    qVar.f15070b = (int) jR6;
                                                    g0.S(jArr3, lVar2.f334c);
                                                    oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(lVar2.f339h[0], 1000000L, lVar2.f335d));
                                                } else {
                                                    jArr6 = lVar2.f339h;
                                                    if (jArr6.length == 1) {
                                                        i33 = 0;
                                                        if (jArr6[0] == 0) {
                                                            long[] jArr110 = lVar2.f340i;
                                                            Objects.requireNonNull(jArr110);
                                                            j19 = jArr110[0];
                                                            while (i33 < jArr3.length) {
                                                                jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                                i33++;
                                                            }
                                                            oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                                        }
                                                    } else {
                                                        i33 = 0;
                                                    }
                                                    if (lVar2.f333b == 1) {
                                                        z16 = 1;
                                                    } else {
                                                        z16 = i33;
                                                    }
                                                    iArr3 = new int[jArr6.length];
                                                    iArr4 = new int[jArr6.length];
                                                    jArr7 = lVar2.f340i;
                                                    Objects.requireNonNull(jArr7);
                                                    i34 = i33;
                                                    i35 = i34;
                                                    i36 = i35;
                                                    while (true) {
                                                        jArr8 = lVar2.f339h;
                                                        if (i33 >= jArr8.length) {
                                                            break;
                                                            break;
                                                        }
                                                        int i610 = iB;
                                                        j18 = jArr7[i33];
                                                        if (j18 != -1) {
                                                            int i611 = i34;
                                                            int i612 = i36;
                                                            long jR7 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                                            iArr3[i33] = g0.f(jArr3, j18, true);
                                                            iArr4[i33] = g0.b(jArr3, j18 + jR7, z16);
                                                            while (iArr3[i33] < iArr4[i33]) {
                                                                iArr3[i33] = iArr3[i33] + 1;
                                                            }
                                                            i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                                            i34 = (i612 == iArr3[i33] ? 0 : 1) | i611;
                                                            i36 = iArr4[i33];
                                                        }
                                                        i33++;
                                                        jArr7 = jArr7;
                                                        iB = i610;
                                                        iArr2 = iArr2;
                                                    }
                                                    iArr5 = iArr2;
                                                    i37 = i34 | (i35 == iB ? 0 : 1);
                                                    if (i37 != 0) {
                                                        jArr9 = new long[i35];
                                                    } else {
                                                        jArr9 = jArr4;
                                                    }
                                                    if (i37 != 0) {
                                                        iArr6 = new int[i35];
                                                    } else {
                                                        iArr6 = iArr5;
                                                    }
                                                    if (i37 != 0) {
                                                        i29 = 0;
                                                    }
                                                    if (i37 != 0) {
                                                        iArr7 = new int[i35];
                                                    } else {
                                                        iArr7 = iArr;
                                                    }
                                                    jArr10 = new long[i35];
                                                    i38 = 0;
                                                    i39 = 0;
                                                    int i73 = i29;
                                                    j16 = 0;
                                                    while (i38 < lVar2.f339h.length) {
                                                        j17 = lVar2.f340i[i38];
                                                        i40 = iArr3[i38];
                                                        int[] iArr15 = iArr3;
                                                        i41 = iArr4[i38];
                                                        if (i37 != 0) {
                                                            int i74 = i41 - i40;
                                                            System.arraycopy(jArr4, i40, jArr9, i39, i74);
                                                            iArr8 = iArr5;
                                                            System.arraycopy(iArr8, i40, iArr6, i39, i74);
                                                            System.arraycopy(iArr, i40, iArr7, i39, i74);
                                                        } else {
                                                            iArr8 = iArr5;
                                                        }
                                                        while (i40 < i41) {
                                                            int[] iArr16 = iArr;
                                                            int i75 = i41;
                                                            long[] jArr23 = jArr9;
                                                            int[] iArr17 = iArr8;
                                                            long[] jArr24 = jArr3;
                                                            jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                                            if (i37 == 0) {
                                                            }
                                                            i39++;
                                                            i40++;
                                                            jArr3 = jArr24;
                                                            iArr8 = iArr17;
                                                            i41 = i75;
                                                            iArr = iArr16;
                                                            jArr9 = jArr23;
                                                        }
                                                        int[] iArr18 = iArr8;
                                                        j16 += lVar2.f339h[i38];
                                                        i38++;
                                                        iArr3 = iArr15;
                                                        jArr3 = jArr3;
                                                        iArr4 = iArr4;
                                                        iArr = iArr;
                                                        jArr4 = jArr4;
                                                        iArr5 = iArr18;
                                                    }
                                                    oVar = new o(lVar2, jArr9, iArr6, i73, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                                }
                                                oVar = oVar2;
                                            } else {
                                                jArr6 = lVar2.f339h;
                                                if (jArr6.length == 1) {
                                                    i33 = 0;
                                                    if (jArr6[0] == 0) {
                                                        long[] jArr111 = lVar2.f340i;
                                                        Objects.requireNonNull(jArr111);
                                                        j19 = jArr111[0];
                                                        while (i33 < jArr3.length) {
                                                            jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                            i33++;
                                                        }
                                                        oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                                        oVar = oVar2;
                                                    }
                                                } else {
                                                    i33 = 0;
                                                }
                                                if (lVar2.f333b == 1) {
                                                    z16 = 1;
                                                } else {
                                                    z16 = i33;
                                                }
                                                iArr3 = new int[jArr6.length];
                                                iArr4 = new int[jArr6.length];
                                                jArr7 = lVar2.f340i;
                                                Objects.requireNonNull(jArr7);
                                                i34 = i33;
                                                i35 = i34;
                                                i36 = i35;
                                                while (true) {
                                                    jArr8 = lVar2.f339h;
                                                    if (i33 >= jArr8.length) {
                                                        break;
                                                        break;
                                                    }
                                                    int i613 = iB;
                                                    j18 = jArr7[i33];
                                                    if (j18 != -1) {
                                                        int i614 = i34;
                                                        int i615 = i36;
                                                        long jR8 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                                        iArr3[i33] = g0.f(jArr3, j18, true);
                                                        iArr4[i33] = g0.b(jArr3, j18 + jR8, z16);
                                                        while (iArr3[i33] < iArr4[i33]) {
                                                            iArr3[i33] = iArr3[i33] + 1;
                                                        }
                                                        i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                                        i34 = (i615 == iArr3[i33] ? 0 : 1) | i614;
                                                        i36 = iArr4[i33];
                                                    }
                                                    i33++;
                                                    jArr7 = jArr7;
                                                    iB = i613;
                                                    iArr2 = iArr2;
                                                }
                                                iArr5 = iArr2;
                                                i37 = i34 | (i35 == iB ? 0 : 1);
                                                if (i37 != 0) {
                                                    jArr9 = new long[i35];
                                                } else {
                                                    jArr9 = jArr4;
                                                }
                                                if (i37 != 0) {
                                                    iArr6 = new int[i35];
                                                } else {
                                                    iArr6 = iArr5;
                                                }
                                                if (i37 != 0) {
                                                    i29 = 0;
                                                }
                                                if (i37 != 0) {
                                                    iArr7 = new int[i35];
                                                } else {
                                                    iArr7 = iArr;
                                                }
                                                jArr10 = new long[i35];
                                                i38 = 0;
                                                i39 = 0;
                                                int i76 = i29;
                                                j16 = 0;
                                                while (i38 < lVar2.f339h.length) {
                                                    j17 = lVar2.f340i[i38];
                                                    i40 = iArr3[i38];
                                                    int[] iArr19 = iArr3;
                                                    i41 = iArr4[i38];
                                                    if (i37 != 0) {
                                                        int i77 = i41 - i40;
                                                        System.arraycopy(jArr4, i40, jArr9, i39, i77);
                                                        iArr8 = iArr5;
                                                        System.arraycopy(iArr8, i40, iArr6, i39, i77);
                                                        System.arraycopy(iArr, i40, iArr7, i39, i77);
                                                    } else {
                                                        iArr8 = iArr5;
                                                    }
                                                    while (i40 < i41) {
                                                        int[] iArr110 = iArr;
                                                        int i78 = i41;
                                                        long[] jArr25 = jArr9;
                                                        int[] iArr111 = iArr8;
                                                        long[] jArr26 = jArr3;
                                                        jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                                        if (i37 == 0) {
                                                        }
                                                        i39++;
                                                        i40++;
                                                        jArr3 = jArr26;
                                                        iArr8 = iArr111;
                                                        i41 = i78;
                                                        iArr = iArr110;
                                                        jArr9 = jArr25;
                                                    }
                                                    int[] iArr112 = iArr8;
                                                    j16 += lVar2.f339h[i38];
                                                    i38++;
                                                    iArr3 = iArr19;
                                                    jArr3 = jArr3;
                                                    iArr4 = iArr4;
                                                    iArr = iArr;
                                                    jArr4 = jArr4;
                                                    iArr5 = iArr112;
                                                }
                                                oVar = new o(lVar2, jArr9, iArr6, i76, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                            }
                                        }
                                    }
                                    arrayList = arrayList2;
                                    arrayList.add(oVar);
                                }
                            }
                            jArr = null;
                            jArr2 = null;
                            if (dVarE.f231b != null) {
                                lVar = new l(iE2, i11, ((Long) pairCreate.first).longValue(), jU, jR, dVarE.f231b, dVarE.f233d, dVarE.f230a, dVarE.f232c, jArr, jArr2);
                                i19 = 1835626086;
                            }
                            lVarApply = dVar2.apply(lVar);
                            if (lVarApply == null) {
                                arrayList = arrayList2;
                                i20 = i51;
                            } else {
                                a4.a.C0004a c0004aB8 = c0004a2.b(1835297121);
                                Objects.requireNonNull(c0004aB8);
                                a4.a.C0004a c0004aB9 = c0004aB8.b(i19);
                                Objects.requireNonNull(c0004aB9);
                                c0004aB2 = c0004aB9.b(1937007212);
                                Objects.requireNonNull(c0004aB2);
                                bVarC = c0004aB2.c(1937011578);
                                if (bVarC != null) {
                                    fVar = new e(bVarC, lVarApply.f337f);
                                } else {
                                    bVarC2 = c0004aB2.c(1937013298);
                                    if (bVarC2 == null) {
                                        throw i1.a("Track has no sample table size information", null);
                                    }
                                    fVar = new f(bVarC2);
                                }
                                iB = fVar.b();
                                if (iB == 0) {
                                    oVar = new o(lVarApply, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                                    arrayList2 = arrayList2;
                                    i20 = i51;
                                } else {
                                    bVarC3 = c0004aB2.c(1937007471);
                                    if (bVarC3 == null) {
                                        bVarC3 = c0004aB2.c(1668232756);
                                        Objects.requireNonNull(bVarC3);
                                        z13 = true;
                                    } else {
                                        z13 = false;
                                    }
                                    w wVar11 = bVarC3.f215b;
                                    a4.a.b bVarC14 = c0004aB2.c(1937011555);
                                    Objects.requireNonNull(bVarC14);
                                    w wVar12 = bVarC14.f215b;
                                    a4.a.b bVarC15 = c0004aB2.c(1937011827);
                                    Objects.requireNonNull(bVarC15);
                                    w wVar13 = bVarC15.f215b;
                                    bVarC4 = c0004aB2.c(1937011571);
                                    if (bVarC4 != null) {
                                        wVar3 = bVarC4.f215b;
                                    } else {
                                        wVar3 = null;
                                    }
                                    bVarC5 = c0004aB2.c(1668576371);
                                    if (bVarC5 != null) {
                                        wVar4 = bVarC5.f215b;
                                    } else {
                                        wVar4 = null;
                                    }
                                    aVar = new a(wVar12, wVar11, z13);
                                    wVar13.D(12);
                                    iW = wVar13.w() - 1;
                                    iW2 = wVar13.w();
                                    iW3 = wVar13.w();
                                    if (wVar4 != null) {
                                        wVar4.D(12);
                                        iW4 = wVar4.w();
                                    } else {
                                        iW4 = 0;
                                    }
                                    if (wVar3 != null) {
                                        wVar3.D(12);
                                        iW6 = wVar3.w();
                                        if (iW6 > 0) {
                                            iW5 = wVar3.w() - 1;
                                        } else {
                                            iW5 = -1;
                                            wVar3 = null;
                                        }
                                    } else {
                                        iW5 = -1;
                                        iW6 = 0;
                                    }
                                    iA = fVar.a();
                                    String str4 = lVarApply.f337f.f11687s;
                                    i20 = i51;
                                    if (iA == -1) {
                                        z14 = false;
                                    } else {
                                        z14 = false;
                                    }
                                    if (z14) {
                                        i42 = aVar.f217a;
                                        jArr11 = new long[i42];
                                        iArr9 = new int[i42];
                                        while (aVar.a()) {
                                            int i510 = aVar.f218b;
                                            jArr11[i510] = aVar.f220d;
                                            iArr9[i510] = aVar.f219c;
                                        }
                                        j20 = iW3;
                                        i43 = 8192 / iA;
                                        i45 = 0;
                                        while (i44 < i42) {
                                            int i511 = iArr9[i44];
                                            int i512 = g0.f10384a;
                                            i45 += ((i511 + i43) - 1) / i43;
                                        }
                                        jArr12 = new long[i45];
                                        iArr2 = new int[i45];
                                        jArr13 = new long[i45];
                                        iArr10 = new int[i45];
                                        i46 = 0;
                                        i47 = 0;
                                        i48 = 0;
                                        i29 = 0;
                                        while (i46 < i42) {
                                            int i513 = iArr9[i46];
                                            j21 = jArr11[i46];
                                            int i514 = i47;
                                            int i515 = i42;
                                            iMax = i29;
                                            i49 = i514;
                                            long[] jArr112 = jArr11;
                                            i50 = i513;
                                            while (i50 > 0) {
                                                int iMin2 = Math.min(i43, i50);
                                                jArr12[i49] = j21;
                                                iArr2[i49] = iA * iMin2;
                                                iMax = Math.max(iMax, iArr2[i49]);
                                                jArr13[i49] = ((long) i48) * j20;
                                                iArr10[i49] = 1;
                                                j21 += (long) iArr2[i49];
                                                i48 += iMin2;
                                                i50 -= iMin2;
                                                i49++;
                                                iArr9 = iArr9;
                                                iA = iA;
                                            }
                                            i46++;
                                            jArr11 = jArr112;
                                            int i616 = i49;
                                            i29 = iMax;
                                            i42 = i515;
                                            i47 = i616;
                                        }
                                        long j26 = j20 * ((long) i48);
                                        jArr4 = jArr12;
                                        iArr = iArr10;
                                        jArr3 = jArr13;
                                        lVar2 = lVarApply;
                                        j15 = j26;
                                    } else {
                                        jArrCopyOf = new long[iB];
                                        iArrCopyOf = new int[iB];
                                        jArrCopyOf2 = new long[iB];
                                        iArrCopyOf2 = new int[iB];
                                        i21 = 0;
                                        j13 = 0;
                                        j14 = 0;
                                        iW7 = iW5;
                                        iE5 = 0;
                                        iW8 = 0;
                                        int i617 = iW;
                                        i22 = iW4;
                                        i23 = iW3;
                                        i24 = iW2;
                                        i25 = 0;
                                        i26 = 0;
                                        while (true) {
                                            if (i26 >= iB) {
                                                i27 = i24;
                                                break;
                                            }
                                            zA = true;
                                            while (i21 == 0) {
                                                zA = aVar.a();
                                                if (!zA) {
                                                    break;
                                                    break;
                                                }
                                                int i618 = i24;
                                                long j27 = aVar.f220d;
                                                i21 = aVar.f219c;
                                                j14 = j27;
                                                i24 = i618;
                                                i23 = i23;
                                                iB = iB;
                                            }
                                            i30 = iB;
                                            i27 = i24;
                                            i31 = i23;
                                            if (!zA) {
                                                p.g("AtomParsers", "Unexpected end of chunk data");
                                                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i26);
                                                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i26);
                                                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i26);
                                                iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i26);
                                                iB = i26;
                                                break;
                                            }
                                            if (wVar4 != null) {
                                                while (iW8 == 0) {
                                                    iW8 = wVar4.w();
                                                    iE5 = wVar4.e();
                                                    i22--;
                                                }
                                                iW8--;
                                            }
                                            int i619 = iE5;
                                            jArrCopyOf[i26] = j14;
                                            iArrCopyOf[i26] = fVar.c();
                                            if (iArrCopyOf[i26] > i25) {
                                                i25 = iArrCopyOf[i26];
                                            }
                                            jArrCopyOf2[i26] = j13 + ((long) i619);
                                            if (wVar3 == null) {
                                                i32 = 1;
                                            } else {
                                                i32 = 0;
                                            }
                                            iArrCopyOf2[i26] = i32;
                                            if (i26 == iW7) {
                                                iArrCopyOf2[i26] = 1;
                                                iW6--;
                                                if (iW6 > 0) {
                                                    Objects.requireNonNull(wVar3);
                                                    iW7 = wVar3.w() - 1;
                                                }
                                            }
                                            int i620 = iW7;
                                            long[] jArr113 = jArrCopyOf;
                                            j13 += (long) i31;
                                            iW9 = i27 - 1;
                                            if (iW9 == 0) {
                                                iE6 = i31;
                                            } else {
                                                iE6 = i31;
                                            }
                                            i24 = iW9;
                                            int i621 = iE6;
                                            j14 += (long) iArrCopyOf[i26];
                                            i21--;
                                            i26++;
                                            iE5 = i619;
                                            iW7 = i620;
                                            jArrCopyOf = jArr113;
                                            i23 = i621;
                                            iB = i30;
                                        }
                                        int i622 = i21;
                                        j15 = j13 + ((long) iE5);
                                        if (wVar4 == null) {
                                            z15 = true;
                                            break;
                                        }
                                        while (true) {
                                            if (i22 <= 0) {
                                                z15 = true;
                                                break;
                                            }
                                            if (wVar4.w() != 0) {
                                                z15 = false;
                                                break;
                                            }
                                            wVar4.e();
                                            i22--;
                                        }
                                        if (iW6 != 0) {
                                            i28 = iW8;
                                            StringBuilder sbC3 = a0.b.c("Inconsistent stbl box for track ");
                                            lVar2 = lVarApply;
                                            a1.d.e(sbC3, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                            a1.d.e(sbC3, i27, ", remainingSamplesInChunk ", i622, ", remainingTimestampDeltaChanges ");
                                            sbC3.append(i617);
                                            sbC3.append(", remainingSamplesAtTimestampOffset ");
                                            sbC3.append(i28);
                                            if (z15) {
                                                str2 = ", ctts invalid";
                                            } else {
                                                str2 = str;
                                            }
                                            sbC3.append(str2);
                                            p.g("AtomParsers", sbC3.toString());
                                        } else {
                                            i28 = iW8;
                                            StringBuilder sbC4 = a0.b.c("Inconsistent stbl box for track ");
                                            lVar2 = lVarApply;
                                            a1.d.e(sbC4, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                            a1.d.e(sbC4, i27, ", remainingSamplesInChunk ", i622, ", remainingTimestampDeltaChanges ");
                                            sbC4.append(i617);
                                            sbC4.append(", remainingSamplesAtTimestampOffset ");
                                            sbC4.append(i28);
                                            if (z15) {
                                                str2 = ", ctts invalid";
                                            } else {
                                                str2 = str;
                                            }
                                            sbC4.append(str2);
                                            p.g("AtomParsers", sbC4.toString());
                                        }
                                        jArr3 = jArrCopyOf2;
                                        iArr = iArrCopyOf2;
                                        jArr4 = jArrCopyOf;
                                        iArr2 = iArrCopyOf;
                                        i29 = i25;
                                    }
                                    jR2 = g0.R(j15, 1000000L, lVar2.f334c);
                                    jArr5 = lVar2.f339h;
                                    if (jArr5 == null) {
                                        g0.S(jArr3, lVar2.f334c);
                                        oVar = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, jR2);
                                    } else if (jArr5.length == 1) {
                                        jArr6 = lVar2.f339h;
                                        if (jArr6.length == 1) {
                                            i33 = 0;
                                            if (jArr6[0] == 0) {
                                                long[] jArr114 = lVar2.f340i;
                                                Objects.requireNonNull(jArr114);
                                                j19 = jArr114[0];
                                                while (i33 < jArr3.length) {
                                                    jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                    i33++;
                                                }
                                                oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                                oVar = oVar2;
                                            }
                                        } else {
                                            i33 = 0;
                                        }
                                        if (lVar2.f333b == 1) {
                                            z16 = 1;
                                        } else {
                                            z16 = i33;
                                        }
                                        iArr3 = new int[jArr6.length];
                                        iArr4 = new int[jArr6.length];
                                        jArr7 = lVar2.f340i;
                                        Objects.requireNonNull(jArr7);
                                        i34 = i33;
                                        i35 = i34;
                                        i36 = i35;
                                        while (true) {
                                            jArr8 = lVar2.f339h;
                                            if (i33 >= jArr8.length) {
                                                break;
                                                break;
                                            }
                                            int i6110 = iB;
                                            j18 = jArr7[i33];
                                            if (j18 != -1) {
                                                int i6111 = i34;
                                                int i6112 = i36;
                                                long jR9 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                                iArr3[i33] = g0.f(jArr3, j18, true);
                                                iArr4[i33] = g0.b(jArr3, j18 + jR9, z16);
                                                while (iArr3[i33] < iArr4[i33]) {
                                                    iArr3[i33] = iArr3[i33] + 1;
                                                }
                                                i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                                i34 = (i6112 == iArr3[i33] ? 0 : 1) | i6111;
                                                i36 = iArr4[i33];
                                            }
                                            i33++;
                                            jArr7 = jArr7;
                                            iB = i6110;
                                            iArr2 = iArr2;
                                        }
                                        iArr5 = iArr2;
                                        i37 = i34 | (i35 == iB ? 0 : 1);
                                        if (i37 != 0) {
                                            jArr9 = new long[i35];
                                        } else {
                                            jArr9 = jArr4;
                                        }
                                        if (i37 != 0) {
                                            iArr6 = new int[i35];
                                        } else {
                                            iArr6 = iArr5;
                                        }
                                        if (i37 != 0) {
                                            i29 = 0;
                                        }
                                        if (i37 != 0) {
                                            iArr7 = new int[i35];
                                        } else {
                                            iArr7 = iArr;
                                        }
                                        jArr10 = new long[i35];
                                        i38 = 0;
                                        i39 = 0;
                                        int i79 = i29;
                                        j16 = 0;
                                        while (i38 < lVar2.f339h.length) {
                                            j17 = lVar2.f340i[i38];
                                            i40 = iArr3[i38];
                                            int[] iArr113 = iArr3;
                                            i41 = iArr4[i38];
                                            if (i37 != 0) {
                                                int i710 = i41 - i40;
                                                System.arraycopy(jArr4, i40, jArr9, i39, i710);
                                                iArr8 = iArr5;
                                                System.arraycopy(iArr8, i40, iArr6, i39, i710);
                                                System.arraycopy(iArr, i40, iArr7, i39, i710);
                                            } else {
                                                iArr8 = iArr5;
                                            }
                                            while (i40 < i41) {
                                                int[] iArr114 = iArr;
                                                int i711 = i41;
                                                long[] jArr27 = jArr9;
                                                int[] iArr115 = iArr8;
                                                long[] jArr28 = jArr3;
                                                jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                                if (i37 == 0) {
                                                }
                                                i39++;
                                                i40++;
                                                jArr3 = jArr28;
                                                iArr8 = iArr115;
                                                i41 = i711;
                                                iArr = iArr114;
                                                jArr9 = jArr27;
                                            }
                                            int[] iArr116 = iArr8;
                                            j16 += lVar2.f339h[i38];
                                            i38++;
                                            iArr3 = iArr113;
                                            jArr3 = jArr3;
                                            iArr4 = iArr4;
                                            iArr = iArr;
                                            jArr4 = jArr4;
                                            iArr5 = iArr116;
                                        }
                                        oVar = new o(lVar2, jArr9, iArr6, i79, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                    } else {
                                        jArr6 = lVar2.f339h;
                                        if (jArr6.length == 1) {
                                            i33 = 0;
                                            if (jArr6[0] == 0) {
                                                long[] jArr115 = lVar2.f340i;
                                                Objects.requireNonNull(jArr115);
                                                j19 = jArr115[0];
                                                while (i33 < jArr3.length) {
                                                    jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                    i33++;
                                                }
                                                oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                                oVar = oVar2;
                                            }
                                        } else {
                                            i33 = 0;
                                        }
                                        if (lVar2.f333b == 1) {
                                            z16 = 1;
                                        } else {
                                            z16 = i33;
                                        }
                                        iArr3 = new int[jArr6.length];
                                        iArr4 = new int[jArr6.length];
                                        jArr7 = lVar2.f340i;
                                        Objects.requireNonNull(jArr7);
                                        i34 = i33;
                                        i35 = i34;
                                        i36 = i35;
                                        while (true) {
                                            jArr8 = lVar2.f339h;
                                            if (i33 >= jArr8.length) {
                                                break;
                                                break;
                                            }
                                            int i6113 = iB;
                                            j18 = jArr7[i33];
                                            if (j18 != -1) {
                                                int i6114 = i34;
                                                int i6115 = i36;
                                                long jR10 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                                iArr3[i33] = g0.f(jArr3, j18, true);
                                                iArr4[i33] = g0.b(jArr3, j18 + jR10, z16);
                                                while (iArr3[i33] < iArr4[i33]) {
                                                    iArr3[i33] = iArr3[i33] + 1;
                                                }
                                                i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                                i34 = (i6115 == iArr3[i33] ? 0 : 1) | i6114;
                                                i36 = iArr4[i33];
                                            }
                                            i33++;
                                            jArr7 = jArr7;
                                            iB = i6113;
                                            iArr2 = iArr2;
                                        }
                                        iArr5 = iArr2;
                                        i37 = i34 | (i35 == iB ? 0 : 1);
                                        if (i37 != 0) {
                                            jArr9 = new long[i35];
                                        } else {
                                            jArr9 = jArr4;
                                        }
                                        if (i37 != 0) {
                                            iArr6 = new int[i35];
                                        } else {
                                            iArr6 = iArr5;
                                        }
                                        if (i37 != 0) {
                                            i29 = 0;
                                        }
                                        if (i37 != 0) {
                                            iArr7 = new int[i35];
                                        } else {
                                            iArr7 = iArr;
                                        }
                                        jArr10 = new long[i35];
                                        i38 = 0;
                                        i39 = 0;
                                        int i712 = i29;
                                        j16 = 0;
                                        while (i38 < lVar2.f339h.length) {
                                            j17 = lVar2.f340i[i38];
                                            i40 = iArr3[i38];
                                            int[] iArr117 = iArr3;
                                            i41 = iArr4[i38];
                                            if (i37 != 0) {
                                                int i713 = i41 - i40;
                                                System.arraycopy(jArr4, i40, jArr9, i39, i713);
                                                iArr8 = iArr5;
                                                System.arraycopy(iArr8, i40, iArr6, i39, i713);
                                                System.arraycopy(iArr, i40, iArr7, i39, i713);
                                            } else {
                                                iArr8 = iArr5;
                                            }
                                            while (i40 < i41) {
                                                int[] iArr118 = iArr;
                                                int i714 = i41;
                                                long[] jArr29 = jArr9;
                                                int[] iArr119 = iArr8;
                                                long[] jArr210 = jArr3;
                                                jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                                if (i37 == 0) {
                                                }
                                                i39++;
                                                i40++;
                                                jArr3 = jArr210;
                                                iArr8 = iArr119;
                                                i41 = i714;
                                                iArr = iArr118;
                                                jArr9 = jArr29;
                                            }
                                            int[] iArr1110 = iArr8;
                                            j16 += lVar2.f339h[i38];
                                            i38++;
                                            iArr3 = iArr117;
                                            jArr3 = jArr3;
                                            iArr4 = iArr4;
                                            iArr = iArr;
                                            jArr4 = jArr4;
                                            iArr5 = iArr1110;
                                        }
                                        oVar = new o(lVar2, jArr9, iArr6, i712, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                    }
                                }
                                arrayList = arrayList2;
                                arrayList.add(oVar);
                            }
                        }
                        jX = -9223372036854775807L;
                        wVar.E(16);
                        iE3 = wVar.e();
                        int iE12 = wVar.e();
                        wVar.E(4);
                        int iE13 = wVar.e();
                        int iE14 = wVar.e();
                        j11 = jX;
                        if (iE3 != 0) {
                            if (iE3 != 0) {
                                if (iE3 != -65536) {
                                    i15 = 0;
                                } else {
                                    i15 = 0;
                                }
                            } else if (iE3 != -65536) {
                                i15 = 0;
                            } else {
                                i15 = 0;
                            }
                        } else if (iE3 != 0) {
                            if (iE3 != -65536) {
                                i15 = 0;
                            } else {
                                i15 = 0;
                            }
                        } else if (iE3 != -65536) {
                            i15 = 0;
                        } else {
                            i15 = 0;
                        }
                        if (j10 == -9223372036854775807L) {
                            j12 = j11;
                        } else {
                            j12 = j10;
                        }
                        wVar2 = bVarC6.f215b;
                        wVar2.D(8);
                        if (((wVar2.e() >> 24) & 255) == 0) {
                            i16 = 8;
                        } else {
                            i16 = 16;
                        }
                        wVar2.E(i16);
                        jU = wVar2.u();
                        jR = j12 != -9223372036854775807L ? g0.R(j12, 1000000L, jU) : -9223372036854775807L;
                        a4.a.C0004a c0004aB10 = c0004aB3.b(1835626086);
                        Objects.requireNonNull(c0004aB10);
                        a4.a.C0004a c0004aB11 = c0004aB10.b(1937007212);
                        Objects.requireNonNull(c0004aB11);
                        a4.a.b bVarC16 = c0004aB3.c(1835296868);
                        Objects.requireNonNull(bVarC16);
                        w wVar14 = bVarC16.f215b;
                        wVar14.D(8);
                        iE4 = (wVar14.e() >> 24) & 255;
                        if (iE4 == 0) {
                            i17 = 8;
                        } else {
                            i17 = 16;
                        }
                        wVar14.E(i17);
                        long jU3 = wVar14.u();
                        if (iE4 == 0) {
                            i18 = 4;
                        } else {
                            i18 = 8;
                        }
                        wVar14.E(i18);
                        int iY2 = wVar14.y();
                        StringBuilder sbC5 = a0.b.c("");
                        sbC5.append((char) (((iY2 >> 10) & 31) + 96));
                        sbC5.append((char) (((iY2 >> 5) & 31) + 96));
                        sbC5.append((char) ((iY2 & 31) + 96));
                        pairCreate = Pair.create(Long.valueOf(jU3), sbC5.toString());
                        a4.a.b bVarC17 = c0004aB11.c(1937011556);
                        Objects.requireNonNull(bVarC17);
                        dVarE = e(bVarC17.f215b, iE2, i15, (String) pairCreate.second, dVar, z11);
                        if (z10) {
                            str = "";
                            jArr = null;
                            jArr2 = null;
                        } else {
                            str = "";
                            jArr = null;
                            jArr2 = null;
                        }
                        if (dVarE.f231b != null) {
                            lVar = new l(iE2, i11, ((Long) pairCreate.first).longValue(), jU, jR, dVarE.f231b, dVarE.f233d, dVarE.f230a, dVarE.f232c, jArr, jArr2);
                            i19 = 1835626086;
                        }
                        lVarApply = dVar2.apply(lVar);
                        if (lVarApply == null) {
                            arrayList = arrayList2;
                            i20 = i51;
                        } else {
                            a4.a.C0004a c0004aB12 = c0004a2.b(1835297121);
                            Objects.requireNonNull(c0004aB12);
                            a4.a.C0004a c0004aB13 = c0004aB12.b(i19);
                            Objects.requireNonNull(c0004aB13);
                            c0004aB2 = c0004aB13.b(1937007212);
                            Objects.requireNonNull(c0004aB2);
                            bVarC = c0004aB2.c(1937011578);
                            if (bVarC != null) {
                                fVar = new e(bVarC, lVarApply.f337f);
                            } else {
                                bVarC2 = c0004aB2.c(1937013298);
                                if (bVarC2 == null) {
                                    throw i1.a("Track has no sample table size information", null);
                                }
                                fVar = new f(bVarC2);
                            }
                            iB = fVar.b();
                            if (iB == 0) {
                                oVar = new o(lVarApply, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                                arrayList2 = arrayList2;
                                i20 = i51;
                            } else {
                                bVarC3 = c0004aB2.c(1937007471);
                                if (bVarC3 == null) {
                                    bVarC3 = c0004aB2.c(1668232756);
                                    Objects.requireNonNull(bVarC3);
                                    z13 = true;
                                } else {
                                    z13 = false;
                                }
                                w wVar15 = bVarC3.f215b;
                                a4.a.b bVarC18 = c0004aB2.c(1937011555);
                                Objects.requireNonNull(bVarC18);
                                w wVar16 = bVarC18.f215b;
                                a4.a.b bVarC19 = c0004aB2.c(1937011827);
                                Objects.requireNonNull(bVarC19);
                                w wVar17 = bVarC19.f215b;
                                bVarC4 = c0004aB2.c(1937011571);
                                if (bVarC4 != null) {
                                    wVar3 = bVarC4.f215b;
                                } else {
                                    wVar3 = null;
                                }
                                bVarC5 = c0004aB2.c(1668576371);
                                if (bVarC5 != null) {
                                    wVar4 = bVarC5.f215b;
                                } else {
                                    wVar4 = null;
                                }
                                aVar = new a(wVar16, wVar15, z13);
                                wVar17.D(12);
                                iW = wVar17.w() - 1;
                                iW2 = wVar17.w();
                                iW3 = wVar17.w();
                                if (wVar4 != null) {
                                    wVar4.D(12);
                                    iW4 = wVar4.w();
                                } else {
                                    iW4 = 0;
                                }
                                if (wVar3 != null) {
                                    wVar3.D(12);
                                    iW6 = wVar3.w();
                                    if (iW6 > 0) {
                                        iW5 = wVar3.w() - 1;
                                    } else {
                                        iW5 = -1;
                                        wVar3 = null;
                                    }
                                } else {
                                    iW5 = -1;
                                    iW6 = 0;
                                }
                                iA = fVar.a();
                                String str5 = lVarApply.f337f.f11687s;
                                i20 = i51;
                                if (iA == -1) {
                                    z14 = false;
                                } else {
                                    z14 = false;
                                }
                                if (z14) {
                                    i42 = aVar.f217a;
                                    jArr11 = new long[i42];
                                    iArr9 = new int[i42];
                                    while (aVar.a()) {
                                        int i516 = aVar.f218b;
                                        jArr11[i516] = aVar.f220d;
                                        iArr9[i516] = aVar.f219c;
                                    }
                                    j20 = iW3;
                                    i43 = 8192 / iA;
                                    i45 = 0;
                                    while (i44 < i42) {
                                        int i517 = iArr9[i44];
                                        int i518 = g0.f10384a;
                                        i45 += ((i517 + i43) - 1) / i43;
                                    }
                                    jArr12 = new long[i45];
                                    iArr2 = new int[i45];
                                    jArr13 = new long[i45];
                                    iArr10 = new int[i45];
                                    i46 = 0;
                                    i47 = 0;
                                    i48 = 0;
                                    i29 = 0;
                                    while (i46 < i42) {
                                        int i519 = iArr9[i46];
                                        j21 = jArr11[i46];
                                        int i5110 = i47;
                                        int i5111 = i42;
                                        iMax = i29;
                                        i49 = i5110;
                                        long[] jArr116 = jArr11;
                                        i50 = i519;
                                        while (i50 > 0) {
                                            int iMin3 = Math.min(i43, i50);
                                            jArr12[i49] = j21;
                                            iArr2[i49] = iA * iMin3;
                                            iMax = Math.max(iMax, iArr2[i49]);
                                            jArr13[i49] = ((long) i48) * j20;
                                            iArr10[i49] = 1;
                                            j21 += (long) iArr2[i49];
                                            i48 += iMin3;
                                            i50 -= iMin3;
                                            i49++;
                                            iArr9 = iArr9;
                                            iA = iA;
                                        }
                                        i46++;
                                        jArr11 = jArr116;
                                        int i6116 = i49;
                                        i29 = iMax;
                                        i42 = i5111;
                                        i47 = i6116;
                                    }
                                    long j28 = j20 * ((long) i48);
                                    jArr4 = jArr12;
                                    iArr = iArr10;
                                    jArr3 = jArr13;
                                    lVar2 = lVarApply;
                                    j15 = j28;
                                } else {
                                    jArrCopyOf = new long[iB];
                                    iArrCopyOf = new int[iB];
                                    jArrCopyOf2 = new long[iB];
                                    iArrCopyOf2 = new int[iB];
                                    i21 = 0;
                                    j13 = 0;
                                    j14 = 0;
                                    iW7 = iW5;
                                    iE5 = 0;
                                    iW8 = 0;
                                    int i6117 = iW;
                                    i22 = iW4;
                                    i23 = iW3;
                                    i24 = iW2;
                                    i25 = 0;
                                    i26 = 0;
                                    while (true) {
                                        if (i26 >= iB) {
                                            i27 = i24;
                                            break;
                                        }
                                        zA = true;
                                        while (i21 == 0) {
                                            zA = aVar.a();
                                            if (!zA) {
                                                break;
                                                break;
                                            }
                                            int i6118 = i24;
                                            long j29 = aVar.f220d;
                                            i21 = aVar.f219c;
                                            j14 = j29;
                                            i24 = i6118;
                                            i23 = i23;
                                            iB = iB;
                                        }
                                        i30 = iB;
                                        i27 = i24;
                                        i31 = i23;
                                        if (!zA) {
                                            p.g("AtomParsers", "Unexpected end of chunk data");
                                            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i26);
                                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i26);
                                            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i26);
                                            iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i26);
                                            iB = i26;
                                            break;
                                        }
                                        if (wVar4 != null) {
                                            while (iW8 == 0) {
                                                iW8 = wVar4.w();
                                                iE5 = wVar4.e();
                                                i22--;
                                            }
                                            iW8--;
                                        }
                                        int i6119 = iE5;
                                        jArrCopyOf[i26] = j14;
                                        iArrCopyOf[i26] = fVar.c();
                                        if (iArrCopyOf[i26] > i25) {
                                            i25 = iArrCopyOf[i26];
                                        }
                                        jArrCopyOf2[i26] = j13 + ((long) i6119);
                                        if (wVar3 == null) {
                                            i32 = 1;
                                        } else {
                                            i32 = 0;
                                        }
                                        iArrCopyOf2[i26] = i32;
                                        if (i26 == iW7) {
                                            iArrCopyOf2[i26] = 1;
                                            iW6--;
                                            if (iW6 > 0) {
                                                Objects.requireNonNull(wVar3);
                                                iW7 = wVar3.w() - 1;
                                            }
                                        }
                                        int i623 = iW7;
                                        long[] jArr117 = jArrCopyOf;
                                        j13 += (long) i31;
                                        iW9 = i27 - 1;
                                        if (iW9 == 0) {
                                            iE6 = i31;
                                        } else {
                                            iE6 = i31;
                                        }
                                        i24 = iW9;
                                        int i624 = iE6;
                                        j14 += (long) iArrCopyOf[i26];
                                        i21--;
                                        i26++;
                                        iE5 = i6119;
                                        iW7 = i623;
                                        jArrCopyOf = jArr117;
                                        i23 = i624;
                                        iB = i30;
                                    }
                                    int i625 = i21;
                                    j15 = j13 + ((long) iE5);
                                    if (wVar4 == null) {
                                        z15 = true;
                                        break;
                                    }
                                    while (true) {
                                        if (i22 <= 0) {
                                            z15 = true;
                                            break;
                                        }
                                        if (wVar4.w() != 0) {
                                            z15 = false;
                                            break;
                                        }
                                        wVar4.e();
                                        i22--;
                                    }
                                    if (iW6 != 0) {
                                        i28 = iW8;
                                        StringBuilder sbC6 = a0.b.c("Inconsistent stbl box for track ");
                                        lVar2 = lVarApply;
                                        a1.d.e(sbC6, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                        a1.d.e(sbC6, i27, ", remainingSamplesInChunk ", i625, ", remainingTimestampDeltaChanges ");
                                        sbC6.append(i6117);
                                        sbC6.append(", remainingSamplesAtTimestampOffset ");
                                        sbC6.append(i28);
                                        if (z15) {
                                            str2 = ", ctts invalid";
                                        } else {
                                            str2 = str;
                                        }
                                        sbC6.append(str2);
                                        p.g("AtomParsers", sbC6.toString());
                                    } else {
                                        i28 = iW8;
                                        StringBuilder sbC7 = a0.b.c("Inconsistent stbl box for track ");
                                        lVar2 = lVarApply;
                                        a1.d.e(sbC7, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                        a1.d.e(sbC7, i27, ", remainingSamplesInChunk ", i625, ", remainingTimestampDeltaChanges ");
                                        sbC7.append(i6117);
                                        sbC7.append(", remainingSamplesAtTimestampOffset ");
                                        sbC7.append(i28);
                                        if (z15) {
                                            str2 = ", ctts invalid";
                                        } else {
                                            str2 = str;
                                        }
                                        sbC7.append(str2);
                                        p.g("AtomParsers", sbC7.toString());
                                    }
                                    jArr3 = jArrCopyOf2;
                                    iArr = iArrCopyOf2;
                                    jArr4 = jArrCopyOf;
                                    iArr2 = iArrCopyOf;
                                    i29 = i25;
                                }
                                jR2 = g0.R(j15, 1000000L, lVar2.f334c);
                                jArr5 = lVar2.f339h;
                                if (jArr5 == null) {
                                    g0.S(jArr3, lVar2.f334c);
                                    oVar = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, jR2);
                                } else if (jArr5.length == 1) {
                                    jArr6 = lVar2.f339h;
                                    if (jArr6.length == 1) {
                                        i33 = 0;
                                        if (jArr6[0] == 0) {
                                            long[] jArr118 = lVar2.f340i;
                                            Objects.requireNonNull(jArr118);
                                            j19 = jArr118[0];
                                            while (i33 < jArr3.length) {
                                                jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                i33++;
                                            }
                                            oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                            oVar = oVar2;
                                        }
                                    } else {
                                        i33 = 0;
                                    }
                                    if (lVar2.f333b == 1) {
                                        z16 = 1;
                                    } else {
                                        z16 = i33;
                                    }
                                    iArr3 = new int[jArr6.length];
                                    iArr4 = new int[jArr6.length];
                                    jArr7 = lVar2.f340i;
                                    Objects.requireNonNull(jArr7);
                                    i34 = i33;
                                    i35 = i34;
                                    i36 = i35;
                                    while (true) {
                                        jArr8 = lVar2.f339h;
                                        if (i33 >= jArr8.length) {
                                            break;
                                            break;
                                        }
                                        int i61110 = iB;
                                        j18 = jArr7[i33];
                                        if (j18 != -1) {
                                            int i61111 = i34;
                                            int i61112 = i36;
                                            long jR11 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                            iArr3[i33] = g0.f(jArr3, j18, true);
                                            iArr4[i33] = g0.b(jArr3, j18 + jR11, z16);
                                            while (iArr3[i33] < iArr4[i33]) {
                                                iArr3[i33] = iArr3[i33] + 1;
                                            }
                                            i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                            i34 = (i61112 == iArr3[i33] ? 0 : 1) | i61111;
                                            i36 = iArr4[i33];
                                        }
                                        i33++;
                                        jArr7 = jArr7;
                                        iB = i61110;
                                        iArr2 = iArr2;
                                    }
                                    iArr5 = iArr2;
                                    i37 = i34 | (i35 == iB ? 0 : 1);
                                    if (i37 != 0) {
                                        jArr9 = new long[i35];
                                    } else {
                                        jArr9 = jArr4;
                                    }
                                    if (i37 != 0) {
                                        iArr6 = new int[i35];
                                    } else {
                                        iArr6 = iArr5;
                                    }
                                    if (i37 != 0) {
                                        i29 = 0;
                                    }
                                    if (i37 != 0) {
                                        iArr7 = new int[i35];
                                    } else {
                                        iArr7 = iArr;
                                    }
                                    jArr10 = new long[i35];
                                    i38 = 0;
                                    i39 = 0;
                                    int i715 = i29;
                                    j16 = 0;
                                    while (i38 < lVar2.f339h.length) {
                                        j17 = lVar2.f340i[i38];
                                        i40 = iArr3[i38];
                                        int[] iArr1111 = iArr3;
                                        i41 = iArr4[i38];
                                        if (i37 != 0) {
                                            int i716 = i41 - i40;
                                            System.arraycopy(jArr4, i40, jArr9, i39, i716);
                                            iArr8 = iArr5;
                                            System.arraycopy(iArr8, i40, iArr6, i39, i716);
                                            System.arraycopy(iArr, i40, iArr7, i39, i716);
                                        } else {
                                            iArr8 = iArr5;
                                        }
                                        while (i40 < i41) {
                                            int[] iArr1112 = iArr;
                                            int i717 = i41;
                                            long[] jArr211 = jArr9;
                                            int[] iArr1113 = iArr8;
                                            long[] jArr212 = jArr3;
                                            jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                            if (i37 == 0) {
                                            }
                                            i39++;
                                            i40++;
                                            jArr3 = jArr212;
                                            iArr8 = iArr1113;
                                            i41 = i717;
                                            iArr = iArr1112;
                                            jArr9 = jArr211;
                                        }
                                        int[] iArr1114 = iArr8;
                                        j16 += lVar2.f339h[i38];
                                        i38++;
                                        iArr3 = iArr1111;
                                        jArr3 = jArr3;
                                        iArr4 = iArr4;
                                        iArr = iArr;
                                        jArr4 = jArr4;
                                        iArr5 = iArr1114;
                                    }
                                    oVar = new o(lVar2, jArr9, iArr6, i715, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                } else {
                                    jArr6 = lVar2.f339h;
                                    if (jArr6.length == 1) {
                                        i33 = 0;
                                        if (jArr6[0] == 0) {
                                            long[] jArr119 = lVar2.f340i;
                                            Objects.requireNonNull(jArr119);
                                            j19 = jArr119[0];
                                            while (i33 < jArr3.length) {
                                                jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                i33++;
                                            }
                                            oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                            oVar = oVar2;
                                        }
                                    } else {
                                        i33 = 0;
                                    }
                                    if (lVar2.f333b == 1) {
                                        z16 = 1;
                                    } else {
                                        z16 = i33;
                                    }
                                    iArr3 = new int[jArr6.length];
                                    iArr4 = new int[jArr6.length];
                                    jArr7 = lVar2.f340i;
                                    Objects.requireNonNull(jArr7);
                                    i34 = i33;
                                    i35 = i34;
                                    i36 = i35;
                                    while (true) {
                                        jArr8 = lVar2.f339h;
                                        if (i33 >= jArr8.length) {
                                            break;
                                            break;
                                        }
                                        int i61113 = iB;
                                        j18 = jArr7[i33];
                                        if (j18 != -1) {
                                            int i61114 = i34;
                                            int i61115 = i36;
                                            long jR12 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                            iArr3[i33] = g0.f(jArr3, j18, true);
                                            iArr4[i33] = g0.b(jArr3, j18 + jR12, z16);
                                            while (iArr3[i33] < iArr4[i33]) {
                                                iArr3[i33] = iArr3[i33] + 1;
                                            }
                                            i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                            i34 = (i61115 == iArr3[i33] ? 0 : 1) | i61114;
                                            i36 = iArr4[i33];
                                        }
                                        i33++;
                                        jArr7 = jArr7;
                                        iB = i61113;
                                        iArr2 = iArr2;
                                    }
                                    iArr5 = iArr2;
                                    i37 = i34 | (i35 == iB ? 0 : 1);
                                    if (i37 != 0) {
                                        jArr9 = new long[i35];
                                    } else {
                                        jArr9 = jArr4;
                                    }
                                    if (i37 != 0) {
                                        iArr6 = new int[i35];
                                    } else {
                                        iArr6 = iArr5;
                                    }
                                    if (i37 != 0) {
                                        i29 = 0;
                                    }
                                    if (i37 != 0) {
                                        iArr7 = new int[i35];
                                    } else {
                                        iArr7 = iArr;
                                    }
                                    jArr10 = new long[i35];
                                    i38 = 0;
                                    i39 = 0;
                                    int i718 = i29;
                                    j16 = 0;
                                    while (i38 < lVar2.f339h.length) {
                                        j17 = lVar2.f340i[i38];
                                        i40 = iArr3[i38];
                                        int[] iArr1115 = iArr3;
                                        i41 = iArr4[i38];
                                        if (i37 != 0) {
                                            int i719 = i41 - i40;
                                            System.arraycopy(jArr4, i40, jArr9, i39, i719);
                                            iArr8 = iArr5;
                                            System.arraycopy(iArr8, i40, iArr6, i39, i719);
                                            System.arraycopy(iArr, i40, iArr7, i39, i719);
                                        } else {
                                            iArr8 = iArr5;
                                        }
                                        while (i40 < i41) {
                                            int[] iArr1116 = iArr;
                                            int i7110 = i41;
                                            long[] jArr213 = jArr9;
                                            int[] iArr1117 = iArr8;
                                            long[] jArr214 = jArr3;
                                            jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                            if (i37 == 0) {
                                            }
                                            i39++;
                                            i40++;
                                            jArr3 = jArr214;
                                            iArr8 = iArr1117;
                                            i41 = i7110;
                                            iArr = iArr1116;
                                            jArr9 = jArr213;
                                        }
                                        int[] iArr1118 = iArr8;
                                        j16 += lVar2.f339h[i38];
                                        i38++;
                                        iArr3 = iArr1115;
                                        jArr3 = jArr3;
                                        iArr4 = iArr4;
                                        iArr = iArr;
                                        jArr4 = jArr4;
                                        iArr5 = iArr1118;
                                    }
                                    oVar = new o(lVar2, jArr9, iArr6, i718, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                }
                            }
                            arrayList = arrayList2;
                            arrayList.add(oVar);
                        }
                    }
                    lVar = null;
                    i19 = 1835626086;
                    lVarApply = dVar2.apply(lVar);
                    if (lVarApply == null) {
                        arrayList = arrayList2;
                        i20 = i51;
                    } else {
                        a4.a.C0004a c0004aB14 = c0004a2.b(1835297121);
                        Objects.requireNonNull(c0004aB14);
                        a4.a.C0004a c0004aB15 = c0004aB14.b(i19);
                        Objects.requireNonNull(c0004aB15);
                        c0004aB2 = c0004aB15.b(1937007212);
                        Objects.requireNonNull(c0004aB2);
                        bVarC = c0004aB2.c(1937011578);
                        if (bVarC != null) {
                            fVar = new e(bVarC, lVarApply.f337f);
                        } else {
                            bVarC2 = c0004aB2.c(1937013298);
                            if (bVarC2 == null) {
                                throw i1.a("Track has no sample table size information", null);
                            }
                            fVar = new f(bVarC2);
                        }
                        iB = fVar.b();
                        if (iB == 0) {
                            oVar = new o(lVarApply, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                            arrayList2 = arrayList2;
                            i20 = i51;
                        } else {
                            bVarC3 = c0004aB2.c(1937007471);
                            if (bVarC3 == null) {
                                bVarC3 = c0004aB2.c(1668232756);
                                Objects.requireNonNull(bVarC3);
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            w wVar18 = bVarC3.f215b;
                            a4.a.b bVarC110 = c0004aB2.c(1937011555);
                            Objects.requireNonNull(bVarC110);
                            w wVar19 = bVarC110.f215b;
                            a4.a.b bVarC111 = c0004aB2.c(1937011827);
                            Objects.requireNonNull(bVarC111);
                            w wVar110 = bVarC111.f215b;
                            bVarC4 = c0004aB2.c(1937011571);
                            if (bVarC4 != null) {
                                wVar3 = bVarC4.f215b;
                            } else {
                                wVar3 = null;
                            }
                            bVarC5 = c0004aB2.c(1668576371);
                            if (bVarC5 != null) {
                                wVar4 = bVarC5.f215b;
                            } else {
                                wVar4 = null;
                            }
                            aVar = new a(wVar19, wVar18, z13);
                            wVar110.D(12);
                            iW = wVar110.w() - 1;
                            iW2 = wVar110.w();
                            iW3 = wVar110.w();
                            if (wVar4 != null) {
                                wVar4.D(12);
                                iW4 = wVar4.w();
                            } else {
                                iW4 = 0;
                            }
                            if (wVar3 != null) {
                                wVar3.D(12);
                                iW6 = wVar3.w();
                                if (iW6 > 0) {
                                    iW5 = wVar3.w() - 1;
                                } else {
                                    iW5 = -1;
                                    wVar3 = null;
                                }
                            } else {
                                iW5 = -1;
                                iW6 = 0;
                            }
                            iA = fVar.a();
                            String str6 = lVarApply.f337f.f11687s;
                            i20 = i51;
                            if (iA == -1) {
                                z14 = false;
                            } else {
                                z14 = false;
                            }
                            if (z14) {
                                i42 = aVar.f217a;
                                jArr11 = new long[i42];
                                iArr9 = new int[i42];
                                while (aVar.a()) {
                                    int i5112 = aVar.f218b;
                                    jArr11[i5112] = aVar.f220d;
                                    iArr9[i5112] = aVar.f219c;
                                }
                                j20 = iW3;
                                i43 = 8192 / iA;
                                i45 = 0;
                                while (i44 < i42) {
                                    int i5113 = iArr9[i44];
                                    int i5114 = g0.f10384a;
                                    i45 += ((i5113 + i43) - 1) / i43;
                                }
                                jArr12 = new long[i45];
                                iArr2 = new int[i45];
                                jArr13 = new long[i45];
                                iArr10 = new int[i45];
                                i46 = 0;
                                i47 = 0;
                                i48 = 0;
                                i29 = 0;
                                while (i46 < i42) {
                                    int i5115 = iArr9[i46];
                                    j21 = jArr11[i46];
                                    int i5116 = i47;
                                    int i5117 = i42;
                                    iMax = i29;
                                    i49 = i5116;
                                    long[] jArr1110 = jArr11;
                                    i50 = i5115;
                                    while (i50 > 0) {
                                        int iMin4 = Math.min(i43, i50);
                                        jArr12[i49] = j21;
                                        iArr2[i49] = iA * iMin4;
                                        iMax = Math.max(iMax, iArr2[i49]);
                                        jArr13[i49] = ((long) i48) * j20;
                                        iArr10[i49] = 1;
                                        j21 += (long) iArr2[i49];
                                        i48 += iMin4;
                                        i50 -= iMin4;
                                        i49++;
                                        iArr9 = iArr9;
                                        iA = iA;
                                    }
                                    i46++;
                                    jArr11 = jArr1110;
                                    int i61116 = i49;
                                    i29 = iMax;
                                    i42 = i5117;
                                    i47 = i61116;
                                }
                                long j210 = j20 * ((long) i48);
                                jArr4 = jArr12;
                                iArr = iArr10;
                                jArr3 = jArr13;
                                lVar2 = lVarApply;
                                j15 = j210;
                            } else {
                                jArrCopyOf = new long[iB];
                                iArrCopyOf = new int[iB];
                                jArrCopyOf2 = new long[iB];
                                iArrCopyOf2 = new int[iB];
                                i21 = 0;
                                j13 = 0;
                                j14 = 0;
                                iW7 = iW5;
                                iE5 = 0;
                                iW8 = 0;
                                int i61117 = iW;
                                i22 = iW4;
                                i23 = iW3;
                                i24 = iW2;
                                i25 = 0;
                                i26 = 0;
                                while (true) {
                                    if (i26 >= iB) {
                                        i27 = i24;
                                        break;
                                    }
                                    zA = true;
                                    while (i21 == 0) {
                                        zA = aVar.a();
                                        if (!zA) {
                                            break;
                                            break;
                                        }
                                        int i61118 = i24;
                                        long j211 = aVar.f220d;
                                        i21 = aVar.f219c;
                                        j14 = j211;
                                        i24 = i61118;
                                        i23 = i23;
                                        iB = iB;
                                    }
                                    i30 = iB;
                                    i27 = i24;
                                    i31 = i23;
                                    if (!zA) {
                                        p.g("AtomParsers", "Unexpected end of chunk data");
                                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i26);
                                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i26);
                                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i26);
                                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i26);
                                        iB = i26;
                                        break;
                                    }
                                    if (wVar4 != null) {
                                        while (iW8 == 0) {
                                            iW8 = wVar4.w();
                                            iE5 = wVar4.e();
                                            i22--;
                                        }
                                        iW8--;
                                    }
                                    int i61119 = iE5;
                                    jArrCopyOf[i26] = j14;
                                    iArrCopyOf[i26] = fVar.c();
                                    if (iArrCopyOf[i26] > i25) {
                                        i25 = iArrCopyOf[i26];
                                    }
                                    jArrCopyOf2[i26] = j13 + ((long) i61119);
                                    if (wVar3 == null) {
                                        i32 = 1;
                                    } else {
                                        i32 = 0;
                                    }
                                    iArrCopyOf2[i26] = i32;
                                    if (i26 == iW7) {
                                        iArrCopyOf2[i26] = 1;
                                        iW6--;
                                        if (iW6 > 0) {
                                            Objects.requireNonNull(wVar3);
                                            iW7 = wVar3.w() - 1;
                                        }
                                    }
                                    int i626 = iW7;
                                    long[] jArr1111 = jArrCopyOf;
                                    j13 += (long) i31;
                                    iW9 = i27 - 1;
                                    if (iW9 == 0) {
                                        iE6 = i31;
                                    } else {
                                        iE6 = i31;
                                    }
                                    i24 = iW9;
                                    int i627 = iE6;
                                    j14 += (long) iArrCopyOf[i26];
                                    i21--;
                                    i26++;
                                    iE5 = i61119;
                                    iW7 = i626;
                                    jArrCopyOf = jArr1111;
                                    i23 = i627;
                                    iB = i30;
                                }
                                int i628 = i21;
                                j15 = j13 + ((long) iE5);
                                if (wVar4 == null) {
                                    z15 = true;
                                    break;
                                }
                                while (true) {
                                    if (i22 <= 0) {
                                        z15 = true;
                                        break;
                                    }
                                    if (wVar4.w() != 0) {
                                        z15 = false;
                                        break;
                                    }
                                    wVar4.e();
                                    i22--;
                                }
                                if (iW6 != 0) {
                                    i28 = iW8;
                                    StringBuilder sbC8 = a0.b.c("Inconsistent stbl box for track ");
                                    lVar2 = lVarApply;
                                    a1.d.e(sbC8, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                    a1.d.e(sbC8, i27, ", remainingSamplesInChunk ", i628, ", remainingTimestampDeltaChanges ");
                                    sbC8.append(i61117);
                                    sbC8.append(", remainingSamplesAtTimestampOffset ");
                                    sbC8.append(i28);
                                    if (z15) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = str;
                                    }
                                    sbC8.append(str2);
                                    p.g("AtomParsers", sbC8.toString());
                                } else {
                                    i28 = iW8;
                                    StringBuilder sbC9 = a0.b.c("Inconsistent stbl box for track ");
                                    lVar2 = lVarApply;
                                    a1.d.e(sbC9, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                    a1.d.e(sbC9, i27, ", remainingSamplesInChunk ", i628, ", remainingTimestampDeltaChanges ");
                                    sbC9.append(i61117);
                                    sbC9.append(", remainingSamplesAtTimestampOffset ");
                                    sbC9.append(i28);
                                    if (z15) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = str;
                                    }
                                    sbC9.append(str2);
                                    p.g("AtomParsers", sbC9.toString());
                                }
                                jArr3 = jArrCopyOf2;
                                iArr = iArrCopyOf2;
                                jArr4 = jArrCopyOf;
                                iArr2 = iArrCopyOf;
                                i29 = i25;
                            }
                            jR2 = g0.R(j15, 1000000L, lVar2.f334c);
                            jArr5 = lVar2.f339h;
                            if (jArr5 == null) {
                                g0.S(jArr3, lVar2.f334c);
                                oVar = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, jR2);
                            } else if (jArr5.length == 1) {
                                jArr6 = lVar2.f339h;
                                if (jArr6.length == 1) {
                                    i33 = 0;
                                    if (jArr6[0] == 0) {
                                        long[] jArr1112 = lVar2.f340i;
                                        Objects.requireNonNull(jArr1112);
                                        j19 = jArr1112[0];
                                        while (i33 < jArr3.length) {
                                            jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                            i33++;
                                        }
                                        oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                        oVar = oVar2;
                                    }
                                } else {
                                    i33 = 0;
                                }
                                if (lVar2.f333b == 1) {
                                    z16 = 1;
                                } else {
                                    z16 = i33;
                                }
                                iArr3 = new int[jArr6.length];
                                iArr4 = new int[jArr6.length];
                                jArr7 = lVar2.f340i;
                                Objects.requireNonNull(jArr7);
                                i34 = i33;
                                i35 = i34;
                                i36 = i35;
                                while (true) {
                                    jArr8 = lVar2.f339h;
                                    if (i33 >= jArr8.length) {
                                        break;
                                        break;
                                    }
                                    int i611110 = iB;
                                    j18 = jArr7[i33];
                                    if (j18 != -1) {
                                        int i611111 = i34;
                                        int i611112 = i36;
                                        long jR13 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                        iArr3[i33] = g0.f(jArr3, j18, true);
                                        iArr4[i33] = g0.b(jArr3, j18 + jR13, z16);
                                        while (iArr3[i33] < iArr4[i33]) {
                                            iArr3[i33] = iArr3[i33] + 1;
                                        }
                                        i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                        i34 = (i611112 == iArr3[i33] ? 0 : 1) | i611111;
                                        i36 = iArr4[i33];
                                    }
                                    i33++;
                                    jArr7 = jArr7;
                                    iB = i611110;
                                    iArr2 = iArr2;
                                }
                                iArr5 = iArr2;
                                i37 = i34 | (i35 == iB ? 0 : 1);
                                if (i37 != 0) {
                                    jArr9 = new long[i35];
                                } else {
                                    jArr9 = jArr4;
                                }
                                if (i37 != 0) {
                                    iArr6 = new int[i35];
                                } else {
                                    iArr6 = iArr5;
                                }
                                if (i37 != 0) {
                                    i29 = 0;
                                }
                                if (i37 != 0) {
                                    iArr7 = new int[i35];
                                } else {
                                    iArr7 = iArr;
                                }
                                jArr10 = new long[i35];
                                i38 = 0;
                                i39 = 0;
                                int i7111 = i29;
                                j16 = 0;
                                while (i38 < lVar2.f339h.length) {
                                    j17 = lVar2.f340i[i38];
                                    i40 = iArr3[i38];
                                    int[] iArr1119 = iArr3;
                                    i41 = iArr4[i38];
                                    if (i37 != 0) {
                                        int i7112 = i41 - i40;
                                        System.arraycopy(jArr4, i40, jArr9, i39, i7112);
                                        iArr8 = iArr5;
                                        System.arraycopy(iArr8, i40, iArr6, i39, i7112);
                                        System.arraycopy(iArr, i40, iArr7, i39, i7112);
                                    } else {
                                        iArr8 = iArr5;
                                    }
                                    while (i40 < i41) {
                                        int[] iArr11110 = iArr;
                                        int i7113 = i41;
                                        long[] jArr215 = jArr9;
                                        int[] iArr11111 = iArr8;
                                        long[] jArr216 = jArr3;
                                        jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                        if (i37 == 0) {
                                        }
                                        i39++;
                                        i40++;
                                        jArr3 = jArr216;
                                        iArr8 = iArr11111;
                                        i41 = i7113;
                                        iArr = iArr11110;
                                        jArr9 = jArr215;
                                    }
                                    int[] iArr11112 = iArr8;
                                    j16 += lVar2.f339h[i38];
                                    i38++;
                                    iArr3 = iArr1119;
                                    jArr3 = jArr3;
                                    iArr4 = iArr4;
                                    iArr = iArr;
                                    jArr4 = jArr4;
                                    iArr5 = iArr11112;
                                }
                                oVar = new o(lVar2, jArr9, iArr6, i7111, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                            } else {
                                jArr6 = lVar2.f339h;
                                if (jArr6.length == 1) {
                                    i33 = 0;
                                    if (jArr6[0] == 0) {
                                        long[] jArr1113 = lVar2.f340i;
                                        Objects.requireNonNull(jArr1113);
                                        j19 = jArr1113[0];
                                        while (i33 < jArr3.length) {
                                            jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                            i33++;
                                        }
                                        oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                        oVar = oVar2;
                                    }
                                } else {
                                    i33 = 0;
                                }
                                if (lVar2.f333b == 1) {
                                    z16 = 1;
                                } else {
                                    z16 = i33;
                                }
                                iArr3 = new int[jArr6.length];
                                iArr4 = new int[jArr6.length];
                                jArr7 = lVar2.f340i;
                                Objects.requireNonNull(jArr7);
                                i34 = i33;
                                i35 = i34;
                                i36 = i35;
                                while (true) {
                                    jArr8 = lVar2.f339h;
                                    if (i33 >= jArr8.length) {
                                        break;
                                        break;
                                    }
                                    int i611113 = iB;
                                    j18 = jArr7[i33];
                                    if (j18 != -1) {
                                        int i611114 = i34;
                                        int i611115 = i36;
                                        long jR14 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                        iArr3[i33] = g0.f(jArr3, j18, true);
                                        iArr4[i33] = g0.b(jArr3, j18 + jR14, z16);
                                        while (iArr3[i33] < iArr4[i33]) {
                                            iArr3[i33] = iArr3[i33] + 1;
                                        }
                                        i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                        i34 = (i611115 == iArr3[i33] ? 0 : 1) | i611114;
                                        i36 = iArr4[i33];
                                    }
                                    i33++;
                                    jArr7 = jArr7;
                                    iB = i611113;
                                    iArr2 = iArr2;
                                }
                                iArr5 = iArr2;
                                i37 = i34 | (i35 == iB ? 0 : 1);
                                if (i37 != 0) {
                                    jArr9 = new long[i35];
                                } else {
                                    jArr9 = jArr4;
                                }
                                if (i37 != 0) {
                                    iArr6 = new int[i35];
                                } else {
                                    iArr6 = iArr5;
                                }
                                if (i37 != 0) {
                                    i29 = 0;
                                }
                                if (i37 != 0) {
                                    iArr7 = new int[i35];
                                } else {
                                    iArr7 = iArr;
                                }
                                jArr10 = new long[i35];
                                i38 = 0;
                                i39 = 0;
                                int i7114 = i29;
                                j16 = 0;
                                while (i38 < lVar2.f339h.length) {
                                    j17 = lVar2.f340i[i38];
                                    i40 = iArr3[i38];
                                    int[] iArr11113 = iArr3;
                                    i41 = iArr4[i38];
                                    if (i37 != 0) {
                                        int i7115 = i41 - i40;
                                        System.arraycopy(jArr4, i40, jArr9, i39, i7115);
                                        iArr8 = iArr5;
                                        System.arraycopy(iArr8, i40, iArr6, i39, i7115);
                                        System.arraycopy(iArr, i40, iArr7, i39, i7115);
                                    } else {
                                        iArr8 = iArr5;
                                    }
                                    while (i40 < i41) {
                                        int[] iArr11114 = iArr;
                                        int i7116 = i41;
                                        long[] jArr217 = jArr9;
                                        int[] iArr11115 = iArr8;
                                        long[] jArr218 = jArr3;
                                        jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                        if (i37 == 0) {
                                        }
                                        i39++;
                                        i40++;
                                        jArr3 = jArr218;
                                        iArr8 = iArr11115;
                                        i41 = i7116;
                                        iArr = iArr11114;
                                        jArr9 = jArr217;
                                    }
                                    int[] iArr11116 = iArr8;
                                    j16 += lVar2.f339h[i38];
                                    i38++;
                                    iArr3 = iArr11113;
                                    jArr3 = jArr3;
                                    iArr4 = iArr4;
                                    iArr = iArr;
                                    jArr4 = jArr4;
                                    iArr5 = iArr11116;
                                }
                                oVar = new o(lVar2, jArr9, iArr6, i7114, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                            }
                        }
                        arrayList = arrayList2;
                        arrayList.add(oVar);
                    }
                }
                i11 = i10;
                str = "";
                if (i11 == -1) {
                    str = "";
                } else {
                    a4.a.b bVarC20 = c0004a2.c(1953196132);
                    Objects.requireNonNull(bVarC20);
                    wVar = bVarC20.f215b;
                    wVar.D(8);
                    iE = (wVar.e() >> 24) & 255;
                    wVar.E(iE == 0 ? 8 : 16);
                    iE2 = wVar.e();
                    wVar.E(4);
                    i12 = wVar.f10476b;
                    if (iE == 0) {
                        i13 = 4;
                    } else {
                        i13 = 8;
                    }
                    i14 = 0;
                    while (true) {
                        if (i14 < i13) {
                            z12 = true;
                            break;
                        }
                        if (wVar.f10475a[i12 + i14] != -1) {
                            z12 = false;
                            break;
                        }
                        i14++;
                    }
                    if (z12) {
                        wVar.E(i13);
                    } else {
                        if (iE == 0) {
                            jX = wVar.u();
                        } else {
                            jX = wVar.x();
                        }
                        if (jX == 0) {
                        }
                        wVar.E(16);
                        iE3 = wVar.e();
                        int iE15 = wVar.e();
                        wVar.E(4);
                        int iE16 = wVar.e();
                        int iE17 = wVar.e();
                        j11 = jX;
                        if (iE3 != 0) {
                            if (iE3 != 0) {
                                if (iE3 != -65536) {
                                    i15 = 0;
                                } else {
                                    i15 = 0;
                                }
                            } else if (iE3 != -65536) {
                                i15 = 0;
                            } else {
                                i15 = 0;
                            }
                        } else if (iE3 != 0) {
                            if (iE3 != -65536) {
                                i15 = 0;
                            } else {
                                i15 = 0;
                            }
                        } else if (iE3 != -65536) {
                            i15 = 0;
                        } else {
                            i15 = 0;
                        }
                        if (j10 == -9223372036854775807L) {
                            j12 = j11;
                        } else {
                            j12 = j10;
                        }
                        wVar2 = bVarC6.f215b;
                        wVar2.D(8);
                        if (((wVar2.e() >> 24) & 255) == 0) {
                            i16 = 8;
                        } else {
                            i16 = 16;
                        }
                        wVar2.E(i16);
                        jU = wVar2.u();
                        jR = j12 != -9223372036854775807L ? g0.R(j12, 1000000L, jU) : -9223372036854775807L;
                        a4.a.C0004a c0004aB16 = c0004aB3.b(1835626086);
                        Objects.requireNonNull(c0004aB16);
                        a4.a.C0004a c0004aB17 = c0004aB16.b(1937007212);
                        Objects.requireNonNull(c0004aB17);
                        a4.a.b bVarC112 = c0004aB3.c(1835296868);
                        Objects.requireNonNull(bVarC112);
                        w wVar111 = bVarC112.f215b;
                        wVar111.D(8);
                        iE4 = (wVar111.e() >> 24) & 255;
                        if (iE4 == 0) {
                            i17 = 8;
                        } else {
                            i17 = 16;
                        }
                        wVar111.E(i17);
                        long jU4 = wVar111.u();
                        if (iE4 == 0) {
                            i18 = 4;
                        } else {
                            i18 = 8;
                        }
                        wVar111.E(i18);
                        int iY3 = wVar111.y();
                        StringBuilder sbC10 = a0.b.c("");
                        sbC10.append((char) (((iY3 >> 10) & 31) + 96));
                        sbC10.append((char) (((iY3 >> 5) & 31) + 96));
                        sbC10.append((char) ((iY3 & 31) + 96));
                        pairCreate = Pair.create(Long.valueOf(jU4), sbC10.toString());
                        a4.a.b bVarC113 = c0004aB17.c(1937011556);
                        Objects.requireNonNull(bVarC113);
                        dVarE = e(bVarC113.f215b, iE2, i15, (String) pairCreate.second, dVar, z11);
                        if (z10) {
                            str = "";
                            jArr = null;
                            jArr2 = null;
                        } else {
                            str = "";
                            jArr = null;
                            jArr2 = null;
                        }
                        if (dVarE.f231b != null) {
                            lVar = new l(iE2, i11, ((Long) pairCreate.first).longValue(), jU, jR, dVarE.f231b, dVarE.f233d, dVarE.f230a, dVarE.f232c, jArr, jArr2);
                            i19 = 1835626086;
                        }
                        lVarApply = dVar2.apply(lVar);
                        if (lVarApply == null) {
                            arrayList = arrayList2;
                            i20 = i51;
                        } else {
                            a4.a.C0004a c0004aB18 = c0004a2.b(1835297121);
                            Objects.requireNonNull(c0004aB18);
                            a4.a.C0004a c0004aB19 = c0004aB18.b(i19);
                            Objects.requireNonNull(c0004aB19);
                            c0004aB2 = c0004aB19.b(1937007212);
                            Objects.requireNonNull(c0004aB2);
                            bVarC = c0004aB2.c(1937011578);
                            if (bVarC != null) {
                                fVar = new e(bVarC, lVarApply.f337f);
                            } else {
                                bVarC2 = c0004aB2.c(1937013298);
                                if (bVarC2 == null) {
                                    throw i1.a("Track has no sample table size information", null);
                                }
                                fVar = new f(bVarC2);
                            }
                            iB = fVar.b();
                            if (iB == 0) {
                                oVar = new o(lVarApply, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                                arrayList2 = arrayList2;
                                i20 = i51;
                            } else {
                                bVarC3 = c0004aB2.c(1937007471);
                                if (bVarC3 == null) {
                                    bVarC3 = c0004aB2.c(1668232756);
                                    Objects.requireNonNull(bVarC3);
                                    z13 = true;
                                } else {
                                    z13 = false;
                                }
                                w wVar112 = bVarC3.f215b;
                                a4.a.b bVarC114 = c0004aB2.c(1937011555);
                                Objects.requireNonNull(bVarC114);
                                w wVar113 = bVarC114.f215b;
                                a4.a.b bVarC115 = c0004aB2.c(1937011827);
                                Objects.requireNonNull(bVarC115);
                                w wVar114 = bVarC115.f215b;
                                bVarC4 = c0004aB2.c(1937011571);
                                if (bVarC4 != null) {
                                    wVar3 = bVarC4.f215b;
                                } else {
                                    wVar3 = null;
                                }
                                bVarC5 = c0004aB2.c(1668576371);
                                if (bVarC5 != null) {
                                    wVar4 = bVarC5.f215b;
                                } else {
                                    wVar4 = null;
                                }
                                aVar = new a(wVar113, wVar112, z13);
                                wVar114.D(12);
                                iW = wVar114.w() - 1;
                                iW2 = wVar114.w();
                                iW3 = wVar114.w();
                                if (wVar4 != null) {
                                    wVar4.D(12);
                                    iW4 = wVar4.w();
                                } else {
                                    iW4 = 0;
                                }
                                if (wVar3 != null) {
                                    wVar3.D(12);
                                    iW6 = wVar3.w();
                                    if (iW6 > 0) {
                                        iW5 = wVar3.w() - 1;
                                    } else {
                                        iW5 = -1;
                                        wVar3 = null;
                                    }
                                } else {
                                    iW5 = -1;
                                    iW6 = 0;
                                }
                                iA = fVar.a();
                                String str7 = lVarApply.f337f.f11687s;
                                i20 = i51;
                                if (iA == -1) {
                                    z14 = false;
                                } else {
                                    z14 = false;
                                }
                                if (z14) {
                                    i42 = aVar.f217a;
                                    jArr11 = new long[i42];
                                    iArr9 = new int[i42];
                                    while (aVar.a()) {
                                        int i5118 = aVar.f218b;
                                        jArr11[i5118] = aVar.f220d;
                                        iArr9[i5118] = aVar.f219c;
                                    }
                                    j20 = iW3;
                                    i43 = 8192 / iA;
                                    i45 = 0;
                                    while (i44 < i42) {
                                        int i5119 = iArr9[i44];
                                        int i51110 = g0.f10384a;
                                        i45 += ((i5119 + i43) - 1) / i43;
                                    }
                                    jArr12 = new long[i45];
                                    iArr2 = new int[i45];
                                    jArr13 = new long[i45];
                                    iArr10 = new int[i45];
                                    i46 = 0;
                                    i47 = 0;
                                    i48 = 0;
                                    i29 = 0;
                                    while (i46 < i42) {
                                        int i51111 = iArr9[i46];
                                        j21 = jArr11[i46];
                                        int i51112 = i47;
                                        int i51113 = i42;
                                        iMax = i29;
                                        i49 = i51112;
                                        long[] jArr1114 = jArr11;
                                        i50 = i51111;
                                        while (i50 > 0) {
                                            int iMin5 = Math.min(i43, i50);
                                            jArr12[i49] = j21;
                                            iArr2[i49] = iA * iMin5;
                                            iMax = Math.max(iMax, iArr2[i49]);
                                            jArr13[i49] = ((long) i48) * j20;
                                            iArr10[i49] = 1;
                                            j21 += (long) iArr2[i49];
                                            i48 += iMin5;
                                            i50 -= iMin5;
                                            i49++;
                                            iArr9 = iArr9;
                                            iA = iA;
                                        }
                                        i46++;
                                        jArr11 = jArr1114;
                                        int i611116 = i49;
                                        i29 = iMax;
                                        i42 = i51113;
                                        i47 = i611116;
                                    }
                                    long j212 = j20 * ((long) i48);
                                    jArr4 = jArr12;
                                    iArr = iArr10;
                                    jArr3 = jArr13;
                                    lVar2 = lVarApply;
                                    j15 = j212;
                                } else {
                                    jArrCopyOf = new long[iB];
                                    iArrCopyOf = new int[iB];
                                    jArrCopyOf2 = new long[iB];
                                    iArrCopyOf2 = new int[iB];
                                    i21 = 0;
                                    j13 = 0;
                                    j14 = 0;
                                    iW7 = iW5;
                                    iE5 = 0;
                                    iW8 = 0;
                                    int i611117 = iW;
                                    i22 = iW4;
                                    i23 = iW3;
                                    i24 = iW2;
                                    i25 = 0;
                                    i26 = 0;
                                    while (true) {
                                        if (i26 >= iB) {
                                            i27 = i24;
                                            break;
                                        }
                                        zA = true;
                                        while (i21 == 0) {
                                            zA = aVar.a();
                                            if (!zA) {
                                                break;
                                                break;
                                            }
                                            int i611118 = i24;
                                            long j213 = aVar.f220d;
                                            i21 = aVar.f219c;
                                            j14 = j213;
                                            i24 = i611118;
                                            i23 = i23;
                                            iB = iB;
                                        }
                                        i30 = iB;
                                        i27 = i24;
                                        i31 = i23;
                                        if (!zA) {
                                            p.g("AtomParsers", "Unexpected end of chunk data");
                                            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i26);
                                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i26);
                                            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i26);
                                            iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i26);
                                            iB = i26;
                                            break;
                                        }
                                        if (wVar4 != null) {
                                            while (iW8 == 0) {
                                                iW8 = wVar4.w();
                                                iE5 = wVar4.e();
                                                i22--;
                                            }
                                            iW8--;
                                        }
                                        int i611119 = iE5;
                                        jArrCopyOf[i26] = j14;
                                        iArrCopyOf[i26] = fVar.c();
                                        if (iArrCopyOf[i26] > i25) {
                                            i25 = iArrCopyOf[i26];
                                        }
                                        jArrCopyOf2[i26] = j13 + ((long) i611119);
                                        if (wVar3 == null) {
                                            i32 = 1;
                                        } else {
                                            i32 = 0;
                                        }
                                        iArrCopyOf2[i26] = i32;
                                        if (i26 == iW7) {
                                            iArrCopyOf2[i26] = 1;
                                            iW6--;
                                            if (iW6 > 0) {
                                                Objects.requireNonNull(wVar3);
                                                iW7 = wVar3.w() - 1;
                                            }
                                        }
                                        int i629 = iW7;
                                        long[] jArr1115 = jArrCopyOf;
                                        j13 += (long) i31;
                                        iW9 = i27 - 1;
                                        if (iW9 == 0) {
                                            iE6 = i31;
                                        } else {
                                            iE6 = i31;
                                        }
                                        i24 = iW9;
                                        int i6210 = iE6;
                                        j14 += (long) iArrCopyOf[i26];
                                        i21--;
                                        i26++;
                                        iE5 = i611119;
                                        iW7 = i629;
                                        jArrCopyOf = jArr1115;
                                        i23 = i6210;
                                        iB = i30;
                                    }
                                    int i6211 = i21;
                                    j15 = j13 + ((long) iE5);
                                    if (wVar4 == null) {
                                        z15 = true;
                                        break;
                                    }
                                    while (true) {
                                        if (i22 <= 0) {
                                            z15 = true;
                                            break;
                                        }
                                        if (wVar4.w() != 0) {
                                            z15 = false;
                                            break;
                                        }
                                        wVar4.e();
                                        i22--;
                                    }
                                    if (iW6 != 0) {
                                        i28 = iW8;
                                        StringBuilder sbC11 = a0.b.c("Inconsistent stbl box for track ");
                                        lVar2 = lVarApply;
                                        a1.d.e(sbC11, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                        a1.d.e(sbC11, i27, ", remainingSamplesInChunk ", i6211, ", remainingTimestampDeltaChanges ");
                                        sbC11.append(i611117);
                                        sbC11.append(", remainingSamplesAtTimestampOffset ");
                                        sbC11.append(i28);
                                        if (z15) {
                                            str2 = ", ctts invalid";
                                        } else {
                                            str2 = str;
                                        }
                                        sbC11.append(str2);
                                        p.g("AtomParsers", sbC11.toString());
                                    } else {
                                        i28 = iW8;
                                        StringBuilder sbC12 = a0.b.c("Inconsistent stbl box for track ");
                                        lVar2 = lVarApply;
                                        a1.d.e(sbC12, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                        a1.d.e(sbC12, i27, ", remainingSamplesInChunk ", i6211, ", remainingTimestampDeltaChanges ");
                                        sbC12.append(i611117);
                                        sbC12.append(", remainingSamplesAtTimestampOffset ");
                                        sbC12.append(i28);
                                        if (z15) {
                                            str2 = ", ctts invalid";
                                        } else {
                                            str2 = str;
                                        }
                                        sbC12.append(str2);
                                        p.g("AtomParsers", sbC12.toString());
                                    }
                                    jArr3 = jArrCopyOf2;
                                    iArr = iArrCopyOf2;
                                    jArr4 = jArrCopyOf;
                                    iArr2 = iArrCopyOf;
                                    i29 = i25;
                                }
                                jR2 = g0.R(j15, 1000000L, lVar2.f334c);
                                jArr5 = lVar2.f339h;
                                if (jArr5 == null) {
                                    g0.S(jArr3, lVar2.f334c);
                                    oVar = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, jR2);
                                } else if (jArr5.length == 1) {
                                    jArr6 = lVar2.f339h;
                                    if (jArr6.length == 1) {
                                        i33 = 0;
                                        if (jArr6[0] == 0) {
                                            long[] jArr1116 = lVar2.f340i;
                                            Objects.requireNonNull(jArr1116);
                                            j19 = jArr1116[0];
                                            while (i33 < jArr3.length) {
                                                jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                i33++;
                                            }
                                            oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                            oVar = oVar2;
                                        }
                                    } else {
                                        i33 = 0;
                                    }
                                    if (lVar2.f333b == 1) {
                                        z16 = 1;
                                    } else {
                                        z16 = i33;
                                    }
                                    iArr3 = new int[jArr6.length];
                                    iArr4 = new int[jArr6.length];
                                    jArr7 = lVar2.f340i;
                                    Objects.requireNonNull(jArr7);
                                    i34 = i33;
                                    i35 = i34;
                                    i36 = i35;
                                    while (true) {
                                        jArr8 = lVar2.f339h;
                                        if (i33 >= jArr8.length) {
                                            break;
                                            break;
                                        }
                                        int i6111110 = iB;
                                        j18 = jArr7[i33];
                                        if (j18 != -1) {
                                            int i6111111 = i34;
                                            int i6111112 = i36;
                                            long jR15 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                            iArr3[i33] = g0.f(jArr3, j18, true);
                                            iArr4[i33] = g0.b(jArr3, j18 + jR15, z16);
                                            while (iArr3[i33] < iArr4[i33]) {
                                                iArr3[i33] = iArr3[i33] + 1;
                                            }
                                            i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                            i34 = (i6111112 == iArr3[i33] ? 0 : 1) | i6111111;
                                            i36 = iArr4[i33];
                                        }
                                        i33++;
                                        jArr7 = jArr7;
                                        iB = i6111110;
                                        iArr2 = iArr2;
                                    }
                                    iArr5 = iArr2;
                                    i37 = i34 | (i35 == iB ? 0 : 1);
                                    if (i37 != 0) {
                                        jArr9 = new long[i35];
                                    } else {
                                        jArr9 = jArr4;
                                    }
                                    if (i37 != 0) {
                                        iArr6 = new int[i35];
                                    } else {
                                        iArr6 = iArr5;
                                    }
                                    if (i37 != 0) {
                                        i29 = 0;
                                    }
                                    if (i37 != 0) {
                                        iArr7 = new int[i35];
                                    } else {
                                        iArr7 = iArr;
                                    }
                                    jArr10 = new long[i35];
                                    i38 = 0;
                                    i39 = 0;
                                    int i7117 = i29;
                                    j16 = 0;
                                    while (i38 < lVar2.f339h.length) {
                                        j17 = lVar2.f340i[i38];
                                        i40 = iArr3[i38];
                                        int[] iArr11117 = iArr3;
                                        i41 = iArr4[i38];
                                        if (i37 != 0) {
                                            int i7118 = i41 - i40;
                                            System.arraycopy(jArr4, i40, jArr9, i39, i7118);
                                            iArr8 = iArr5;
                                            System.arraycopy(iArr8, i40, iArr6, i39, i7118);
                                            System.arraycopy(iArr, i40, iArr7, i39, i7118);
                                        } else {
                                            iArr8 = iArr5;
                                        }
                                        while (i40 < i41) {
                                            int[] iArr11118 = iArr;
                                            int i7119 = i41;
                                            long[] jArr219 = jArr9;
                                            int[] iArr11119 = iArr8;
                                            long[] jArr2110 = jArr3;
                                            jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                            if (i37 == 0) {
                                            }
                                            i39++;
                                            i40++;
                                            jArr3 = jArr2110;
                                            iArr8 = iArr11119;
                                            i41 = i7119;
                                            iArr = iArr11118;
                                            jArr9 = jArr219;
                                        }
                                        int[] iArr111110 = iArr8;
                                        j16 += lVar2.f339h[i38];
                                        i38++;
                                        iArr3 = iArr11117;
                                        jArr3 = jArr3;
                                        iArr4 = iArr4;
                                        iArr = iArr;
                                        jArr4 = jArr4;
                                        iArr5 = iArr111110;
                                    }
                                    oVar = new o(lVar2, jArr9, iArr6, i7117, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                } else {
                                    jArr6 = lVar2.f339h;
                                    if (jArr6.length == 1) {
                                        i33 = 0;
                                        if (jArr6[0] == 0) {
                                            long[] jArr1117 = lVar2.f340i;
                                            Objects.requireNonNull(jArr1117);
                                            j19 = jArr1117[0];
                                            while (i33 < jArr3.length) {
                                                jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                                i33++;
                                            }
                                            oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                            oVar = oVar2;
                                        }
                                    } else {
                                        i33 = 0;
                                    }
                                    if (lVar2.f333b == 1) {
                                        z16 = 1;
                                    } else {
                                        z16 = i33;
                                    }
                                    iArr3 = new int[jArr6.length];
                                    iArr4 = new int[jArr6.length];
                                    jArr7 = lVar2.f340i;
                                    Objects.requireNonNull(jArr7);
                                    i34 = i33;
                                    i35 = i34;
                                    i36 = i35;
                                    while (true) {
                                        jArr8 = lVar2.f339h;
                                        if (i33 >= jArr8.length) {
                                            break;
                                            break;
                                        }
                                        int i6111113 = iB;
                                        j18 = jArr7[i33];
                                        if (j18 != -1) {
                                            int i6111114 = i34;
                                            int i6111115 = i36;
                                            long jR16 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                            iArr3[i33] = g0.f(jArr3, j18, true);
                                            iArr4[i33] = g0.b(jArr3, j18 + jR16, z16);
                                            while (iArr3[i33] < iArr4[i33]) {
                                                iArr3[i33] = iArr3[i33] + 1;
                                            }
                                            i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                            i34 = (i6111115 == iArr3[i33] ? 0 : 1) | i6111114;
                                            i36 = iArr4[i33];
                                        }
                                        i33++;
                                        jArr7 = jArr7;
                                        iB = i6111113;
                                        iArr2 = iArr2;
                                    }
                                    iArr5 = iArr2;
                                    i37 = i34 | (i35 == iB ? 0 : 1);
                                    if (i37 != 0) {
                                        jArr9 = new long[i35];
                                    } else {
                                        jArr9 = jArr4;
                                    }
                                    if (i37 != 0) {
                                        iArr6 = new int[i35];
                                    } else {
                                        iArr6 = iArr5;
                                    }
                                    if (i37 != 0) {
                                        i29 = 0;
                                    }
                                    if (i37 != 0) {
                                        iArr7 = new int[i35];
                                    } else {
                                        iArr7 = iArr;
                                    }
                                    jArr10 = new long[i35];
                                    i38 = 0;
                                    i39 = 0;
                                    int i71110 = i29;
                                    j16 = 0;
                                    while (i38 < lVar2.f339h.length) {
                                        j17 = lVar2.f340i[i38];
                                        i40 = iArr3[i38];
                                        int[] iArr111111 = iArr3;
                                        i41 = iArr4[i38];
                                        if (i37 != 0) {
                                            int i71111 = i41 - i40;
                                            System.arraycopy(jArr4, i40, jArr9, i39, i71111);
                                            iArr8 = iArr5;
                                            System.arraycopy(iArr8, i40, iArr6, i39, i71111);
                                            System.arraycopy(iArr, i40, iArr7, i39, i71111);
                                        } else {
                                            iArr8 = iArr5;
                                        }
                                        while (i40 < i41) {
                                            int[] iArr111112 = iArr;
                                            int i71112 = i41;
                                            long[] jArr2111 = jArr9;
                                            int[] iArr111113 = iArr8;
                                            long[] jArr2112 = jArr3;
                                            jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                            if (i37 == 0) {
                                            }
                                            i39++;
                                            i40++;
                                            jArr3 = jArr2112;
                                            iArr8 = iArr111113;
                                            i41 = i71112;
                                            iArr = iArr111112;
                                            jArr9 = jArr2111;
                                        }
                                        int[] iArr111114 = iArr8;
                                        j16 += lVar2.f339h[i38];
                                        i38++;
                                        iArr3 = iArr111111;
                                        jArr3 = jArr3;
                                        iArr4 = iArr4;
                                        iArr = iArr;
                                        jArr4 = jArr4;
                                        iArr5 = iArr111114;
                                    }
                                    oVar = new o(lVar2, jArr9, iArr6, i71110, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                                }
                            }
                            arrayList = arrayList2;
                            arrayList.add(oVar);
                        }
                    }
                    jX = -9223372036854775807L;
                    wVar.E(16);
                    iE3 = wVar.e();
                    int iE18 = wVar.e();
                    wVar.E(4);
                    int iE19 = wVar.e();
                    int iE110 = wVar.e();
                    j11 = jX;
                    if (iE3 != 0) {
                        if (iE3 != 0) {
                            if (iE3 != -65536) {
                                i15 = 0;
                            } else {
                                i15 = 0;
                            }
                        } else if (iE3 != -65536) {
                            i15 = 0;
                        } else {
                            i15 = 0;
                        }
                    } else if (iE3 != 0) {
                        if (iE3 != -65536) {
                            i15 = 0;
                        } else {
                            i15 = 0;
                        }
                    } else if (iE3 != -65536) {
                        i15 = 0;
                    } else {
                        i15 = 0;
                    }
                    if (j10 == -9223372036854775807L) {
                        j12 = j11;
                    } else {
                        j12 = j10;
                    }
                    wVar2 = bVarC6.f215b;
                    wVar2.D(8);
                    if (((wVar2.e() >> 24) & 255) == 0) {
                        i16 = 8;
                    } else {
                        i16 = 16;
                    }
                    wVar2.E(i16);
                    jU = wVar2.u();
                    jR = j12 != -9223372036854775807L ? g0.R(j12, 1000000L, jU) : -9223372036854775807L;
                    a4.a.C0004a c0004aB110 = c0004aB3.b(1835626086);
                    Objects.requireNonNull(c0004aB110);
                    a4.a.C0004a c0004aB111 = c0004aB110.b(1937007212);
                    Objects.requireNonNull(c0004aB111);
                    a4.a.b bVarC116 = c0004aB3.c(1835296868);
                    Objects.requireNonNull(bVarC116);
                    w wVar115 = bVarC116.f215b;
                    wVar115.D(8);
                    iE4 = (wVar115.e() >> 24) & 255;
                    if (iE4 == 0) {
                        i17 = 8;
                    } else {
                        i17 = 16;
                    }
                    wVar115.E(i17);
                    long jU5 = wVar115.u();
                    if (iE4 == 0) {
                        i18 = 4;
                    } else {
                        i18 = 8;
                    }
                    wVar115.E(i18);
                    int iY4 = wVar115.y();
                    StringBuilder sbC13 = a0.b.c("");
                    sbC13.append((char) (((iY4 >> 10) & 31) + 96));
                    sbC13.append((char) (((iY4 >> 5) & 31) + 96));
                    sbC13.append((char) ((iY4 & 31) + 96));
                    pairCreate = Pair.create(Long.valueOf(jU5), sbC13.toString());
                    a4.a.b bVarC117 = c0004aB111.c(1937011556);
                    Objects.requireNonNull(bVarC117);
                    dVarE = e(bVarC117.f215b, iE2, i15, (String) pairCreate.second, dVar, z11);
                    if (z10) {
                        str = "";
                        jArr = null;
                        jArr2 = null;
                    } else {
                        str = "";
                        jArr = null;
                        jArr2 = null;
                    }
                    if (dVarE.f231b != null) {
                        lVar = new l(iE2, i11, ((Long) pairCreate.first).longValue(), jU, jR, dVarE.f231b, dVarE.f233d, dVarE.f230a, dVarE.f232c, jArr, jArr2);
                        i19 = 1835626086;
                    }
                    lVarApply = dVar2.apply(lVar);
                    if (lVarApply == null) {
                        arrayList = arrayList2;
                        i20 = i51;
                    } else {
                        a4.a.C0004a c0004aB112 = c0004a2.b(1835297121);
                        Objects.requireNonNull(c0004aB112);
                        a4.a.C0004a c0004aB113 = c0004aB112.b(i19);
                        Objects.requireNonNull(c0004aB113);
                        c0004aB2 = c0004aB113.b(1937007212);
                        Objects.requireNonNull(c0004aB2);
                        bVarC = c0004aB2.c(1937011578);
                        if (bVarC != null) {
                            fVar = new e(bVarC, lVarApply.f337f);
                        } else {
                            bVarC2 = c0004aB2.c(1937013298);
                            if (bVarC2 == null) {
                                throw i1.a("Track has no sample table size information", null);
                            }
                            fVar = new f(bVarC2);
                        }
                        iB = fVar.b();
                        if (iB == 0) {
                            oVar = new o(lVarApply, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                            arrayList2 = arrayList2;
                            i20 = i51;
                        } else {
                            bVarC3 = c0004aB2.c(1937007471);
                            if (bVarC3 == null) {
                                bVarC3 = c0004aB2.c(1668232756);
                                Objects.requireNonNull(bVarC3);
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            w wVar116 = bVarC3.f215b;
                            a4.a.b bVarC118 = c0004aB2.c(1937011555);
                            Objects.requireNonNull(bVarC118);
                            w wVar117 = bVarC118.f215b;
                            a4.a.b bVarC119 = c0004aB2.c(1937011827);
                            Objects.requireNonNull(bVarC119);
                            w wVar118 = bVarC119.f215b;
                            bVarC4 = c0004aB2.c(1937011571);
                            if (bVarC4 != null) {
                                wVar3 = bVarC4.f215b;
                            } else {
                                wVar3 = null;
                            }
                            bVarC5 = c0004aB2.c(1668576371);
                            if (bVarC5 != null) {
                                wVar4 = bVarC5.f215b;
                            } else {
                                wVar4 = null;
                            }
                            aVar = new a(wVar117, wVar116, z13);
                            wVar118.D(12);
                            iW = wVar118.w() - 1;
                            iW2 = wVar118.w();
                            iW3 = wVar118.w();
                            if (wVar4 != null) {
                                wVar4.D(12);
                                iW4 = wVar4.w();
                            } else {
                                iW4 = 0;
                            }
                            if (wVar3 != null) {
                                wVar3.D(12);
                                iW6 = wVar3.w();
                                if (iW6 > 0) {
                                    iW5 = wVar3.w() - 1;
                                } else {
                                    iW5 = -1;
                                    wVar3 = null;
                                }
                            } else {
                                iW5 = -1;
                                iW6 = 0;
                            }
                            iA = fVar.a();
                            String str8 = lVarApply.f337f.f11687s;
                            i20 = i51;
                            if (iA == -1) {
                                z14 = false;
                            } else {
                                z14 = false;
                            }
                            if (z14) {
                                i42 = aVar.f217a;
                                jArr11 = new long[i42];
                                iArr9 = new int[i42];
                                while (aVar.a()) {
                                    int i51114 = aVar.f218b;
                                    jArr11[i51114] = aVar.f220d;
                                    iArr9[i51114] = aVar.f219c;
                                }
                                j20 = iW3;
                                i43 = 8192 / iA;
                                i45 = 0;
                                while (i44 < i42) {
                                    int i51115 = iArr9[i44];
                                    int i51116 = g0.f10384a;
                                    i45 += ((i51115 + i43) - 1) / i43;
                                }
                                jArr12 = new long[i45];
                                iArr2 = new int[i45];
                                jArr13 = new long[i45];
                                iArr10 = new int[i45];
                                i46 = 0;
                                i47 = 0;
                                i48 = 0;
                                i29 = 0;
                                while (i46 < i42) {
                                    int i51117 = iArr9[i46];
                                    j21 = jArr11[i46];
                                    int i51118 = i47;
                                    int i51119 = i42;
                                    iMax = i29;
                                    i49 = i51118;
                                    long[] jArr1118 = jArr11;
                                    i50 = i51117;
                                    while (i50 > 0) {
                                        int iMin6 = Math.min(i43, i50);
                                        jArr12[i49] = j21;
                                        iArr2[i49] = iA * iMin6;
                                        iMax = Math.max(iMax, iArr2[i49]);
                                        jArr13[i49] = ((long) i48) * j20;
                                        iArr10[i49] = 1;
                                        j21 += (long) iArr2[i49];
                                        i48 += iMin6;
                                        i50 -= iMin6;
                                        i49++;
                                        iArr9 = iArr9;
                                        iA = iA;
                                    }
                                    i46++;
                                    jArr11 = jArr1118;
                                    int i6111116 = i49;
                                    i29 = iMax;
                                    i42 = i51119;
                                    i47 = i6111116;
                                }
                                long j214 = j20 * ((long) i48);
                                jArr4 = jArr12;
                                iArr = iArr10;
                                jArr3 = jArr13;
                                lVar2 = lVarApply;
                                j15 = j214;
                            } else {
                                jArrCopyOf = new long[iB];
                                iArrCopyOf = new int[iB];
                                jArrCopyOf2 = new long[iB];
                                iArrCopyOf2 = new int[iB];
                                i21 = 0;
                                j13 = 0;
                                j14 = 0;
                                iW7 = iW5;
                                iE5 = 0;
                                iW8 = 0;
                                int i6111117 = iW;
                                i22 = iW4;
                                i23 = iW3;
                                i24 = iW2;
                                i25 = 0;
                                i26 = 0;
                                while (true) {
                                    if (i26 >= iB) {
                                        i27 = i24;
                                        break;
                                    }
                                    zA = true;
                                    while (i21 == 0) {
                                        zA = aVar.a();
                                        if (!zA) {
                                            break;
                                            break;
                                        }
                                        int i6111118 = i24;
                                        long j215 = aVar.f220d;
                                        i21 = aVar.f219c;
                                        j14 = j215;
                                        i24 = i6111118;
                                        i23 = i23;
                                        iB = iB;
                                    }
                                    i30 = iB;
                                    i27 = i24;
                                    i31 = i23;
                                    if (!zA) {
                                        p.g("AtomParsers", "Unexpected end of chunk data");
                                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i26);
                                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i26);
                                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i26);
                                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i26);
                                        iB = i26;
                                        break;
                                    }
                                    if (wVar4 != null) {
                                        while (iW8 == 0) {
                                            iW8 = wVar4.w();
                                            iE5 = wVar4.e();
                                            i22--;
                                        }
                                        iW8--;
                                    }
                                    int i6111119 = iE5;
                                    jArrCopyOf[i26] = j14;
                                    iArrCopyOf[i26] = fVar.c();
                                    if (iArrCopyOf[i26] > i25) {
                                        i25 = iArrCopyOf[i26];
                                    }
                                    jArrCopyOf2[i26] = j13 + ((long) i6111119);
                                    if (wVar3 == null) {
                                        i32 = 1;
                                    } else {
                                        i32 = 0;
                                    }
                                    iArrCopyOf2[i26] = i32;
                                    if (i26 == iW7) {
                                        iArrCopyOf2[i26] = 1;
                                        iW6--;
                                        if (iW6 > 0) {
                                            Objects.requireNonNull(wVar3);
                                            iW7 = wVar3.w() - 1;
                                        }
                                    }
                                    int i6212 = iW7;
                                    long[] jArr1119 = jArrCopyOf;
                                    j13 += (long) i31;
                                    iW9 = i27 - 1;
                                    if (iW9 == 0) {
                                        iE6 = i31;
                                    } else {
                                        iE6 = i31;
                                    }
                                    i24 = iW9;
                                    int i6213 = iE6;
                                    j14 += (long) iArrCopyOf[i26];
                                    i21--;
                                    i26++;
                                    iE5 = i6111119;
                                    iW7 = i6212;
                                    jArrCopyOf = jArr1119;
                                    i23 = i6213;
                                    iB = i30;
                                }
                                int i6214 = i21;
                                j15 = j13 + ((long) iE5);
                                if (wVar4 == null) {
                                    z15 = true;
                                    break;
                                }
                                while (true) {
                                    if (i22 <= 0) {
                                        z15 = true;
                                        break;
                                    }
                                    if (wVar4.w() != 0) {
                                        z15 = false;
                                        break;
                                    }
                                    wVar4.e();
                                    i22--;
                                }
                                if (iW6 != 0) {
                                    i28 = iW8;
                                    StringBuilder sbC14 = a0.b.c("Inconsistent stbl box for track ");
                                    lVar2 = lVarApply;
                                    a1.d.e(sbC14, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                    a1.d.e(sbC14, i27, ", remainingSamplesInChunk ", i6214, ", remainingTimestampDeltaChanges ");
                                    sbC14.append(i6111117);
                                    sbC14.append(", remainingSamplesAtTimestampOffset ");
                                    sbC14.append(i28);
                                    if (z15) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = str;
                                    }
                                    sbC14.append(str2);
                                    p.g("AtomParsers", sbC14.toString());
                                } else {
                                    i28 = iW8;
                                    StringBuilder sbC15 = a0.b.c("Inconsistent stbl box for track ");
                                    lVar2 = lVarApply;
                                    a1.d.e(sbC15, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                    a1.d.e(sbC15, i27, ", remainingSamplesInChunk ", i6214, ", remainingTimestampDeltaChanges ");
                                    sbC15.append(i6111117);
                                    sbC15.append(", remainingSamplesAtTimestampOffset ");
                                    sbC15.append(i28);
                                    if (z15) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = str;
                                    }
                                    sbC15.append(str2);
                                    p.g("AtomParsers", sbC15.toString());
                                }
                                jArr3 = jArrCopyOf2;
                                iArr = iArrCopyOf2;
                                jArr4 = jArrCopyOf;
                                iArr2 = iArrCopyOf;
                                i29 = i25;
                            }
                            jR2 = g0.R(j15, 1000000L, lVar2.f334c);
                            jArr5 = lVar2.f339h;
                            if (jArr5 == null) {
                                g0.S(jArr3, lVar2.f334c);
                                oVar = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, jR2);
                            } else if (jArr5.length == 1) {
                                jArr6 = lVar2.f339h;
                                if (jArr6.length == 1) {
                                    i33 = 0;
                                    if (jArr6[0] == 0) {
                                        long[] jArr11110 = lVar2.f340i;
                                        Objects.requireNonNull(jArr11110);
                                        j19 = jArr11110[0];
                                        while (i33 < jArr3.length) {
                                            jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                            i33++;
                                        }
                                        oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                        oVar = oVar2;
                                    }
                                } else {
                                    i33 = 0;
                                }
                                if (lVar2.f333b == 1) {
                                    z16 = 1;
                                } else {
                                    z16 = i33;
                                }
                                iArr3 = new int[jArr6.length];
                                iArr4 = new int[jArr6.length];
                                jArr7 = lVar2.f340i;
                                Objects.requireNonNull(jArr7);
                                i34 = i33;
                                i35 = i34;
                                i36 = i35;
                                while (true) {
                                    jArr8 = lVar2.f339h;
                                    if (i33 >= jArr8.length) {
                                        break;
                                        break;
                                    }
                                    int i61111110 = iB;
                                    j18 = jArr7[i33];
                                    if (j18 != -1) {
                                        int i61111111 = i34;
                                        int i61111112 = i36;
                                        long jR17 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                        iArr3[i33] = g0.f(jArr3, j18, true);
                                        iArr4[i33] = g0.b(jArr3, j18 + jR17, z16);
                                        while (iArr3[i33] < iArr4[i33]) {
                                            iArr3[i33] = iArr3[i33] + 1;
                                        }
                                        i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                        i34 = (i61111112 == iArr3[i33] ? 0 : 1) | i61111111;
                                        i36 = iArr4[i33];
                                    }
                                    i33++;
                                    jArr7 = jArr7;
                                    iB = i61111110;
                                    iArr2 = iArr2;
                                }
                                iArr5 = iArr2;
                                i37 = i34 | (i35 == iB ? 0 : 1);
                                if (i37 != 0) {
                                    jArr9 = new long[i35];
                                } else {
                                    jArr9 = jArr4;
                                }
                                if (i37 != 0) {
                                    iArr6 = new int[i35];
                                } else {
                                    iArr6 = iArr5;
                                }
                                if (i37 != 0) {
                                    i29 = 0;
                                }
                                if (i37 != 0) {
                                    iArr7 = new int[i35];
                                } else {
                                    iArr7 = iArr;
                                }
                                jArr10 = new long[i35];
                                i38 = 0;
                                i39 = 0;
                                int i71113 = i29;
                                j16 = 0;
                                while (i38 < lVar2.f339h.length) {
                                    j17 = lVar2.f340i[i38];
                                    i40 = iArr3[i38];
                                    int[] iArr111115 = iArr3;
                                    i41 = iArr4[i38];
                                    if (i37 != 0) {
                                        int i71114 = i41 - i40;
                                        System.arraycopy(jArr4, i40, jArr9, i39, i71114);
                                        iArr8 = iArr5;
                                        System.arraycopy(iArr8, i40, iArr6, i39, i71114);
                                        System.arraycopy(iArr, i40, iArr7, i39, i71114);
                                    } else {
                                        iArr8 = iArr5;
                                    }
                                    while (i40 < i41) {
                                        int[] iArr111116 = iArr;
                                        int i71115 = i41;
                                        long[] jArr2113 = jArr9;
                                        int[] iArr111117 = iArr8;
                                        long[] jArr2114 = jArr3;
                                        jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                        if (i37 == 0) {
                                        }
                                        i39++;
                                        i40++;
                                        jArr3 = jArr2114;
                                        iArr8 = iArr111117;
                                        i41 = i71115;
                                        iArr = iArr111116;
                                        jArr9 = jArr2113;
                                    }
                                    int[] iArr111118 = iArr8;
                                    j16 += lVar2.f339h[i38];
                                    i38++;
                                    iArr3 = iArr111115;
                                    jArr3 = jArr3;
                                    iArr4 = iArr4;
                                    iArr = iArr;
                                    jArr4 = jArr4;
                                    iArr5 = iArr111118;
                                }
                                oVar = new o(lVar2, jArr9, iArr6, i71113, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                            } else {
                                jArr6 = lVar2.f339h;
                                if (jArr6.length == 1) {
                                    i33 = 0;
                                    if (jArr6[0] == 0) {
                                        long[] jArr11111 = lVar2.f340i;
                                        Objects.requireNonNull(jArr11111);
                                        j19 = jArr11111[0];
                                        while (i33 < jArr3.length) {
                                            jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                            i33++;
                                        }
                                        oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                        oVar = oVar2;
                                    }
                                } else {
                                    i33 = 0;
                                }
                                if (lVar2.f333b == 1) {
                                    z16 = 1;
                                } else {
                                    z16 = i33;
                                }
                                iArr3 = new int[jArr6.length];
                                iArr4 = new int[jArr6.length];
                                jArr7 = lVar2.f340i;
                                Objects.requireNonNull(jArr7);
                                i34 = i33;
                                i35 = i34;
                                i36 = i35;
                                while (true) {
                                    jArr8 = lVar2.f339h;
                                    if (i33 >= jArr8.length) {
                                        break;
                                        break;
                                    }
                                    int i61111113 = iB;
                                    j18 = jArr7[i33];
                                    if (j18 != -1) {
                                        int i61111114 = i34;
                                        int i61111115 = i36;
                                        long jR18 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                        iArr3[i33] = g0.f(jArr3, j18, true);
                                        iArr4[i33] = g0.b(jArr3, j18 + jR18, z16);
                                        while (iArr3[i33] < iArr4[i33]) {
                                            iArr3[i33] = iArr3[i33] + 1;
                                        }
                                        i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                        i34 = (i61111115 == iArr3[i33] ? 0 : 1) | i61111114;
                                        i36 = iArr4[i33];
                                    }
                                    i33++;
                                    jArr7 = jArr7;
                                    iB = i61111113;
                                    iArr2 = iArr2;
                                }
                                iArr5 = iArr2;
                                i37 = i34 | (i35 == iB ? 0 : 1);
                                if (i37 != 0) {
                                    jArr9 = new long[i35];
                                } else {
                                    jArr9 = jArr4;
                                }
                                if (i37 != 0) {
                                    iArr6 = new int[i35];
                                } else {
                                    iArr6 = iArr5;
                                }
                                if (i37 != 0) {
                                    i29 = 0;
                                }
                                if (i37 != 0) {
                                    iArr7 = new int[i35];
                                } else {
                                    iArr7 = iArr;
                                }
                                jArr10 = new long[i35];
                                i38 = 0;
                                i39 = 0;
                                int i71116 = i29;
                                j16 = 0;
                                while (i38 < lVar2.f339h.length) {
                                    j17 = lVar2.f340i[i38];
                                    i40 = iArr3[i38];
                                    int[] iArr111119 = iArr3;
                                    i41 = iArr4[i38];
                                    if (i37 != 0) {
                                        int i71117 = i41 - i40;
                                        System.arraycopy(jArr4, i40, jArr9, i39, i71117);
                                        iArr8 = iArr5;
                                        System.arraycopy(iArr8, i40, iArr6, i39, i71117);
                                        System.arraycopy(iArr, i40, iArr7, i39, i71117);
                                    } else {
                                        iArr8 = iArr5;
                                    }
                                    while (i40 < i41) {
                                        int[] iArr1111110 = iArr;
                                        int i71118 = i41;
                                        long[] jArr2115 = jArr9;
                                        int[] iArr1111111 = iArr8;
                                        long[] jArr2116 = jArr3;
                                        jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                        if (i37 == 0) {
                                        }
                                        i39++;
                                        i40++;
                                        jArr3 = jArr2116;
                                        iArr8 = iArr1111111;
                                        i41 = i71118;
                                        iArr = iArr1111110;
                                        jArr9 = jArr2115;
                                    }
                                    int[] iArr1111112 = iArr8;
                                    j16 += lVar2.f339h[i38];
                                    i38++;
                                    iArr3 = iArr111119;
                                    jArr3 = jArr3;
                                    iArr4 = iArr4;
                                    iArr = iArr;
                                    jArr4 = jArr4;
                                    iArr5 = iArr1111112;
                                }
                                oVar = new o(lVar2, jArr9, iArr6, i71116, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                            }
                        }
                        arrayList = arrayList2;
                        arrayList.add(oVar);
                    }
                }
                lVar = null;
                i19 = 1835626086;
                lVarApply = dVar2.apply(lVar);
                if (lVarApply == null) {
                    arrayList = arrayList2;
                    i20 = i51;
                } else {
                    a4.a.C0004a c0004aB114 = c0004a2.b(1835297121);
                    Objects.requireNonNull(c0004aB114);
                    a4.a.C0004a c0004aB115 = c0004aB114.b(i19);
                    Objects.requireNonNull(c0004aB115);
                    c0004aB2 = c0004aB115.b(1937007212);
                    Objects.requireNonNull(c0004aB2);
                    bVarC = c0004aB2.c(1937011578);
                    if (bVarC != null) {
                        fVar = new e(bVarC, lVarApply.f337f);
                    } else {
                        bVarC2 = c0004aB2.c(1937013298);
                        if (bVarC2 == null) {
                            throw i1.a("Track has no sample table size information", null);
                        }
                        fVar = new f(bVarC2);
                    }
                    iB = fVar.b();
                    if (iB == 0) {
                        oVar = new o(lVarApply, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                        arrayList2 = arrayList2;
                        i20 = i51;
                    } else {
                        bVarC3 = c0004aB2.c(1937007471);
                        if (bVarC3 == null) {
                            bVarC3 = c0004aB2.c(1668232756);
                            Objects.requireNonNull(bVarC3);
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        w wVar119 = bVarC3.f215b;
                        a4.a.b bVarC1110 = c0004aB2.c(1937011555);
                        Objects.requireNonNull(bVarC1110);
                        w wVar1110 = bVarC1110.f215b;
                        a4.a.b bVarC1111 = c0004aB2.c(1937011827);
                        Objects.requireNonNull(bVarC1111);
                        w wVar1111 = bVarC1111.f215b;
                        bVarC4 = c0004aB2.c(1937011571);
                        if (bVarC4 != null) {
                            wVar3 = bVarC4.f215b;
                        } else {
                            wVar3 = null;
                        }
                        bVarC5 = c0004aB2.c(1668576371);
                        if (bVarC5 != null) {
                            wVar4 = bVarC5.f215b;
                        } else {
                            wVar4 = null;
                        }
                        aVar = new a(wVar1110, wVar119, z13);
                        wVar1111.D(12);
                        iW = wVar1111.w() - 1;
                        iW2 = wVar1111.w();
                        iW3 = wVar1111.w();
                        if (wVar4 != null) {
                            wVar4.D(12);
                            iW4 = wVar4.w();
                        } else {
                            iW4 = 0;
                        }
                        if (wVar3 != null) {
                            wVar3.D(12);
                            iW6 = wVar3.w();
                            if (iW6 > 0) {
                                iW5 = wVar3.w() - 1;
                            } else {
                                iW5 = -1;
                                wVar3 = null;
                            }
                        } else {
                            iW5 = -1;
                            iW6 = 0;
                        }
                        iA = fVar.a();
                        String str9 = lVarApply.f337f.f11687s;
                        i20 = i51;
                        if (iA == -1) {
                            z14 = false;
                        } else {
                            z14 = false;
                        }
                        if (z14) {
                            i42 = aVar.f217a;
                            jArr11 = new long[i42];
                            iArr9 = new int[i42];
                            while (aVar.a()) {
                                int i511110 = aVar.f218b;
                                jArr11[i511110] = aVar.f220d;
                                iArr9[i511110] = aVar.f219c;
                            }
                            j20 = iW3;
                            i43 = 8192 / iA;
                            i45 = 0;
                            while (i44 < i42) {
                                int i511111 = iArr9[i44];
                                int i511112 = g0.f10384a;
                                i45 += ((i511111 + i43) - 1) / i43;
                            }
                            jArr12 = new long[i45];
                            iArr2 = new int[i45];
                            jArr13 = new long[i45];
                            iArr10 = new int[i45];
                            i46 = 0;
                            i47 = 0;
                            i48 = 0;
                            i29 = 0;
                            while (i46 < i42) {
                                int i511113 = iArr9[i46];
                                j21 = jArr11[i46];
                                int i511114 = i47;
                                int i511115 = i42;
                                iMax = i29;
                                i49 = i511114;
                                long[] jArr11112 = jArr11;
                                i50 = i511113;
                                while (i50 > 0) {
                                    int iMin7 = Math.min(i43, i50);
                                    jArr12[i49] = j21;
                                    iArr2[i49] = iA * iMin7;
                                    iMax = Math.max(iMax, iArr2[i49]);
                                    jArr13[i49] = ((long) i48) * j20;
                                    iArr10[i49] = 1;
                                    j21 += (long) iArr2[i49];
                                    i48 += iMin7;
                                    i50 -= iMin7;
                                    i49++;
                                    iArr9 = iArr9;
                                    iA = iA;
                                }
                                i46++;
                                jArr11 = jArr11112;
                                int i61111116 = i49;
                                i29 = iMax;
                                i42 = i511115;
                                i47 = i61111116;
                            }
                            long j216 = j20 * ((long) i48);
                            jArr4 = jArr12;
                            iArr = iArr10;
                            jArr3 = jArr13;
                            lVar2 = lVarApply;
                            j15 = j216;
                        } else {
                            jArrCopyOf = new long[iB];
                            iArrCopyOf = new int[iB];
                            jArrCopyOf2 = new long[iB];
                            iArrCopyOf2 = new int[iB];
                            i21 = 0;
                            j13 = 0;
                            j14 = 0;
                            iW7 = iW5;
                            iE5 = 0;
                            iW8 = 0;
                            int i61111117 = iW;
                            i22 = iW4;
                            i23 = iW3;
                            i24 = iW2;
                            i25 = 0;
                            i26 = 0;
                            while (true) {
                                if (i26 >= iB) {
                                    i27 = i24;
                                    break;
                                }
                                zA = true;
                                while (i21 == 0) {
                                    zA = aVar.a();
                                    if (!zA) {
                                        break;
                                        break;
                                    }
                                    int i61111118 = i24;
                                    long j217 = aVar.f220d;
                                    i21 = aVar.f219c;
                                    j14 = j217;
                                    i24 = i61111118;
                                    i23 = i23;
                                    iB = iB;
                                }
                                i30 = iB;
                                i27 = i24;
                                i31 = i23;
                                if (!zA) {
                                    p.g("AtomParsers", "Unexpected end of chunk data");
                                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i26);
                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i26);
                                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i26);
                                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i26);
                                    iB = i26;
                                    break;
                                }
                                if (wVar4 != null) {
                                    while (iW8 == 0) {
                                        iW8 = wVar4.w();
                                        iE5 = wVar4.e();
                                        i22--;
                                    }
                                    iW8--;
                                }
                                int i61111119 = iE5;
                                jArrCopyOf[i26] = j14;
                                iArrCopyOf[i26] = fVar.c();
                                if (iArrCopyOf[i26] > i25) {
                                    i25 = iArrCopyOf[i26];
                                }
                                jArrCopyOf2[i26] = j13 + ((long) i61111119);
                                if (wVar3 == null) {
                                    i32 = 1;
                                } else {
                                    i32 = 0;
                                }
                                iArrCopyOf2[i26] = i32;
                                if (i26 == iW7) {
                                    iArrCopyOf2[i26] = 1;
                                    iW6--;
                                    if (iW6 > 0) {
                                        Objects.requireNonNull(wVar3);
                                        iW7 = wVar3.w() - 1;
                                    }
                                }
                                int i6215 = iW7;
                                long[] jArr11113 = jArrCopyOf;
                                j13 += (long) i31;
                                iW9 = i27 - 1;
                                if (iW9 == 0) {
                                    iE6 = i31;
                                } else {
                                    iE6 = i31;
                                }
                                i24 = iW9;
                                int i6216 = iE6;
                                j14 += (long) iArrCopyOf[i26];
                                i21--;
                                i26++;
                                iE5 = i61111119;
                                iW7 = i6215;
                                jArrCopyOf = jArr11113;
                                i23 = i6216;
                                iB = i30;
                            }
                            int i6217 = i21;
                            j15 = j13 + ((long) iE5);
                            if (wVar4 == null) {
                                z15 = true;
                                break;
                            }
                            while (true) {
                                if (i22 <= 0) {
                                    z15 = true;
                                    break;
                                }
                                if (wVar4.w() != 0) {
                                    z15 = false;
                                    break;
                                }
                                wVar4.e();
                                i22--;
                            }
                            if (iW6 != 0) {
                                i28 = iW8;
                                StringBuilder sbC16 = a0.b.c("Inconsistent stbl box for track ");
                                lVar2 = lVarApply;
                                a1.d.e(sbC16, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                a1.d.e(sbC16, i27, ", remainingSamplesInChunk ", i6217, ", remainingTimestampDeltaChanges ");
                                sbC16.append(i61111117);
                                sbC16.append(", remainingSamplesAtTimestampOffset ");
                                sbC16.append(i28);
                                if (z15) {
                                    str2 = ", ctts invalid";
                                } else {
                                    str2 = str;
                                }
                                sbC16.append(str2);
                                p.g("AtomParsers", sbC16.toString());
                            } else {
                                i28 = iW8;
                                StringBuilder sbC17 = a0.b.c("Inconsistent stbl box for track ");
                                lVar2 = lVarApply;
                                a1.d.e(sbC17, lVar2.f332a, ": remainingSynchronizationSamples ", iW6, ", remainingSamplesAtTimestampDelta ");
                                a1.d.e(sbC17, i27, ", remainingSamplesInChunk ", i6217, ", remainingTimestampDeltaChanges ");
                                sbC17.append(i61111117);
                                sbC17.append(", remainingSamplesAtTimestampOffset ");
                                sbC17.append(i28);
                                if (z15) {
                                    str2 = ", ctts invalid";
                                } else {
                                    str2 = str;
                                }
                                sbC17.append(str2);
                                p.g("AtomParsers", sbC17.toString());
                            }
                            jArr3 = jArrCopyOf2;
                            iArr = iArrCopyOf2;
                            jArr4 = jArrCopyOf;
                            iArr2 = iArrCopyOf;
                            i29 = i25;
                        }
                        jR2 = g0.R(j15, 1000000L, lVar2.f334c);
                        jArr5 = lVar2.f339h;
                        if (jArr5 == null) {
                            g0.S(jArr3, lVar2.f334c);
                            oVar = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, jR2);
                        } else if (jArr5.length == 1) {
                            jArr6 = lVar2.f339h;
                            if (jArr6.length == 1) {
                                i33 = 0;
                                if (jArr6[0] == 0) {
                                    long[] jArr11114 = lVar2.f340i;
                                    Objects.requireNonNull(jArr11114);
                                    j19 = jArr11114[0];
                                    while (i33 < jArr3.length) {
                                        jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                        i33++;
                                    }
                                    oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                    oVar = oVar2;
                                }
                            } else {
                                i33 = 0;
                            }
                            if (lVar2.f333b == 1) {
                                z16 = 1;
                            } else {
                                z16 = i33;
                            }
                            iArr3 = new int[jArr6.length];
                            iArr4 = new int[jArr6.length];
                            jArr7 = lVar2.f340i;
                            Objects.requireNonNull(jArr7);
                            i34 = i33;
                            i35 = i34;
                            i36 = i35;
                            while (true) {
                                jArr8 = lVar2.f339h;
                                if (i33 >= jArr8.length) {
                                    break;
                                    break;
                                }
                                int i611111110 = iB;
                                j18 = jArr7[i33];
                                if (j18 != -1) {
                                    int i611111111 = i34;
                                    int i611111112 = i36;
                                    long jR19 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                    iArr3[i33] = g0.f(jArr3, j18, true);
                                    iArr4[i33] = g0.b(jArr3, j18 + jR19, z16);
                                    while (iArr3[i33] < iArr4[i33]) {
                                        iArr3[i33] = iArr3[i33] + 1;
                                    }
                                    i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                    i34 = (i611111112 == iArr3[i33] ? 0 : 1) | i611111111;
                                    i36 = iArr4[i33];
                                }
                                i33++;
                                jArr7 = jArr7;
                                iB = i611111110;
                                iArr2 = iArr2;
                            }
                            iArr5 = iArr2;
                            i37 = i34 | (i35 == iB ? 0 : 1);
                            if (i37 != 0) {
                                jArr9 = new long[i35];
                            } else {
                                jArr9 = jArr4;
                            }
                            if (i37 != 0) {
                                iArr6 = new int[i35];
                            } else {
                                iArr6 = iArr5;
                            }
                            if (i37 != 0) {
                                i29 = 0;
                            }
                            if (i37 != 0) {
                                iArr7 = new int[i35];
                            } else {
                                iArr7 = iArr;
                            }
                            jArr10 = new long[i35];
                            i38 = 0;
                            i39 = 0;
                            int i71119 = i29;
                            j16 = 0;
                            while (i38 < lVar2.f339h.length) {
                                j17 = lVar2.f340i[i38];
                                i40 = iArr3[i38];
                                int[] iArr1111113 = iArr3;
                                i41 = iArr4[i38];
                                if (i37 != 0) {
                                    int i711110 = i41 - i40;
                                    System.arraycopy(jArr4, i40, jArr9, i39, i711110);
                                    iArr8 = iArr5;
                                    System.arraycopy(iArr8, i40, iArr6, i39, i711110);
                                    System.arraycopy(iArr, i40, iArr7, i39, i711110);
                                } else {
                                    iArr8 = iArr5;
                                }
                                while (i40 < i41) {
                                    int[] iArr1111114 = iArr;
                                    int i711111 = i41;
                                    long[] jArr2117 = jArr9;
                                    int[] iArr1111115 = iArr8;
                                    long[] jArr2118 = jArr3;
                                    jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                    if (i37 == 0) {
                                    }
                                    i39++;
                                    i40++;
                                    jArr3 = jArr2118;
                                    iArr8 = iArr1111115;
                                    i41 = i711111;
                                    iArr = iArr1111114;
                                    jArr9 = jArr2117;
                                }
                                int[] iArr1111116 = iArr8;
                                j16 += lVar2.f339h[i38];
                                i38++;
                                iArr3 = iArr1111113;
                                jArr3 = jArr3;
                                iArr4 = iArr4;
                                iArr = iArr;
                                jArr4 = jArr4;
                                iArr5 = iArr1111116;
                            }
                            oVar = new o(lVar2, jArr9, iArr6, i71119, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                        } else {
                            jArr6 = lVar2.f339h;
                            if (jArr6.length == 1) {
                                i33 = 0;
                                if (jArr6[0] == 0) {
                                    long[] jArr11115 = lVar2.f340i;
                                    Objects.requireNonNull(jArr11115);
                                    j19 = jArr11115[0];
                                    while (i33 < jArr3.length) {
                                        jArr3[i33] = g0.R(jArr3[i33] - j19, 1000000L, lVar2.f334c);
                                        i33++;
                                    }
                                    oVar2 = new o(lVar2, jArr4, iArr2, i29, jArr3, iArr, g0.R(j15 - j19, 1000000L, lVar2.f334c));
                                    oVar = oVar2;
                                }
                            } else {
                                i33 = 0;
                            }
                            if (lVar2.f333b == 1) {
                                z16 = 1;
                            } else {
                                z16 = i33;
                            }
                            iArr3 = new int[jArr6.length];
                            iArr4 = new int[jArr6.length];
                            jArr7 = lVar2.f340i;
                            Objects.requireNonNull(jArr7);
                            i34 = i33;
                            i35 = i34;
                            i36 = i35;
                            while (true) {
                                jArr8 = lVar2.f339h;
                                if (i33 >= jArr8.length) {
                                    break;
                                    break;
                                }
                                int i611111113 = iB;
                                j18 = jArr7[i33];
                                if (j18 != -1) {
                                    int i611111114 = i34;
                                    int i611111115 = i36;
                                    long jR110 = g0.R(jArr8[i33], lVar2.f334c, lVar2.f335d);
                                    iArr3[i33] = g0.f(jArr3, j18, true);
                                    iArr4[i33] = g0.b(jArr3, j18 + jR110, z16);
                                    while (iArr3[i33] < iArr4[i33]) {
                                        iArr3[i33] = iArr3[i33] + 1;
                                    }
                                    i35 = (iArr4[i33] - iArr3[i33]) + i35;
                                    i34 = (i611111115 == iArr3[i33] ? 0 : 1) | i611111114;
                                    i36 = iArr4[i33];
                                }
                                i33++;
                                jArr7 = jArr7;
                                iB = i611111113;
                                iArr2 = iArr2;
                            }
                            iArr5 = iArr2;
                            i37 = i34 | (i35 == iB ? 0 : 1);
                            if (i37 != 0) {
                                jArr9 = new long[i35];
                            } else {
                                jArr9 = jArr4;
                            }
                            if (i37 != 0) {
                                iArr6 = new int[i35];
                            } else {
                                iArr6 = iArr5;
                            }
                            if (i37 != 0) {
                                i29 = 0;
                            }
                            if (i37 != 0) {
                                iArr7 = new int[i35];
                            } else {
                                iArr7 = iArr;
                            }
                            jArr10 = new long[i35];
                            i38 = 0;
                            i39 = 0;
                            int i711112 = i29;
                            j16 = 0;
                            while (i38 < lVar2.f339h.length) {
                                j17 = lVar2.f340i[i38];
                                i40 = iArr3[i38];
                                int[] iArr1111117 = iArr3;
                                i41 = iArr4[i38];
                                if (i37 != 0) {
                                    int i711113 = i41 - i40;
                                    System.arraycopy(jArr4, i40, jArr9, i39, i711113);
                                    iArr8 = iArr5;
                                    System.arraycopy(iArr8, i40, iArr6, i39, i711113);
                                    System.arraycopy(iArr, i40, iArr7, i39, i711113);
                                } else {
                                    iArr8 = iArr5;
                                }
                                while (i40 < i41) {
                                    int[] iArr1111118 = iArr;
                                    int i711114 = i41;
                                    long[] jArr2119 = jArr9;
                                    int[] iArr1111119 = iArr8;
                                    long[] jArr21110 = jArr3;
                                    jArr10[i39] = g0.R(j16, 1000000L, lVar2.f335d) + g0.R(Math.max(0L, jArr3[i40] - j17), 1000000L, lVar2.f334c);
                                    if (i37 == 0) {
                                    }
                                    i39++;
                                    i40++;
                                    jArr3 = jArr21110;
                                    iArr8 = iArr1111119;
                                    i41 = i711114;
                                    iArr = iArr1111118;
                                    jArr9 = jArr2119;
                                }
                                int[] iArr11111110 = iArr8;
                                j16 += lVar2.f339h[i38];
                                i38++;
                                iArr3 = iArr1111117;
                                jArr3 = jArr3;
                                iArr4 = iArr4;
                                iArr = iArr;
                                jArr4 = jArr4;
                                iArr5 = iArr11111110;
                            }
                            oVar = new o(lVar2, jArr9, iArr6, i711112, jArr10, iArr7, g0.R(j16, 1000000L, lVar2.f335d));
                        }
                    }
                    arrayList = arrayList2;
                    arrayList.add(oVar);
                }
            }
            i51 = i20 + 1;
            arrayList2 = arrayList;
        }
        return arrayList2;
    }
}
