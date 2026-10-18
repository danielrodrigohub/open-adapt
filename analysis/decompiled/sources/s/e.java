package s;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import t.o;
import t.p;

/* JADX INFO: compiled from: ConstraintWidgetContainer.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends j {

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f14897u0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f14901y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f14902z0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public t.b f14895s0 = new t.b(this);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public t.e f14896t0 = new t.e(this);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public t.b.InterfaceC0261b f14898v0 = null;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f14899w0 = false;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public q.d f14900x0 = new q.d();
    public int A0 = 0;
    public int B0 = 0;
    public b[] C0 = new b[4];
    public b[] D0 = new b[4];
    public int E0 = 257;
    public boolean F0 = false;
    public boolean G0 = false;
    public WeakReference<c> H0 = null;
    public WeakReference<c> I0 = null;
    public WeakReference<c> J0 = null;
    public WeakReference<c> K0 = null;
    public HashSet<d> L0 = new HashSet<>();
    public t.b.a M0 = new t.b.a();

    public static boolean c0(d dVar, t.b.InterfaceC0261b interfaceC0261b, t.b.a aVar) {
        int i10;
        int i11;
        if (interfaceC0261b == null) {
            return false;
        }
        if (dVar.f14869i0 == 8 || (dVar instanceof f) || (dVar instanceof a)) {
            aVar.f15274e = 0;
            aVar.f15275f = 0;
            return false;
        }
        int[] iArr = dVar.U;
        aVar.f15270a = iArr[0];
        aVar.f15271b = iArr[1];
        aVar.f15272c = dVar.r();
        aVar.f15273d = dVar.k();
        aVar.f15278i = false;
        aVar.f15279j = 0;
        boolean z10 = aVar.f15270a == 3;
        boolean z11 = aVar.f15271b == 3;
        boolean z12 = z10 && dVar.Y > 0.0f;
        boolean z13 = z11 && dVar.Y > 0.0f;
        if (z10 && dVar.u(0) && dVar.f14886r == 0 && !z12) {
            aVar.f15270a = 2;
            if (z11 && dVar.f14887s == 0) {
                aVar.f15270a = 1;
            }
            z10 = false;
        }
        if (z11 && dVar.u(1) && dVar.f14887s == 0 && !z13) {
            aVar.f15271b = 2;
            if (z10 && dVar.f14886r == 0) {
                aVar.f15271b = 1;
            }
            z11 = false;
        }
        if (dVar.B()) {
            aVar.f15270a = 1;
            z10 = false;
        }
        if (dVar.C()) {
            aVar.f15271b = 1;
            z11 = false;
        }
        if (z12) {
            if (dVar.f14888t[0] == 4) {
                aVar.f15270a = 1;
            } else if (!z11) {
                if (aVar.f15271b == 1) {
                    i11 = aVar.f15273d;
                } else {
                    aVar.f15270a = 2;
                    ((ConstraintLayout.b) interfaceC0261b).b(dVar, aVar);
                    i11 = aVar.f15275f;
                }
                aVar.f15270a = 1;
                aVar.f15272c = (int) (dVar.Y * i11);
            }
        }
        if (z13) {
            if (dVar.f14888t[1] == 4) {
                aVar.f15271b = 1;
            } else if (!z10) {
                if (aVar.f15270a == 1) {
                    i10 = aVar.f15272c;
                } else {
                    aVar.f15271b = 2;
                    ((ConstraintLayout.b) interfaceC0261b).b(dVar, aVar);
                    i10 = aVar.f15274e;
                }
                aVar.f15271b = 1;
                if (dVar.Z == -1) {
                    aVar.f15273d = (int) (i10 / dVar.Y);
                } else {
                    aVar.f15273d = (int) (dVar.Y * i10);
                }
            }
        }
        ((ConstraintLayout.b) interfaceC0261b).b(dVar, aVar);
        dVar.Q(aVar.f15274e);
        dVar.L(aVar.f15275f);
        dVar.E = aVar.f15277h;
        dVar.I(aVar.f15276g);
        aVar.f15279j = 0;
        return aVar.f15278i;
    }

    @Override // s.j, s.d
    public final void D() {
        this.f14900x0.u();
        this.f14901y0 = 0;
        this.f14902z0 = 0;
        super.D();
    }

    @Override // s.d
    public final void R(boolean z10, boolean z11) {
        super.R(z10, z11);
        int size = this.f14911r0.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f14911r0.get(i10).R(z10, z11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:332:0x0592  */
    /* JADX WARN: Code duplicated, block: B:335:0x059e  */
    /* JADX WARN: Code duplicated, block: B:343:0x05b9  */
    /* JADX WARN: Code duplicated, block: B:344:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:360:0x05eb  */
    /* JADX WARN: Code duplicated, block: B:365:0x0601  */
    /* JADX WARN: Code duplicated, block: B:377:0x062b  */
    /* JADX WARN: Code duplicated, block: B:382:0x063e  */
    /* JADX WARN: Code duplicated, block: B:389:0x064f  */
    /* JADX WARN: Code duplicated, block: B:392:0x0659  */
    /* JADX WARN: Code duplicated, block: B:394:0x0665  */
    /* JADX WARN: Code duplicated, block: B:398:0x0676  */
    /* JADX WARN: Code duplicated, block: B:401:0x068b A[Catch: Exception -> 0x0754, LOOP:12: B:400:0x0689->B:401:0x068b, LOOP_END, TryCatch #1 {Exception -> 0x0754, blocks: (B:399:0x0679, B:401:0x068b, B:402:0x069b), top: B:509:0x0679 }] */
    /* JADX WARN: Code duplicated, block: B:433:0x0749  */
    /* JADX WARN: Code duplicated, block: B:442:0x0771  */
    /* JADX WARN: Code duplicated, block: B:444:0x078d  */
    /* JADX WARN: Code duplicated, block: B:450:0x07a8  */
    /* JADX WARN: Code duplicated, block: B:452:0x07ab  */
    /* JADX WARN: Code duplicated, block: B:455:0x07b8  */
    /* JADX WARN: Code duplicated, block: B:457:0x07c1 A[LOOP:15: B:456:0x07bf->B:457:0x07c1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:466:0x07e5 A[LOOP:14: B:465:0x07e3->B:466:0x07e5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:478:0x084d  */
    /* JADX WARN: Code duplicated, block: B:479:0x085b  */
    /* JADX WARN: Code duplicated, block: B:482:0x086e  */
    /* JADX WARN: Code duplicated, block: B:483:0x0879  */
    /* JADX WARN: Code duplicated, block: B:485:0x087d  */
    /* JADX WARN: Code duplicated, block: B:490:0x088d  */
    /* JADX WARN: Code duplicated, block: B:497:0x08b7  */
    /* JADX WARN: Code duplicated, block: B:500:0x08bd  */
    /* JADX WARN: Code duplicated, block: B:504:0x08ca  */
    /* JADX WARN: Code duplicated, block: B:561:0x066a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:564:0x08bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:568:0x07ad A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v108 */
    /* JADX WARN: Type inference failed for: r0v109 */
    /* JADX WARN: Type inference failed for: r0v110 */
    /* JADX WARN: Type inference failed for: r0v111 */
    /* JADX WARN: Type inference failed for: r0v112 */
    /* JADX WARN: Type inference failed for: r0v113 */
    /* JADX WARN: Type inference failed for: r0v114 */
    /* JADX WARN: Type inference failed for: r0v115 */
    /* JADX WARN: Type inference failed for: r0v116 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27, types: [int[]] */
    /* JADX WARN: Type inference failed for: r0v29, types: [int[]] */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31, types: [int[]] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [boolean] */
    @Override // s.j
    public final void T() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z10;
        boolean z11;
        char c10;
        int[] iArr;
        boolean z12;
        int i15;
        int i16;
        boolean zD0;
        ?? r11;
        int i17;
        boolean z13;
        int i18;
        boolean z14;
        int i19;
        boolean z15;
        int iMax;
        ?? r10;
        ?? r20;
        boolean z16;
        int iMax2;
        ?? r12;
        boolean z17;
        boolean z18;
        ?? r13;
        ?? r14;
        int i20;
        boolean z19;
        boolean z20;
        ?? r15;
        ?? r16;
        int i21;
        int iMax3;
        int iMax4;
        int iMax5;
        int iMax6;
        q.d dVar;
        boolean zD1;
        int size;
        int i22;
        boolean z21;
        d dVar2;
        boolean z22;
        boolean z23;
        int i23;
        WeakReference<c> weakReference;
        WeakReference<c> weakReference2;
        WeakReference<c> weakReference3;
        WeakReference<c> weakReference4;
        d dVar3;
        int i24;
        int i25;
        int i26;
        int i27;
        char c11;
        o oVar;
        o oVar2;
        boolean z24;
        int i28;
        int iC;
        int iC2;
        int i29;
        int iR;
        int i30;
        int iK;
        this.f14854a0 = 0;
        this.f14856b0 = 0;
        this.F0 = false;
        this.G0 = false;
        int size2 = this.f14911r0.size();
        int iMax7 = Math.max(0, r());
        int iMax8 = Math.max(0, k());
        int[] iArr2 = this.U;
        int i31 = iArr2[1];
        int i32 = iArr2[0];
        int i33 = -1;
        if (this.f14897u0 == 0 && androidx.emoji2.text.b.i(this.E0, 1)) {
            t.b.InterfaceC0261b interfaceC0261b = this.f14898v0;
            int[] iArr3 = this.U;
            int i34 = iArr3[0];
            int i35 = iArr3[1];
            E();
            ArrayList<d> arrayList = this.f14911r0;
            int size3 = arrayList.size();
            for (int i36 = 0; i36 < size3; i36++) {
                arrayList.get(i36).E();
            }
            boolean z25 = this.f14899w0;
            if (i34 == 1) {
                J(0, r());
            } else {
                this.J.j(0);
                this.f14854a0 = 0;
            }
            int i37 = 0;
            boolean z26 = false;
            boolean z27 = false;
            while (i37 < size3) {
                d dVar4 = arrayList.get(i37);
                if (dVar4 instanceof f) {
                    f fVar = (f) dVar4;
                    if (fVar.f14907v0 == 1) {
                        int i38 = fVar.f14904s0;
                        if (i38 != i33) {
                            fVar.T(i38);
                        } else if (fVar.f14905t0 != i33 && B()) {
                            fVar.T(r() - fVar.f14905t0);
                        } else if (B()) {
                            fVar.T((int) ((fVar.f14903r0 * r()) + 0.5f));
                        }
                        z26 = true;
                    }
                } else if ((dVar4 instanceof a) && ((a) dVar4).V() == 0) {
                    z27 = true;
                }
                i37++;
                i33 = -1;
                z26 = z26;
                z27 = z27;
            }
            if (z26) {
                for (int i39 = 0; i39 < size3; i39++) {
                    d dVar5 = arrayList.get(i39);
                    if (dVar5 instanceof f) {
                        f fVar2 = (f) dVar5;
                        if (fVar2.f14907v0 == 1) {
                            t.h.b(0, fVar2, interfaceC0261b, z25);
                        }
                    }
                }
            }
            t.h.b(0, this, interfaceC0261b, z25);
            if (z27) {
                for (int i40 = 0; i40 < size3; i40++) {
                    d dVar6 = arrayList.get(i40);
                    if (dVar6 instanceof a) {
                        a aVar = (a) dVar6;
                        if (aVar.V() == 0 && aVar.U()) {
                            t.h.b(1, aVar, interfaceC0261b, z25);
                        }
                    }
                }
            }
            if (i35 == 1) {
                K(0, k());
            } else {
                this.K.j(0);
                this.f14856b0 = 0;
            }
            boolean z28 = false;
            boolean z29 = false;
            for (int i41 = 0; i41 < size3; i41++) {
                d dVar7 = arrayList.get(i41);
                if (dVar7 instanceof f) {
                    f fVar3 = (f) dVar7;
                    if (fVar3.f14907v0 == 0) {
                        int i42 = fVar3.f14904s0;
                        if (i42 != -1) {
                            fVar3.T(i42);
                        } else if (fVar3.f14905t0 != -1 && C()) {
                            fVar3.T(k() - fVar3.f14905t0);
                        } else if (C()) {
                            fVar3.T((int) ((fVar3.f14903r0 * k()) + 0.5f));
                        }
                        z28 = true;
                    }
                } else if ((dVar7 instanceof a) && ((a) dVar7).V() == 1) {
                    z29 = true;
                }
            }
            if (z28) {
                for (int i43 = 0; i43 < size3; i43++) {
                    d dVar8 = arrayList.get(i43);
                    if (dVar8 instanceof f) {
                        f fVar4 = (f) dVar8;
                        if (fVar4.f14907v0 == 0) {
                            t.h.g(1, fVar4, interfaceC0261b);
                        }
                    }
                }
            }
            t.h.g(0, this, interfaceC0261b);
            if (z29) {
                for (int i44 = 0; i44 < size3; i44++) {
                    d dVar9 = arrayList.get(i44);
                    if (dVar9 instanceof a) {
                        a aVar2 = (a) dVar9;
                        if (aVar2.V() == 1 && aVar2.U()) {
                            t.h.g(1, aVar2, interfaceC0261b);
                        }
                    }
                }
            }
            for (int i45 = 0; i45 < size3; i45++) {
                d dVar10 = arrayList.get(i45);
                if (dVar10.A() && t.h.a(dVar10)) {
                    c0(dVar10, interfaceC0261b, t.h.f15303a);
                    if (!(dVar10 instanceof f)) {
                        t.h.b(0, dVar10, interfaceC0261b, z25);
                        t.h.g(0, dVar10, interfaceC0261b);
                    } else if (((f) dVar10).f14907v0 == 0) {
                        t.h.g(0, dVar10, interfaceC0261b);
                    } else {
                        t.h.b(0, dVar10, interfaceC0261b, z25);
                    }
                }
            }
            for (int i46 = 0; i46 < size2; i46++) {
                d dVar11 = this.f14911r0.get(i46);
                if (dVar11.A() && !(dVar11 instanceof f) && !(dVar11 instanceof a) && !(dVar11 instanceof i) && !dVar11.G) {
                    if (!(dVar11.j(0) == 3 && dVar11.f14886r != 1 && dVar11.j(1) == 3 && dVar11.f14887s != 1)) {
                        c0(dVar11, this.f14898v0, new t.b.a());
                    }
                }
            }
        }
        if (size2 > 2 && ((i32 == 2 || i31 == 2) && androidx.emoji2.text.b.i(this.E0, 1024))) {
            t.b.InterfaceC0261b interfaceC0261b2 = this.f14898v0;
            c.a aVar3 = c.a.CENTER;
            ArrayList<d> arrayList2 = this.f14911r0;
            int size4 = arrayList2.size();
            int i47 = 0;
            while (true) {
                if (i47 >= size4) {
                    ArrayList arrayList3 = null;
                    int i48 = 0;
                    ArrayList<h> arrayList4 = null;
                    ArrayList arrayList5 = null;
                    ArrayList<h> arrayList6 = null;
                    ArrayList arrayList7 = null;
                    ArrayList arrayList8 = null;
                    while (i48 < size4) {
                        int i49 = size2;
                        d dVar12 = arrayList2.get(i48);
                        int i50 = iMax8;
                        int[] iArr4 = this.U;
                        int i51 = i31;
                        int i52 = iArr4[0];
                        int i53 = iArr4[1];
                        int i54 = iMax7;
                        int[] iArr5 = dVar12.U;
                        int i55 = i32;
                        if (!t.i.c(i52, i53, iArr5[0], iArr5[1])) {
                            c0(dVar12, interfaceC0261b2, this.M0);
                        }
                        boolean z30 = dVar12 instanceof f;
                        if (z30) {
                            f fVar5 = (f) dVar12;
                            if (fVar5.f14907v0 == 0) {
                                if (arrayList5 == null) {
                                    arrayList5 = new ArrayList();
                                }
                                arrayList5.add(fVar5);
                            }
                            if (fVar5.f14907v0 == 1) {
                                if (arrayList3 == null) {
                                    arrayList3 = new ArrayList();
                                }
                                arrayList3.add(fVar5);
                            }
                        }
                        if (dVar12 instanceof h) {
                            if (dVar12 instanceof a) {
                                a aVar4 = (a) dVar12;
                                if (aVar4.V() == 0) {
                                    if (arrayList4 == null) {
                                        arrayList4 = new ArrayList();
                                    }
                                    arrayList4.add(aVar4);
                                }
                                if (aVar4.V() == 1) {
                                    if (arrayList6 == null) {
                                        arrayList6 = new ArrayList();
                                    }
                                    arrayList6.add(aVar4);
                                }
                            } else {
                                h hVar = (h) dVar12;
                                if (arrayList4 == null) {
                                    arrayList4 = new ArrayList();
                                }
                                arrayList4.add(hVar);
                                if (arrayList6 == null) {
                                    arrayList6 = new ArrayList();
                                }
                                arrayList6.add(hVar);
                            }
                        }
                        if (dVar12.J.f14840f == null && dVar12.L.f14840f == null && !z30 && !(dVar12 instanceof a)) {
                            if (arrayList7 == null) {
                                arrayList7 = new ArrayList();
                            }
                            arrayList7.add(dVar12);
                        }
                        if (dVar12.K.f14840f == null && dVar12.M.f14840f == null && dVar12.N.f14840f == null && !z30 && !(dVar12 instanceof a)) {
                            if (arrayList8 == null) {
                                arrayList8 = new ArrayList();
                            }
                            ArrayList arrayList9 = arrayList8;
                            arrayList9.add(dVar12);
                            arrayList8 = arrayList9;
                        }
                        i48++;
                        iMax8 = i50;
                        size2 = i49;
                        i31 = i51;
                        iMax7 = i54;
                        i32 = i55;
                    }
                    i24 = iMax7;
                    i10 = size2;
                    i25 = iMax8;
                    i26 = i32;
                    i27 = i31;
                    ArrayList<o> arrayList10 = new ArrayList<>();
                    if (arrayList3 != null) {
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            t.i.a((f) it.next(), 0, arrayList10, null);
                        }
                    }
                    o oVar3 = null;
                    int i56 = 0;
                    if (arrayList4 != null) {
                        for (h hVar2 : arrayList4) {
                            o oVarA = t.i.a(hVar2, i56, arrayList10, oVar3);
                            hVar2.T(arrayList10, i56, oVarA);
                            oVarA.b(arrayList10);
                            oVar3 = null;
                            i56 = 0;
                        }
                    }
                    HashSet<c> hashSet = h(c.a.LEFT).f14835a;
                    if (hashSet != null) {
                        Iterator<c> it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            t.i.a(it2.next().f14838d, 0, arrayList10, null);
                        }
                    }
                    HashSet<c> hashSet2 = h(c.a.RIGHT).f14835a;
                    if (hashSet2 != null) {
                        Iterator<c> it3 = hashSet2.iterator();
                        while (it3.hasNext()) {
                            t.i.a(it3.next().f14838d, 0, arrayList10, null);
                        }
                    }
                    HashSet<c> hashSet3 = h(aVar3).f14835a;
                    if (hashSet3 != null) {
                        Iterator<c> it4 = hashSet3.iterator();
                        while (it4.hasNext()) {
                            t.i.a(it4.next().f14838d, 0, arrayList10, null);
                        }
                    }
                    o oVar4 = null;
                    if (arrayList7 != null) {
                        Iterator it5 = arrayList7.iterator();
                        while (it5.hasNext()) {
                            t.i.a((d) it5.next(), 0, arrayList10, null);
                        }
                    }
                    if (arrayList5 != null) {
                        Iterator it6 = arrayList5.iterator();
                        while (it6.hasNext()) {
                            t.i.a((f) it6.next(), 1, arrayList10, null);
                        }
                    }
                    int i57 = 1;
                    if (arrayList6 != null) {
                        for (h hVar3 : arrayList6) {
                            o oVarA2 = t.i.a(hVar3, i57, arrayList10, oVar4);
                            hVar3.T(arrayList10, i57, oVarA2);
                            oVarA2.b(arrayList10);
                            oVar4 = null;
                            i57 = 1;
                        }
                    }
                    HashSet<c> hashSet4 = h(c.a.TOP).f14835a;
                    if (hashSet4 != null) {
                        Iterator<c> it7 = hashSet4.iterator();
                        while (it7.hasNext()) {
                            t.i.a(it7.next().f14838d, 1, arrayList10, null);
                        }
                    }
                    HashSet<c> hashSet5 = h(c.a.BASELINE).f14835a;
                    if (hashSet5 != null) {
                        Iterator<c> it8 = hashSet5.iterator();
                        while (it8.hasNext()) {
                            t.i.a(it8.next().f14838d, 1, arrayList10, null);
                        }
                    }
                    HashSet<c> hashSet6 = h(c.a.BOTTOM).f14835a;
                    if (hashSet6 != null) {
                        Iterator<c> it9 = hashSet6.iterator();
                        while (it9.hasNext()) {
                            t.i.a(it9.next().f14838d, 1, arrayList10, null);
                        }
                    }
                    HashSet<c> hashSet7 = h(aVar3).f14835a;
                    if (hashSet7 != null) {
                        Iterator<c> it10 = hashSet7.iterator();
                        while (it10.hasNext()) {
                            t.i.a(it10.next().f14838d, 1, arrayList10, null);
                        }
                    }
                    char c12 = 1;
                    if (arrayList8 != null) {
                        Iterator it11 = arrayList8.iterator();
                        while (it11.hasNext()) {
                            t.i.a((d) it11.next(), 1, arrayList10, null);
                        }
                    }
                    int i58 = 0;
                    while (i58 < size4) {
                        d dVar13 = arrayList2.get(i58);
                        int[] iArr6 = dVar13.U;
                        if (iArr6[0] == 3 && iArr6[c12] == 3) {
                            o oVarB = t.i.b(arrayList10, dVar13.f14883p0);
                            o oVarB2 = t.i.b(arrayList10, dVar13.f14885q0);
                            if (oVarB != null && oVarB2 != null) {
                                oVarB.d(0, oVarB2);
                                oVarB2.f15312c = 2;
                                arrayList10.remove(oVarB);
                            }
                        }
                        i58++;
                        c12 = 1;
                    }
                    if (arrayList10.size() > 1) {
                        if (this.U[0] == 2) {
                            oVar = null;
                            int i59 = 0;
                            for (o oVar5 : arrayList10) {
                                if (oVar5.f15312c != 1 && (iC2 = oVar5.c(this.f14900x0, 0)) > i59) {
                                    oVar = oVar5;
                                    i59 = iC2;
                                }
                            }
                            c11 = 1;
                            if (oVar != null) {
                                M(1);
                                Q(i59);
                            }
                            if (this.U[c11] == 2) {
                                oVar2 = null;
                                i28 = 0;
                                for (o oVar6 : arrayList10) {
                                    if (oVar6.f15312c != 0 && (iC = oVar6.c(this.f14900x0, 1)) > i28) {
                                        oVar2 = oVar6;
                                        i28 = iC;
                                    }
                                }
                                if (oVar2 != null) {
                                    P(1);
                                    L(i28);
                                } else {
                                    oVar2 = null;
                                }
                            } else {
                                oVar2 = null;
                            }
                            if (oVar == null || oVar2 != null) {
                                z24 = true;
                                break;
                            }
                        } else {
                            c11 = 1;
                        }
                        oVar = null;
                        if (this.U[c11] == 2) {
                            oVar2 = null;
                            i28 = 0;
                            while (r0.hasNext()) {
                                if (oVar6.f15312c != 0) {
                                    oVar2 = oVar6;
                                    i28 = iC;
                                }
                            }
                            if (oVar2 != null) {
                                P(1);
                                L(i28);
                            } else {
                                oVar2 = null;
                            }
                        } else {
                            oVar2 = null;
                        }
                        if (oVar == null) {
                        }
                        z24 = true;
                        break;
                    }
                } else {
                    d dVar14 = arrayList2.get(i47);
                    int[] iArr7 = this.U;
                    int i60 = iArr7[0];
                    int i61 = iArr7[1];
                    int[] iArr8 = dVar14.U;
                    if (t.i.c(i60, i61, iArr8[0], iArr8[1])) {
                        i47++;
                    } else {
                        i24 = iMax7;
                        i10 = size2;
                        i25 = iMax8;
                        i26 = i32;
                        i27 = i31;
                    }
                }
                z24 = false;
                break;
            }
            if (z24) {
                i11 = i26;
                if (i11 == 2) {
                    i29 = i24;
                    if (i29 >= r() || i29 <= 0) {
                        iR = r();
                    } else {
                        Q(i29);
                        this.F0 = true;
                    }
                    i14 = i27;
                    if (i14 == 2) {
                        i30 = i25;
                        if (i30 < k() || i30 <= 0) {
                            iK = k();
                        } else {
                            L(i30);
                            this.G0 = true;
                        }
                        i13 = iK;
                        i12 = iR;
                        z10 = true;
                    } else {
                        i30 = i25;
                    }
                    iK = i30;
                    i13 = iK;
                    i12 = iR;
                    z10 = true;
                } else {
                    i29 = i24;
                }
                iR = i29;
                i14 = i27;
                if (i14 == 2) {
                    i30 = i25;
                    if (i30 < k()) {
                    }
                    iK = k();
                    i13 = iK;
                    i12 = iR;
                    z10 = true;
                } else {
                    i30 = i25;
                }
                iK = i30;
                i13 = iK;
                i12 = iR;
                z10 = true;
            } else {
                i13 = i25;
                i14 = i27;
                i12 = i24;
                i11 = i26;
            }
            if (!d0(64) || d0(128)) {
                z11 = true;
            } else {
                z11 = false;
            }
            q.d dVar15 = this.f14900x0;
            Objects.requireNonNull(dVar15);
            dVar15.f13467g = false;
            if (this.E0 == 0 && z11) {
                c10 = 1;
                dVar15.f13467g = true;
            } else {
                c10 = 1;
            }
            ArrayList<d> arrayList11 = this.f14911r0;
            iArr = this.U;
            if (iArr[0] != 2 || iArr[c10] == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.A0 = 0;
            this.B0 = 0;
            i15 = i10;
            for (i16 = 0; i16 < i15; i16++) {
                dVar3 = this.f14911r0.get(i16);
                if (dVar3 instanceof j) {
                    ((j) dVar3).T();
                }
            }
            zD0 = d0(64);
            r11 = z10;
            i17 = 0;
            z13 = true;
            while (z13) {
                i18 = i17 + 1;
                try {
                    this.f14900x0.u();
                    this.A0 = 0;
                    this.B0 = 0;
                    f(this.f14900x0);
                    for (i23 = 0; i23 < i15; i23++) {
                        this.f14911r0.get(i23).f(this.f14900x0);
                    }
                    V(this.f14900x0);
                    try {
                        weakReference = this.H0;
                        if (weakReference != null && weakReference.get() != null) {
                            this.f14900x0.f(this.f14900x0.l(this.H0.get()), this.f14900x0.l(this.K), 0, 5);
                            try {
                                this.H0 = null;
                            } catch (Exception e10) {
                                e = e10;
                                z23 = true;
                                e.printStackTrace();
                                System.out.println("EXCEPTION : " + e);
                                z14 = z23;
                            }
                        }
                        weakReference2 = this.J0;
                        if (weakReference2 != null && weakReference2.get() != null) {
                            this.f14900x0.f(this.f14900x0.l(this.M), this.f14900x0.l(this.J0.get()), 0, 5);
                            this.J0 = null;
                        }
                        weakReference3 = this.I0;
                        if (weakReference3 != null && weakReference3.get() != null) {
                            this.f14900x0.f(this.f14900x0.l(this.I0.get()), this.f14900x0.l(this.J), 0, 5);
                            this.I0 = null;
                        }
                        weakReference4 = this.K0;
                        if (weakReference4 == null && weakReference4.get() != null) {
                            this.f14900x0.f(this.f14900x0.l(this.L), this.f14900x0.l(this.K0.get()), 0, 5);
                            this.K0 = null;
                        }
                        this.f14900x0.q();
                        z14 = true;
                    } catch (Exception e11) {
                        e = e11;
                    }
                } catch (Exception e12) {
                    e = e12;
                    z23 = z13;
                }
                if (z14) {
                    dVar = this.f14900x0;
                    androidx.emoji2.text.b.f1803j[2] = false;
                    zD1 = d0(64);
                    S(dVar, zD1);
                    size = this.f14911r0.size();
                    i22 = 0;
                    z21 = false;
                    while (i22 < size) {
                        dVar2 = this.f14911r0.get(i22);
                        dVar2.S(dVar, zD1);
                        q.d dVar16 = dVar;
                        boolean z31 = zD1;
                        if (dVar2.f14866h == -1 || dVar2.f14868i != -1) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z22) {
                            z21 = true;
                        }
                        i22++;
                        dVar = dVar16;
                        zD1 = z31;
                        z21 = z21;
                    }
                    z15 = z21;
                } else {
                    S(this.f14900x0, zD0);
                    for (i19 = 0; i19 < i15; i19++) {
                        this.f14911r0.get(i19).S(this.f14900x0, zD0);
                    }
                    z15 = false;
                }
                if (z12 && i18 < 8 && androidx.emoji2.text.b.f1803j[2]) {
                    iMax3 = 0;
                    iMax4 = 0;
                    for (i21 = 0; i21 < i15; i21++) {
                        d dVar17 = this.f14911r0.get(i21);
                        iMax3 = Math.max(iMax3, dVar17.r() + dVar17.f14854a0);
                        iMax4 = Math.max(iMax4, dVar17.k() + dVar17.f14856b0);
                    }
                    iMax5 = Math.max(this.d0, iMax3);
                    iMax6 = Math.max(this.f14861e0, iMax4);
                    r11 = r11;
                    z15 = z15;
                    if (i11 == 2 && r() < iMax5) {
                        r11 = r11;
                        z15 = z15;
                        Q(iMax5);
                        this.U[0] = 2;
                        r11 = 1;
                        z15 = true;
                    }
                    if (i14 == 2 && k() < iMax6) {
                        L(iMax6);
                        this.U[1] = 2;
                        r11 = 1;
                        z15 = true;
                    }
                }
                iMax = Math.max(this.d0, r());
                if (iMax > r()) {
                    Q(iMax);
                    r10 = 1;
                    this.U[0] = 1;
                    z16 = true;
                    r20 = 1;
                } else {
                    r10 = 1;
                    r20 = r11;
                    z16 = z15;
                }
                iMax2 = Math.max(this.f14861e0, k());
                if (iMax2 > k()) {
                    L(iMax2);
                    this.U[r10] = r10;
                    r16 = r10;
                    z17 = r16 == true ? 1 : 0;
                } else {
                    r12 = r20;
                }
                if (r12 == 0) {
                    z17 = z16;
                    if (this.U[0] == 2 && i12 > 0) {
                        r15 = r12;
                        z20 = z17;
                        if (r() > i12) {
                            this.F0 = r10;
                            this.U[0] = r10;
                            Q(i12);
                            ?? r17 = r10;
                            z20 = r17 == true ? 1 : 0;
                            r15 = r17;
                        }
                    }
                    r12 = r16;
                    r15 = r12;
                    r15 = r12;
                    z20 = z17;
                    z20 = z17;
                    r13 = r15;
                    r13 = r15;
                    z18 = z20;
                    z18 = z20;
                    if (this.U[r10] != 2 && i13 > 0 && k() > i13) {
                        this.G0 = r10;
                        this.U[r10] = r10;
                        L(i13);
                        i20 = 8;
                        r14 = 1;
                        z19 = true;
                    }
                    if (i18 > i20) {
                        r13 = r15;
                        z18 = z20;
                        z19 = false;
                    } else {
                        r13 = r15;
                        z18 = z20;
                    }
                    i17 = i18;
                    z13 = z19;
                    r11 = r14;
                } else {
                    z17 = z16;
                    r12 = r16;
                    r13 = r12;
                    z18 = z17;
                }
                r13 = r15;
                z18 = z20;
                r14 = r13;
                i20 = 8;
                z19 = z18;
                if (i18 > i20) {
                    r13 = r15;
                    z18 = z20;
                    z19 = false;
                } else {
                    r13 = r15;
                    z18 = z20;
                }
                i17 = i18;
                z13 = z19;
                r11 = r14;
            }
            this.f14911r0 = arrayList11;
            if (r11 != 0) {
                int[] iArr9 = this.U;
                iArr9[0] = i11;
                iArr9[1] = i14;
            }
            F(this.f14900x0.f13472l);
        }
        i10 = size2;
        i11 = i32;
        i12 = iMax7;
        i13 = iMax8;
        i14 = i31;
        z10 = false;
        if (d0(64)) {
            z11 = true;
        } else {
            z11 = true;
        }
        q.d dVar18 = this.f14900x0;
        Objects.requireNonNull(dVar18);
        dVar18.f13467g = false;
        if (this.E0 == 0) {
            c10 = 1;
        } else {
            c10 = 1;
        }
        ArrayList<d> arrayList12 = this.f14911r0;
        iArr = this.U;
        if (iArr[0] != 2) {
            z12 = true;
        } else {
            z12 = true;
        }
        this.A0 = 0;
        this.B0 = 0;
        i15 = i10;
        while (i16 < i15) {
            dVar3 = this.f14911r0.get(i16);
            if (dVar3 instanceof j) {
                ((j) dVar3).T();
            }
        }
        zD0 = d0(64);
        r11 = z10;
        i17 = 0;
        z13 = true;
        while (z13) {
            i18 = i17 + 1;
            this.f14900x0.u();
            this.A0 = 0;
            this.B0 = 0;
            f(this.f14900x0);
            while (i23 < i15) {
                this.f14911r0.get(i23).f(this.f14900x0);
            }
            V(this.f14900x0);
            weakReference = this.H0;
            if (weakReference != null) {
                this.f14900x0.f(this.f14900x0.l(this.H0.get()), this.f14900x0.l(this.K), 0, 5);
                this.H0 = null;
            }
            weakReference2 = this.J0;
            if (weakReference2 != null) {
                this.f14900x0.f(this.f14900x0.l(this.M), this.f14900x0.l(this.J0.get()), 0, 5);
                this.J0 = null;
            }
            weakReference3 = this.I0;
            if (weakReference3 != null) {
                this.f14900x0.f(this.f14900x0.l(this.I0.get()), this.f14900x0.l(this.J), 0, 5);
                this.I0 = null;
            }
            weakReference4 = this.K0;
            if (weakReference4 == null) {
            }
            this.f14900x0.q();
            z14 = true;
            if (z14) {
                dVar = this.f14900x0;
                androidx.emoji2.text.b.f1803j[2] = false;
                zD1 = d0(64);
                S(dVar, zD1);
                size = this.f14911r0.size();
                i22 = 0;
                z21 = false;
                while (i22 < size) {
                    dVar2 = this.f14911r0.get(i22);
                    dVar2.S(dVar, zD1);
                    q.d dVar19 = dVar;
                    boolean z32 = zD1;
                    if (dVar2.f14866h == -1) {
                        z22 = true;
                    } else {
                        z22 = true;
                    }
                    if (z22) {
                        z21 = true;
                    }
                    i22++;
                    dVar = dVar19;
                    zD1 = z32;
                    z21 = z21;
                }
                z15 = z21;
            } else {
                S(this.f14900x0, zD0);
                while (i19 < i15) {
                    this.f14911r0.get(i19).S(this.f14900x0, zD0);
                }
                z15 = false;
            }
            if (z12) {
                iMax3 = 0;
                iMax4 = 0;
                while (i21 < i15) {
                    d dVar110 = this.f14911r0.get(i21);
                    iMax3 = Math.max(iMax3, dVar110.r() + dVar110.f14854a0);
                    iMax4 = Math.max(iMax4, dVar110.k() + dVar110.f14856b0);
                }
                iMax5 = Math.max(this.d0, iMax3);
                iMax6 = Math.max(this.f14861e0, iMax4);
                r11 = r11;
                z15 = z15;
                if (i11 == 2) {
                    r11 = r11;
                    z15 = z15;
                    Q(iMax5);
                    this.U[0] = 2;
                    r11 = 1;
                    z15 = true;
                }
                if (i14 == 2) {
                    L(iMax6);
                    this.U[1] = 2;
                    r11 = 1;
                    z15 = true;
                }
            }
            iMax = Math.max(this.d0, r());
            if (iMax > r()) {
                Q(iMax);
                r10 = 1;
                this.U[0] = 1;
                z16 = true;
                r20 = 1;
            } else {
                r10 = 1;
                r20 = r11;
                z16 = z15;
            }
            iMax2 = Math.max(this.f14861e0, k());
            if (iMax2 > k()) {
                L(iMax2);
                this.U[r10] = r10;
                r16 = r10;
                z17 = r16 == true ? 1 : 0;
            } else {
                r12 = r20;
            }
            if (r12 == 0) {
                z17 = z16;
                if (this.U[0] == 2) {
                    r15 = r12;
                    z20 = z17;
                    if (r() > i12) {
                        this.F0 = r10;
                        this.U[0] = r10;
                        Q(i12);
                        ?? r18 = r10;
                        z20 = r18 == true ? 1 : 0;
                        r15 = r18;
                    }
                }
                r12 = r16;
                r15 = r12;
                r15 = r12;
                z20 = z17;
                z20 = z17;
                r13 = r15;
                r13 = r15;
                z18 = z20;
                z18 = z20;
                if (this.U[r10] != 2) {
                }
                if (i18 > i20) {
                    r13 = r15;
                    z18 = z20;
                    z19 = false;
                } else {
                    r13 = r15;
                    z18 = z20;
                }
                i17 = i18;
                z13 = z19;
                r11 = r14;
            } else {
                z17 = z16;
                r12 = r16;
                r13 = r12;
                z18 = z17;
            }
            r13 = r15;
            z18 = z20;
            r14 = r13;
            i20 = 8;
            z19 = z18;
            if (i18 > i20) {
                r13 = r15;
                z18 = z20;
                z19 = false;
            } else {
                r13 = r15;
                z18 = z20;
            }
            i17 = i18;
            z13 = z19;
            r11 = r14;
        }
        this.f14911r0 = arrayList12;
        if (r11 != 0) {
            int[] iArr10 = this.U;
            iArr10[0] = i11;
            iArr10[1] = i14;
        }
        F(this.f14900x0.f13472l);
    }

    public final void U(d dVar, int i10) {
        if (i10 == 0) {
            int i11 = this.A0 + 1;
            b[] bVarArr = this.D0;
            if (i11 >= bVarArr.length) {
                this.D0 = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
            }
            b[] bVarArr2 = this.D0;
            int i12 = this.A0;
            bVarArr2[i12] = new b(dVar, 0, this.f14899w0);
            this.A0 = i12 + 1;
            return;
        }
        if (i10 == 1) {
            int i13 = this.B0 + 1;
            b[] bVarArr3 = this.C0;
            if (i13 >= bVarArr3.length) {
                this.C0 = (b[]) Arrays.copyOf(bVarArr3, bVarArr3.length * 2);
            }
            b[] bVarArr4 = this.C0;
            int i14 = this.B0;
            bVarArr4[i14] = new b(dVar, 1, this.f14899w0);
            this.B0 = i14 + 1;
        }
    }

    public final void V(q.d dVar) {
        boolean z10;
        boolean zD0 = d0(64);
        c(dVar, zD0);
        int size = this.f14911r0.size();
        boolean z11 = false;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar2 = this.f14911r0.get(i10);
            boolean[] zArr = dVar2.T;
            zArr[0] = false;
            zArr[1] = false;
            if (dVar2 instanceof a) {
                z11 = true;
            }
        }
        if (z11) {
            for (int i11 = 0; i11 < size; i11++) {
                d dVar3 = this.f14911r0.get(i11);
                if (dVar3 instanceof a) {
                    a aVar = (a) dVar3;
                    for (int i12 = 0; i12 < aVar.f14910s0; i12++) {
                        d dVar4 = aVar.f14909r0[i12];
                        if (aVar.f14815u0 || dVar4.d()) {
                            int i13 = aVar.f14814t0;
                            if (i13 == 0 || i13 == 1) {
                                dVar4.T[0] = true;
                            } else if (i13 == 2 || i13 == 3) {
                                dVar4.T[1] = true;
                            }
                        }
                    }
                }
            }
        }
        this.L0.clear();
        for (int i14 = 0; i14 < size; i14++) {
            d dVar5 = this.f14911r0.get(i14);
            if (dVar5.b()) {
                if (dVar5 instanceof i) {
                    this.L0.add(dVar5);
                } else {
                    dVar5.c(dVar, zD0);
                }
            }
        }
        while (this.L0.size() > 0) {
            int size2 = this.L0.size();
            Iterator<d> it = this.L0.iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                HashSet<d> hashSet = this.L0;
                int i15 = 0;
                while (true) {
                    if (i15 >= iVar.f14910s0) {
                        z10 = false;
                        break;
                    } else {
                        if (hashSet.contains(iVar.f14909r0[i15])) {
                            z10 = true;
                            break;
                        }
                        i15++;
                    }
                }
                if (z10) {
                    iVar.c(dVar, zD0);
                    this.L0.remove(iVar);
                    break;
                }
            }
            if (size2 == this.L0.size()) {
                Iterator<d> it2 = this.L0.iterator();
                while (it2.hasNext()) {
                    it2.next().c(dVar, zD0);
                }
                this.L0.clear();
            }
        }
        if (q.d.f13459p) {
            HashSet<d> hashSet2 = new HashSet<>();
            for (int i16 = 0; i16 < size; i16++) {
                d dVar6 = this.f14911r0.get(i16);
                if (!dVar6.b()) {
                    hashSet2.add(dVar6);
                }
            }
            a(this, dVar, hashSet2, this.U[0] == 2 ? 0 : 1, false);
            for (d dVar7 : hashSet2) {
                androidx.emoji2.text.b.g(this, dVar, dVar7);
                dVar7.c(dVar, zD0);
            }
        } else {
            for (int i17 = 0; i17 < size; i17++) {
                d dVar8 = this.f14911r0.get(i17);
                if (dVar8 instanceof e) {
                    int[] iArr = dVar8.U;
                    int i18 = iArr[0];
                    int i19 = iArr[1];
                    if (i18 == 2) {
                        dVar8.M(1);
                    }
                    if (i19 == 2) {
                        dVar8.P(1);
                    }
                    dVar8.c(dVar, zD0);
                    if (i18 == 2) {
                        dVar8.M(i18);
                    }
                    if (i19 == 2) {
                        dVar8.P(i19);
                    }
                } else {
                    androidx.emoji2.text.b.g(this, dVar, dVar8);
                    if (!dVar8.b()) {
                        dVar8.c(dVar, zD0);
                    }
                }
            }
        }
        if (this.A0 > 0) {
            d3.e.a(this, dVar, null, 0);
        }
        if (this.B0 > 0) {
            d3.e.a(this, dVar, null, 1);
        }
    }

    public final void W(c cVar) {
        WeakReference<c> weakReference = this.K0;
        if (weakReference == null || weakReference.get() == null || cVar.c() > this.K0.get().c()) {
            this.K0 = new WeakReference<>(cVar);
        }
    }

    public final void X(c cVar) {
        WeakReference<c> weakReference = this.I0;
        if (weakReference == null || weakReference.get() == null || cVar.c() > this.I0.get().c()) {
            this.I0 = new WeakReference<>(cVar);
        }
    }

    public final void Y(c cVar) {
        WeakReference<c> weakReference = this.J0;
        if (weakReference == null || weakReference.get() == null || cVar.c() > this.J0.get().c()) {
            this.J0 = new WeakReference<>(cVar);
        }
    }

    public final void Z(c cVar) {
        WeakReference<c> weakReference = this.H0;
        if (weakReference == null || weakReference.get() == null || cVar.c() > this.H0.get().c()) {
            this.H0 = new WeakReference<>(cVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b7  */
    public final boolean a0(boolean z10, int i10) {
        boolean z11;
        t.e eVar = this.f14896t0;
        boolean z12 = true;
        boolean z13 = z10 & true;
        int iJ = eVar.f15282a.j(0);
        int iJ2 = eVar.f15282a.j(1);
        int iS = eVar.f15282a.s();
        int iT = eVar.f15282a.t();
        if (z13 && (iJ == 2 || iJ2 == 2)) {
            for (p pVar : eVar.f15286e) {
                if (pVar.f15320f == i10 && !pVar.k()) {
                    z13 = false;
                    break;
                }
            }
            if (i10 == 0) {
                if (z13 && iJ == 2) {
                    eVar.f15282a.M(1);
                    e eVar2 = eVar.f15282a;
                    eVar2.Q(eVar.d(eVar2, 0));
                    e eVar3 = eVar.f15282a;
                    eVar3.f14859d.f15319e.d(eVar3.r());
                }
            } else if (z13 && iJ2 == 2) {
                eVar.f15282a.P(1);
                e eVar4 = eVar.f15282a;
                eVar4.L(eVar.d(eVar4, 1));
                e eVar5 = eVar.f15282a;
                eVar5.f14860e.f15319e.d(eVar5.k());
            }
        }
        if (i10 == 0) {
            e eVar6 = eVar.f15282a;
            int[] iArr = eVar6.U;
            if (iArr[0] == 1 || iArr[0] == 4) {
                int iR = eVar6.r() + iS;
                eVar.f15282a.f14859d.f15323i.d(iR);
                eVar.f15282a.f14859d.f15319e.d(iR - iS);
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            e eVar7 = eVar.f15282a;
            int[] iArr2 = eVar7.U;
            if (iArr2[1] == 1 || iArr2[1] == 4) {
                int iK = eVar7.k() + iT;
                eVar.f15282a.f14860e.f15323i.d(iK);
                eVar.f15282a.f14860e.f15319e.d(iK - iT);
                z11 = true;
            } else {
                z11 = false;
            }
        }
        eVar.g();
        for (p pVar2 : eVar.f15286e) {
            if (pVar2.f15320f == i10 && (pVar2.f15316b != eVar.f15282a || pVar2.f15321g)) {
                pVar2.e();
            }
        }
        for (p pVar3 : eVar.f15286e) {
            if (pVar3.f15320f == i10 && (z11 || pVar3.f15316b != eVar.f15282a)) {
                if (!pVar3.f15322h.f15299j || !pVar3.f15323i.f15299j || (!(pVar3 instanceof t.c) && !pVar3.f15319e.f15299j)) {
                    z12 = false;
                    break;
                }
            }
        }
        eVar.f15282a.M(iJ);
        eVar.f15282a.P(iJ2);
        return z12;
    }

    public final void b0() {
        this.f14896t0.f15283b = true;
    }

    public final boolean d0(int i10) {
        return (this.E0 & i10) == i10;
    }

    public final void e0(int i10) {
        this.E0 = i10;
        q.d.f13459p = d0(512);
    }

    @Override // s.d
    public final void o(StringBuilder sb2) {
        sb2.append(this.f14870j + ":{\n");
        sb2.append("  actualWidth:" + this.W);
        sb2.append("\n");
        sb2.append("  actualHeight:" + this.X);
        sb2.append("\n");
        Iterator<d> it = this.f14911r0.iterator();
        while (it.hasNext()) {
            it.next().o(sb2);
            sb2.append(",\n");
        }
        sb2.append("}");
    }
}
