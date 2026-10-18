package fb;

import hc.g0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y implements c0<fd.e<? extends mc.b0, ? extends byte[]>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c0<la.a> f7338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f7339b;

    public y(c0<la.a> c0Var, s sVar) {
        this.f7338a = c0Var;
        this.f7339b = sVar;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004f  */
    @Override // fb.c0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void b(fd.e<mc.b0, byte[]> eVar) {
        boolean z10;
        mc.x xVar;
        la.a aVar;
        int i10;
        int i11;
        int i12;
        p4.h.j(eVar, "result");
        mc.b0 b0Var = eVar.f7388h;
        byte[] bArr = eVar.f7389i;
        if (s.c(this.f7339b, b0Var)) {
            int length = bArr.length;
            int i13 = b0Var.f10974c;
            if (length >= i13) {
                int i14 = b0Var.f10972a.f10968a;
                int i15 = b0Var.f10975d;
                q.g.a(b0Var.f10976e);
                if ((bArr.length == 0) || i13 != bArr.length) {
                    z10 = false;
                } else {
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr);
                    if (crc32.getValue() == (((long) i15) & 4294967295L)) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (!z10) {
                    s sVar = this.f7339b;
                    synchronized (sVar.f7307i) {
                        c3.d.s(sVar.f7306h, new byte[0]);
                    }
                    c(la.c.f10192n.a(b0Var, 0));
                    s sVar2 = this.f7339b;
                    String str = sVar2.f7300b;
                    la.b bVar = sVar2.f7301c;
                    v9.a.C0295a c0295a = v9.a.f16441i;
                    d(new y9.f(str, bVar, v9.a.f16442j));
                    return;
                }
                c0<la.a> c0Var = this.f7338a;
                try {
                    fc.w wVarG = fc.w.G(bArr);
                    fc.k.a aVarL = fc.k.L();
                    fc.b0 b0VarC = wVarG.C();
                    aVarL.k();
                    fc.k.E((fc.k) aVarL.f10785i, b0VarC);
                    List<fc.v> listE = wVarG.E();
                    aVarL.k();
                    fc.k.y((fc.k) aVarL.f10785i, listE);
                    List<fc.l> listF = wVarG.F();
                    aVarL.k();
                    fc.k.z((fc.k) aVarL.f10785i, listF);
                    List<fc.m> listY = wVarG.y();
                    aVarL.k();
                    fc.k.x((fc.k) aVarL.f10785i, listY);
                    fc.q.a aVarA = fc.q.A();
                    Iterator<fc.r> it = wVarG.B().iterator();
                    while (true) {
                        int i16 = 2;
                        if (!it.hasNext()) {
                            fc.n.a aVarD = fc.n.D();
                            Iterator<fc.o> it2 = wVarG.z().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    fc.s.a aVarD2 = fc.s.D();
                                    Iterator<fc.t> it3 = wVarG.D().iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            fc.c0 c0VarA = wVarG.A();
                                            aVarL.k();
                                            fc.k.D((fc.k) aVarL.f10785i, c0VarA);
                                            fc.k kVarH = aVarL.h();
                                            List<fc.v> listUnmodifiableList = Collections.unmodifiableList(((fc.k) aVarL.f10785i).K());
                                            p4.h.i(listUnmodifiableList, "steps");
                                            ArrayList arrayList = new ArrayList(gd.j.T(listUnmodifiableList, 10));
                                            for (fc.v vVar : listUnmodifiableList) {
                                                long jI = vVar.I();
                                                int iA = vVar.B().a();
                                                if (iA == 1) {
                                                    i10 = 2;
                                                } else if (iA != 2) {
                                                    i10 = iA != 3 ? 1 : 4;
                                                } else {
                                                    i10 = 3;
                                                }
                                                int iC = vVar.C();
                                                int iD = vVar.D();
                                                int iY = vVar.y();
                                                int iH = vVar.H();
                                                int iG = vVar.G();
                                                int iF = vVar.F();
                                                int iA2 = vVar.A();
                                                if (iA2 != 1) {
                                                    if (iA2 == 2) {
                                                        i12 = 3;
                                                    } else if (iA2 == 3) {
                                                        i12 = 4;
                                                    } else if (iA2 != 4) {
                                                        i12 = 1;
                                                    } else {
                                                        i11 = 5;
                                                    }
                                                    arrayList.add(new mc.y(jI, i10, iC, iD, iY, iH, iG, iF, i12, vVar.E()));
                                                } else {
                                                    i11 = 2;
                                                }
                                                i12 = i11;
                                                arrayList.add(new mc.y(jI, i10, iC, iD, iY, iH, iG, iF, i12, vVar.E()));
                                            }
                                            List<fc.s> listUnmodifiableList2 = Collections.unmodifiableList(((fc.k) aVarL.f10785i).J());
                                            p4.h.i(listUnmodifiableList2, "fixedSession.memsList");
                                            ArrayList arrayList2 = new ArrayList();
                                            for (fc.s sVar3 : listUnmodifiableList2) {
                                                List<fc.h> listB = sVar3.B();
                                                p4.h.i(listB, "mem.dataList");
                                                ArrayList arrayList3 = new ArrayList(gd.j.T(listB, 10));
                                                for (fc.h hVar : listB) {
                                                    arrayList3.add(new mc.c0(sVar3.C(), hVar.C().C(), hVar.C().D(), hVar.C().E(), hVar.A().C(), hVar.A().D(), hVar.A().E()));
                                                }
                                                gd.l.X(arrayList2, arrayList3);
                                            }
                                            List listUnmodifiableList3 = Collections.unmodifiableList(((fc.k) aVarL.f10785i).H());
                                            p4.h.i(listUnmodifiableList3, "fixedSession.csList");
                                            ArrayList arrayList4 = new ArrayList();
                                            Iterator it4 = listUnmodifiableList3.iterator();
                                            while (it4.hasNext()) {
                                                List<fc.b> listB2 = ((fc.n) it4.next()).B();
                                                p4.h.i(listB2, "cs.dataList");
                                                ArrayList arrayList5 = new ArrayList(gd.j.T(listB2, 10));
                                                for (fc.b bVar2 : listB2) {
                                                    arrayList5.add(new mc.w(((fc.n) aVarD.f10785i).C(), bVar2.E(), bVar2.D(), bVar2.B()));
                                                }
                                                gd.l.X(arrayList4, arrayList5);
                                            }
                                            List<fc.m> listUnmodifiableList4 = Collections.unmodifiableList(((fc.k) aVarL.f10785i).G());
                                            p4.h.i(listUnmodifiableList4, "fixedSession.batteryTempList");
                                            ArrayList arrayList6 = new ArrayList(gd.j.T(listUnmodifiableList4, 10));
                                            for (fc.m mVar : listUnmodifiableList4) {
                                                arrayList6.add(new mc.d0(mVar.z(), mVar.y()));
                                            }
                                            xVar = new mc.x(kVarH.I().z().A(), kVarH.I().A(), arrayList, arrayList4, arrayList2, arrayList6);
                                            break;
                                        }
                                        fc.t next = it3.next();
                                        int iZ = next.z();
                                        aVarD2.k();
                                        fc.s.y((fc.s) aVarD2.f10785i, iZ);
                                        int iA3 = next.A();
                                        aVarD2.k();
                                        fc.s.z((fc.s) aVarD2.f10785i, iA3);
                                        if (next.y().size() % 12 <= 0) {
                                            int size = next.y().size() / i16;
                                            short[] sArr = new short[size];
                                            ByteBuffer.wrap(next.y().r()).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr);
                                            fc.h.a aVarD3 = fc.h.D();
                                            for (int i17 = 0; i17 < size; i17 += 6) {
                                                fc.i.a aVarF = fc.i.F();
                                                aVarF.m(sArr[i17]);
                                                aVarF.n(sArr[i17 + 1]);
                                                aVarF.o(sArr[i17 + 2]);
                                                fc.i iVarH = aVarF.h();
                                                fc.i.a aVarF2 = fc.i.F();
                                                aVarF2.m(sArr[i17 + 3]);
                                                aVarF2.n(sArr[i17 + 4]);
                                                aVarF2.o(sArr[i17 + 5]);
                                                fc.i iVarH2 = aVarF2.h();
                                                aVarD3.k();
                                                fc.h.x((fc.h) aVarD3.f10785i, iVarH2);
                                                aVarD3.k();
                                                fc.h.y((fc.h) aVarD3.f10785i, iVarH);
                                                fc.h hVarH = aVarD3.h();
                                                aVarD2.k();
                                                fc.s.x((fc.s) aVarD2.f10785i, hVarH);
                                            }
                                            aVarD3.j();
                                            fc.s sVarH = aVarD2.h();
                                            aVarL.k();
                                            fc.k.C((fc.k) aVarL.f10785i, sVarH);
                                            aVarD2.j();
                                            i16 = 2;
                                        }
                                    }
                                } else {
                                    fc.o next2 = it2.next();
                                    int iZ2 = next2.z();
                                    aVarD.k();
                                    fc.n.y((fc.n) aVarD.f10785i, iZ2);
                                    int iA4 = next2.A();
                                    aVarD.k();
                                    fc.n.z((fc.n) aVarD.f10785i, iA4);
                                    if (next2.y().size() % 6 <= 0) {
                                        int size2 = next2.y().size() / 2;
                                        short[] sArr2 = new short[size2];
                                        ByteBuffer.wrap(next2.y().r()).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr2);
                                        fc.b.a aVarF3 = fc.b.F();
                                        int i18 = 0;
                                        while (i18 < size2) {
                                            short s10 = sArr2[i18];
                                            aVarF3.k();
                                            fc.b.z((fc.b) aVarF3.f10785i, s10);
                                            short s11 = sArr2[i18 + 1];
                                            aVarF3.k();
                                            fc.b.y((fc.b) aVarF3.f10785i, s11);
                                            short s12 = sArr2[i18 + 2];
                                            aVarF3.k();
                                            fc.b.x((fc.b) aVarF3.f10785i, s12);
                                            i18 += 3;
                                            fc.b bVarH = aVarF3.h();
                                            aVarD.k();
                                            fc.n.x((fc.n) aVarD.f10785i, bVarH);
                                        }
                                        aVarF3.j();
                                        fc.n nVarH = aVarD.h();
                                        aVarL.k();
                                        fc.k.A((fc.k) aVarL.f10785i, nVarH);
                                        aVarD.j();
                                    }
                                }
                            }
                        } else {
                            fc.r next3 = it.next();
                            int iZ3 = next3.z();
                            aVarA.k();
                            fc.q.y((fc.q) aVarA.f10785i, iZ3);
                            if (next3.y().size() % 6 <= 0) {
                                int size3 = next3.y().size() / 2;
                                short[] sArr3 = new short[size3];
                                ByteBuffer.wrap(next3.y().r()).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr3);
                                for (int i19 = 0; i19 < size3; i19 += 3) {
                                    fc.i.a aVarF4 = fc.i.F();
                                    aVarF4.m(sArr3[i19]);
                                    aVarF4.n(sArr3[i19 + 1]);
                                    aVarF4.o(sArr3[i19 + 2]);
                                    fc.i iVarH3 = aVarF4.h();
                                    aVarA.k();
                                    fc.q.x((fc.q) aVarA.f10785i, iVarH3);
                                }
                                fc.q qVarH = aVarA.h();
                                aVarL.k();
                                fc.k.B((fc.k) aVarL.f10785i, qVarH);
                                aVarA.j();
                            }
                        }
                        xVar = null;
                        break;
                    }
                    aVar = null;
                } catch (m7.z e10) {
                    g0 g0VarQ = androidx.lifecycle.o.q();
                    StringBuilder sbC = a0.b.c("proto error: ");
                    sbC.append(e10.getMessage());
                    g0VarQ.c(sbC.toString(), null, false, "SessionUtil.Decode");
                    xVar = null;
                    aVar = null;
                }
                if (xVar != null) {
                    la.b bVar3 = new la.b(xVar.f11105h);
                    long j10 = xVar.f11106i;
                    List<mc.y> list = xVar.f11107j;
                    ArrayList arrayList7 = new ArrayList(gd.j.T(list, 10));
                    Iterator<T> it5 = list.iterator();
                    while (it5.hasNext()) {
                        arrayList7.add(la.i.f10223r.a((mc.y) it5.next(), xVar.f11106i));
                    }
                    List<mc.w> list2 = xVar.f11108k;
                    ArrayList arrayList8 = new ArrayList(gd.j.T(list2, 10));
                    for (mc.w wVar : list2) {
                        long j11 = xVar.f11106i;
                        p4.h.j(wVar, "coreRFSessionCapSenseData");
                        arrayList8.add(new la.f(wVar.f11101h + j11, wVar.f11102i, wVar.f11103j, wVar.f11104k));
                    }
                    List<mc.c0> list3 = xVar.f11109l;
                    ArrayList arrayList9 = new ArrayList(gd.j.T(list3, 10));
                    for (Iterator it6 = list3.iterator(); it6.hasNext(); it6 = it6) {
                        mc.c0 c0Var2 = (mc.c0) it6.next();
                        p4.h.j(c0Var2, "sessionRawData");
                        arrayList9.add(new la.h(c0Var2.f10979h, new la.h.b(c0Var2.f10983l, c0Var2.f10984m, c0Var2.f10985n), new la.h.b(c0Var2.f10980i, c0Var2.f10981j, c0Var2.f10982k)));
                    }
                    List<mc.d0> list4 = xVar.f11110m;
                    ArrayList arrayList10 = new ArrayList(gd.j.T(list4, 10));
                    for (mc.d0 d0Var : list4) {
                        arrayList10.add(new la.d(d0Var.f10995h, d0Var.f10996i));
                    }
                    aVar = new la.a(bVar3, j10, arrayList7, arrayList8, arrayList9, arrayList10);
                }
                c0Var.b(aVar);
                this.f7339b.f7309k = false;
            }
        }
    }

    @Override // fb.c0
    public final void c(la.c cVar) {
        p4.h.j(cVar, "sessionInformation");
        this.f7338a.c(cVar);
    }

    @Override // fb.c0
    public final void d(Throwable th) {
        p4.h.j(th, "throwable");
        boolean z10 = th instanceof y9.f;
        if (z10) {
            this.f7339b.d();
        }
        this.f7339b.j(z10);
        this.f7338a.d(th);
    }
}
