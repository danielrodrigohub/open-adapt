package m4;

import androidx.fragment.app.r;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import m5.d0;
import m5.v;
import m5.w;

/* JADX INFO: compiled from: SpliceInfoDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final w f10326h = new w();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v f10327i = new v();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d0 f10328j;

    @Override // androidx.fragment.app.r
    public final f4.a g(f4.d dVar, ByteBuffer byteBuffer) {
        int i10;
        long j10;
        char c10;
        ArrayList arrayList;
        boolean z10;
        boolean z11;
        long j11;
        boolean z12;
        long j12;
        int iY;
        int iT;
        int iT2;
        boolean z13;
        long jU;
        List list;
        long j13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        long j14;
        int i11;
        int i12;
        int iT3;
        boolean z18;
        long jU2;
        d0 d0Var = this.f10328j;
        if (d0Var == null || dVar.f7054p != d0Var.d()) {
            d0 d0Var2 = new d0(dVar.f13583l);
            this.f10328j = d0Var2;
            d0Var2.a(dVar.f13583l - dVar.f7054p);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.f10326h.B(bArrArray, iLimit);
        this.f10327i.j(bArrArray, iLimit);
        this.f10327i.m(39);
        long jG = this.f10327i.g(1);
        char c11 = SafeJsonPrimitive.NULL_CHAR;
        long jG2 = (jG << 32) | ((long) this.f10327i.g(32));
        this.f10327i.m(20);
        int iG = this.f10327i.g(12);
        int iG2 = this.f10327i.g(8);
        this.f10326h.E(14);
        f4.a.b eVar = null;
        if (iG2 == 0) {
            eVar = new e();
        } else if (iG2 != 255) {
            long j15 = 128;
            if (iG2 == 4) {
                w wVar = this.f10326h;
                int iT4 = wVar.t();
                ArrayList arrayList2 = new ArrayList(iT4);
                int i13 = 0;
                while (i13 < iT4) {
                    long jU3 = wVar.u();
                    boolean z19 = (wVar.t() & 128) != 0;
                    ArrayList arrayList3 = new ArrayList();
                    if (z19) {
                        i10 = iT4;
                        j10 = j15;
                        c10 = c11;
                        arrayList = arrayList3;
                        z10 = false;
                        z11 = false;
                        j11 = -9223372036854775807L;
                        z12 = false;
                        j12 = -9223372036854775807L;
                        iY = 0;
                        iT = 0;
                        iT2 = 0;
                    } else {
                        int iT5 = wVar.t();
                        boolean z20 = (iT5 & 128) != 0;
                        boolean z21 = (iT5 & 64) != 0;
                        boolean z22 = (iT5 & 32) != 0;
                        long jU4 = z21 ? wVar.u() : -9223372036854775807L;
                        if (z21) {
                            i10 = iT4;
                        } else {
                            int iT6 = wVar.t();
                            ArrayList arrayList4 = new ArrayList(iT6);
                            int i14 = 0;
                            while (i14 < iT6) {
                                arrayList4.add(new f.b(wVar.t(), wVar.u(), null));
                                i14++;
                                iT6 = iT6;
                                iT4 = iT4;
                            }
                            i10 = iT4;
                            arrayList3 = arrayList4;
                        }
                        if (z22) {
                            long jT = wVar.t();
                            j10 = 128;
                            z13 = (jT & 128) != 0;
                            c10 = SafeJsonPrimitive.NULL_CHAR;
                            jU = ((((jT & 1) << 32) | wVar.u()) * 1000) / 90;
                        } else {
                            c10 = SafeJsonPrimitive.NULL_CHAR;
                            j10 = 128;
                            z13 = false;
                            jU = -9223372036854775807L;
                        }
                        z12 = z13;
                        j12 = jU;
                        arrayList = arrayList3;
                        iY = wVar.y();
                        z10 = z20;
                        z11 = z21;
                        j11 = jU4;
                        iT = wVar.t();
                        iT2 = wVar.t();
                    }
                    arrayList2.add(new f.c(jU3, z19, z10, z11, arrayList, j11, z12, j12, iY, iT, iT2));
                    i13++;
                    c11 = c10;
                    j15 = j10;
                    iT4 = i10;
                }
                eVar = new f(arrayList2);
            } else if (iG2 == 5) {
                w wVar2 = this.f10326h;
                d0 d0Var3 = this.f10328j;
                long jU5 = wVar2.u();
                boolean z23 = (wVar2.t() & 128) != 0;
                List listEmptyList = Collections.emptyList();
                if (z23) {
                    list = listEmptyList;
                    j13 = -9223372036854775807L;
                    z14 = false;
                    z15 = false;
                    z16 = false;
                    z17 = false;
                    j14 = -9223372036854775807L;
                    i11 = 0;
                    i12 = 0;
                    iT3 = 0;
                } else {
                    int iT7 = wVar2.t();
                    boolean z24 = (iT7 & 128) != 0;
                    boolean z25 = (iT7 & 64) != 0;
                    boolean z26 = (iT7 & 32) != 0;
                    boolean z27 = (iT7 & 16) != 0;
                    long jA = (!z25 || z27) ? -9223372036854775807L : g.a(wVar2, jG2);
                    if (!z25) {
                        int iT8 = wVar2.t();
                        ArrayList arrayList5 = new ArrayList(iT8);
                        for (int i15 = 0; i15 < iT8; i15++) {
                            int iT9 = wVar2.t();
                            long jA2 = !z27 ? g.a(wVar2, jG2) : -9223372036854775807L;
                            arrayList5.add(new d.b(iT9, jA2, d0Var3.b(jA2), null));
                        }
                        listEmptyList = arrayList5;
                    }
                    if (z26) {
                        long jT2 = wVar2.t();
                        z18 = (jT2 & 128) != 0;
                        jU2 = ((((jT2 & 1) << 32) | wVar2.u()) * 1000) / 90;
                    } else {
                        z18 = false;
                        jU2 = -9223372036854775807L;
                    }
                    int iY2 = wVar2.y();
                    int iT10 = wVar2.t();
                    i11 = iY2;
                    z17 = z18;
                    iT3 = wVar2.t();
                    list = listEmptyList;
                    j14 = jU2;
                    i12 = iT10;
                    z14 = z24;
                    j13 = jA;
                    z16 = z27;
                    z15 = z25;
                }
                eVar = new d(jU5, z23, z14, z15, z16, j13, d0Var3.b(j13), list, z17, j14, i11, i12, iT3);
            } else if (iG2 == 6) {
                w wVar3 = this.f10326h;
                d0 d0Var4 = this.f10328j;
                long jA3 = g.a(wVar3, jG2);
                eVar = new g(jA3, d0Var4.b(jA3));
            }
        } else {
            w wVar4 = this.f10326h;
            long jU6 = wVar4.u();
            int i16 = iG - 4;
            byte[] bArr = new byte[i16];
            wVar4.d(bArr, 0, i16);
            eVar = new a(jU6, bArr, jG2);
        }
        return eVar == null ? new f4.a(new f4.a.b[0]) : new f4.a(eVar);
    }
}
