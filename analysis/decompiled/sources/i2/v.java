package i2;

import android.graphics.Color;
import android.view.animation.Interpolator;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: LayerParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j2.c.a f8718a = j2.c.a.a("nm", "ind", "refId", TracePayload.PAYLOAD_TYPE_KEY, "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j2.c.a f8719b = j2.c.a.a(TracePayload.DATA_KEY, "a");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j2.c.a f8720c = j2.c.a.a(TracePayload.PAYLOAD_TYPE_KEY, "nm");

    /* JADX WARN: Code duplicated, block: B:198:0x038e  */
    /* JADX WARN: Code duplicated, block: B:231:0x03e7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20, types: [e2.d] */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r3v63 */
    /* JADX WARN: Type inference failed for: r3v64 */
    /* JADX WARN: Type inference failed for: r3v65 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v45 */
    public static g2.f a(j2.c cVar, y1.i iVar) throws IOException {
        String str;
        boolean z10;
        boolean z11;
        byte b10;
        byte b11;
        e2.b bVar;
        e2.b bVar2;
        e2.b bVar3;
        e2.b bVar4;
        ?? r10;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        cVar.Y();
        Float fValueOf = Float.valueOf(1.0f);
        Float fValueOf2 = Float.valueOf(0.0f);
        boolean z12 = false;
        boolean z13 = true;
        float fK0 = 1.0f;
        int i10 = 0;
        int iC = 0;
        int iC2 = 0;
        int color = 0;
        int iC3 = 0;
        int iC4 = 0;
        boolean zJ0 = false;
        int i11 = 1;
        float fK1 = 0.0f;
        float fK2 = 0.0f;
        long jL0 = -1;
        String strN0 = null;
        e2.k kVarA = null;
        e2.j jVar = null;
        q.c cVar2 = null;
        e2.b bVarC = null;
        f.p pVar = null;
        j jVar2 = null;
        float fK3 = 0.0f;
        long jL1 = 0;
        String strN1 = "UNSET";
        String strN2 = null;
        while (cVar.i0()) {
            char c10 = 2;
            switch (cVar.q0(f8718a)) {
                case 0:
                    str = strN2;
                    z10 = z12;
                    strN1 = cVar.n0();
                    z12 = z10;
                    strN2 = str;
                    break;
                case 1:
                    str = strN2;
                    z10 = z12;
                    jL1 = cVar.l0();
                    z12 = z10;
                    strN2 = str;
                    break;
                case 2:
                    str = strN2;
                    z10 = z12;
                    strN0 = cVar.n0();
                    z12 = z10;
                    strN2 = str;
                    break;
                case 3:
                    z11 = z13;
                    str = strN2;
                    z10 = z12;
                    int iL0 = cVar.l0();
                    if (iL0 < 6) {
                        i10 = q.g.b(7)[iL0];
                        z13 = z11;
                    } else {
                        z13 = z11;
                        i10 = 7;
                    }
                    z12 = z10;
                    strN2 = str;
                    break;
                case 4:
                    jL0 = cVar.l0();
                    z12 = z12;
                    strN2 = strN2;
                    z13 = z13;
                    break;
                case 5:
                    str = strN2;
                    z10 = z12;
                    iC = (int) (k2.g.c() * cVar.l0());
                    z12 = z10;
                    strN2 = str;
                    break;
                case 6:
                    str = strN2;
                    z10 = z12;
                    iC2 = (int) (k2.g.c() * cVar.l0());
                    z12 = z10;
                    strN2 = str;
                    break;
                case 7:
                    str = strN2;
                    color = Color.parseColor(cVar.n0());
                    strN2 = str;
                    break;
                case 8:
                    str = strN2;
                    kVarA = c.a(cVar, iVar);
                    strN2 = str;
                    break;
                case 9:
                    str = strN2;
                    z10 = z12;
                    int iL1 = cVar.l0();
                    if (iL1 >= q.g.b(6).length) {
                        iVar.a("Unsupported matte type: " + iL1);
                        z11 = true;
                    } else {
                        i11 = q.g.b(6)[iL1];
                        int iA = q.g.a(i11);
                        if (iA == 3) {
                            iVar.a("Unsupported matte type: Luma");
                        } else if (iA == 4) {
                            iVar.a("Unsupported matte type: Luma Inverted");
                        }
                        z11 = true;
                        iVar.f18346o++;
                    }
                    z13 = z11;
                    z12 = z10;
                    strN2 = str;
                    break;
                case 10:
                    e2.h hVar = null;
                    cVar.x();
                    while (cVar.i0()) {
                        cVar.Y();
                        e2.h hVar2 = hVar;
                        ?? D = hVar2;
                        boolean zJ1 = false;
                        int i12 = 0;
                        while (cVar.i0()) {
                            String strM0 = cVar.m0();
                            Objects.requireNonNull(strM0);
                            int iHashCode = strM0.hashCode();
                            strN2 = strN2;
                            if (iHashCode != 111) {
                                if (iHashCode != 3588) {
                                    if (iHashCode != 104433) {
                                        if (iHashCode == 3357091 && strM0.equals("mode")) {
                                            b10 = 3;
                                        } else {
                                            b10 = -1;
                                        }
                                    } else if (strM0.equals("inv")) {
                                        b10 = 2;
                                    } else {
                                        b10 = -1;
                                    }
                                } else if (strM0.equals("pt")) {
                                    b10 = 1;
                                } else {
                                    b10 = -1;
                                }
                            } else if (strM0.equals("o")) {
                                b10 = 0;
                            } else {
                                b10 = -1;
                            }
                            if (b10 == 0) {
                                D = d.d(cVar, iVar);
                            } else if (b10 == 1) {
                                hVar2 = new e2.h(u.a(cVar, iVar, k2.g.c(), f0.f8677a, false));
                                D = D;
                            } else if (b10 == 2) {
                                zJ1 = cVar.j0();
                                D = D;
                            } else if (b10 != 3) {
                                cVar.s0();
                                D = D;
                            } else {
                                String strN3 = cVar.n0();
                                Objects.requireNonNull(strN3);
                                int iHashCode2 = strN3.hashCode();
                                if (iHashCode2 != 97) {
                                    if (iHashCode2 != 105) {
                                        if (iHashCode2 != 110) {
                                            if (iHashCode2 == 115 && strN3.equals("s")) {
                                                b11 = 3;
                                            } else {
                                                b11 = -1;
                                            }
                                        } else if (strN3.equals("n")) {
                                            b11 = 2;
                                        } else {
                                            b11 = -1;
                                        }
                                    } else if (strN3.equals("i")) {
                                        b11 = 1;
                                    } else {
                                        b11 = -1;
                                    }
                                } else if (strN3.equals("a")) {
                                    b11 = 0;
                                } else {
                                    b11 = -1;
                                }
                                if (b11 != 0) {
                                    if (b11 == 1) {
                                        iVar.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                        i12 = 3;
                                    } else if (b11 == 2) {
                                        i12 = 4;
                                    } else if (b11 != 3) {
                                        k2.c.b("Unknown mask mode " + strM0 + ". Defaulting to Add.");
                                    } else {
                                        i12 = 2;
                                        D = D;
                                    }
                                }
                                i12 = 1;
                            }
                        }
                        cVar.g0();
                        arrayList.add(new f2.f(i12, hVar2, D, zJ1));
                        strN2 = strN2;
                        hVar = null;
                    }
                    str = strN2;
                    z10 = false;
                    iVar.f18346o += arrayList.size();
                    cVar.f0();
                    z11 = true;
                    z13 = z11;
                    z12 = z10;
                    strN2 = str;
                    break;
                case 11:
                    cVar.x();
                    while (cVar.i0()) {
                        f2.b bVarA = h.a(cVar, iVar);
                        if (bVarA != null) {
                            arrayList2.add(bVarA);
                        }
                    }
                    cVar.f0();
                    str = strN2;
                    z11 = true;
                    z10 = false;
                    z13 = z11;
                    z12 = z10;
                    strN2 = str;
                    break;
                case 12:
                    cVar.Y();
                    while (cVar.i0()) {
                        int iQ0 = cVar.q0(f8719b);
                        if (iQ0 == 0) {
                            jVar = new e2.j(d.a(cVar, iVar, i.f8683a));
                        } else if (iQ0 != 1) {
                            cVar.r0();
                            cVar.s0();
                        } else {
                            cVar.x();
                            if (cVar.i0()) {
                                j2.c.a aVar = b.f8666a;
                                cVar.Y();
                                q.c cVar3 = null;
                                while (cVar.i0()) {
                                    if (cVar.q0(b.f8666a) != 0) {
                                        cVar.r0();
                                        cVar.s0();
                                    } else {
                                        cVar.Y();
                                        e2.a aVarB = null;
                                        e2.a aVarB2 = null;
                                        e2.b bVarC2 = null;
                                        e2.b bVarC3 = null;
                                        while (cVar.i0()) {
                                            int iQ1 = cVar.q0(b.f8667b);
                                            if (iQ1 == 0) {
                                                aVarB = d.b(cVar, iVar);
                                            } else if (iQ1 == 1) {
                                                aVarB2 = d.b(cVar, iVar);
                                            } else if (iQ1 == 2) {
                                                bVarC2 = d.c(cVar, iVar, true);
                                            } else if (iQ1 != 3) {
                                                cVar.r0();
                                                cVar.s0();
                                            } else {
                                                bVarC3 = d.c(cVar, iVar, true);
                                            }
                                        }
                                        cVar.g0();
                                        cVar3 = new q.c(aVarB, aVarB2, bVarC2, bVarC3);
                                    }
                                }
                                cVar.g0();
                                if (cVar3 == null) {
                                    cVar3 = new q.c(null, null, null, null);
                                }
                                cVar2 = cVar3;
                            }
                            while (cVar.i0()) {
                                cVar.s0();
                            }
                            cVar.f0();
                        }
                    }
                    cVar.g0();
                    z12 = false;
                    z13 = true;
                    break;
                case 13:
                    cVar.x();
                    ArrayList arrayList3 = new ArrayList();
                    while (cVar.i0()) {
                        cVar.Y();
                        while (cVar.i0()) {
                            int iQ2 = cVar.q0(f8720c);
                            if (iQ2 == 0) {
                                int iL2 = cVar.l0();
                                if (iL2 == 29) {
                                    j2.c.a aVar2 = e.f8673a;
                                    pVar = null;
                                    while (cVar.i0()) {
                                        if (cVar.q0(e.f8673a) != 0) {
                                            cVar.r0();
                                            cVar.s0();
                                        } else {
                                            cVar.x();
                                            while (cVar.i0()) {
                                                cVar.Y();
                                                f.p pVar2 = null;
                                                while (true) {
                                                    boolean z14 = false;
                                                    while (true) {
                                                        if (cVar.i0()) {
                                                            int iQ3 = cVar.q0(e.f8674b);
                                                            if (iQ3 != 0) {
                                                                if (iQ3 != z13) {
                                                                    cVar.r0();
                                                                    cVar.s0();
                                                                } else if (z14) {
                                                                    pVar2 = new f.p(d.c(cVar, iVar, z13));
                                                                } else {
                                                                    cVar.s0();
                                                                }
                                                            } else if (cVar.l0() == 0) {
                                                                z14 = z13;
                                                            }
                                                        } else {
                                                            cVar.g0();
                                                            if (pVar2 != null) {
                                                                pVar = pVar2;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            cVar.f0();
                                        }
                                    }
                                } else if (iL2 == 25) {
                                    k kVar = new k();
                                    while (cVar.i0()) {
                                        if (cVar.q0(k.f8693f) != 0) {
                                            cVar.r0();
                                            cVar.s0();
                                        } else {
                                            cVar.x();
                                            while (cVar.i0()) {
                                                cVar.Y();
                                                String strN4 = "";
                                                while (cVar.i0()) {
                                                    int iQ4 = cVar.q0(k.f8694g);
                                                    if (iQ4 == 0) {
                                                        strN4 = cVar.n0();
                                                    } else if (iQ4 != z13) {
                                                        cVar.r0();
                                                        cVar.s0();
                                                    } else {
                                                        Objects.requireNonNull(strN4);
                                                        switch (strN4) {
                                                            case "Distance":
                                                                r10 = 0;
                                                                break;
                                                            case "Opacity":
                                                                r10 = z13;
                                                                break;
                                                            case "Direction":
                                                                r10 = c10;
                                                                break;
                                                            case "Shadow Color":
                                                                r10 = 3;
                                                                break;
                                                            case "Softness":
                                                                r10 = 4;
                                                                break;
                                                            default:
                                                                r10 = -1;
                                                                break;
                                                        }
                                                        if (r10 == 0) {
                                                            kVar.f8698d = d.c(cVar, iVar, z13);
                                                        } else if (r10 == z13) {
                                                            kVar.f8696b = d.c(cVar, iVar, false);
                                                        } else if (r10 == c10) {
                                                            kVar.f8697c = d.c(cVar, iVar, false);
                                                        } else if (r10 == 3) {
                                                            kVar.f8695a = d.b(cVar, iVar);
                                                        } else if (r10 != 4) {
                                                            cVar.s0();
                                                        } else {
                                                            kVar.f8699e = d.c(cVar, iVar, z13);
                                                        }
                                                    }
                                                    c10 = 2;
                                                }
                                                cVar.g0();
                                                c10 = 2;
                                            }
                                            cVar.f0();
                                            c10 = 2;
                                        }
                                    }
                                    e2.a aVar3 = kVar.f8695a;
                                    jVar2 = (aVar3 == null || (bVar = kVar.f8696b) == null || (bVar2 = kVar.f8697c) == null || (bVar3 = kVar.f8698d) == null || (bVar4 = kVar.f8699e) == null) ? null : new j(aVar3, bVar, bVar2, bVar3, bVar4);
                                }
                            } else if (iQ2 != z13) {
                                cVar.r0();
                                cVar.s0();
                            } else {
                                arrayList3.add(cVar.n0());
                            }
                            z13 = true;
                            c10 = 2;
                        }
                        cVar.g0();
                        z13 = true;
                        c10 = 2;
                    }
                    cVar.f0();
                    iVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    z12 = false;
                    z13 = true;
                    break;
                case 14:
                    fK0 = (float) cVar.k0();
                    break;
                case 15:
                    fK1 = (float) cVar.k0();
                    break;
                case 16:
                    iC3 = (int) (k2.g.c() * cVar.l0());
                    break;
                case 17:
                    iC4 = (int) (k2.g.c() * cVar.l0());
                    break;
                case 18:
                    fK3 = (float) cVar.k0();
                    break;
                case 19:
                    fK2 = (float) cVar.k0();
                    break;
                case 20:
                    bVarC = d.c(cVar, iVar, z12);
                    break;
                case 21:
                    strN2 = cVar.n0();
                    break;
                case 22:
                    zJ0 = cVar.j0();
                    break;
                default:
                    z11 = z13;
                    str = strN2;
                    z10 = z12;
                    cVar.r0();
                    cVar.s0();
                    z13 = z11;
                    z12 = z10;
                    strN2 = str;
                    break;
            }
        }
        String str2 = strN2;
        cVar.g0();
        ArrayList arrayList4 = new ArrayList();
        if (fK3 > 0.0f) {
            arrayList4.add(new l2.a(iVar, fValueOf2, fValueOf2, (Interpolator) null, 0.0f, Float.valueOf(fK3)));
        }
        if (fK2 <= 0.0f) {
            fK2 = iVar.f18343l;
        }
        arrayList4.add(new l2.a(iVar, fValueOf, fValueOf, (Interpolator) null, fK3, Float.valueOf(fK2)));
        arrayList4.add(new l2.a(iVar, fValueOf2, fValueOf2, (Interpolator) null, fK2, Float.valueOf(Float.MAX_VALUE)));
        if (strN1.endsWith(".ai") || "ai".equals(str2)) {
            iVar.a("Convert your Illustrator layers to shape layers.");
        }
        return new g2.f(arrayList2, iVar, strN1, jL1, i10, jL0, strN0, arrayList, kVarA, iC, iC2, color, fK0, fK1, iC3, iC4, jVar, cVar2, arrayList4, i11, bVarC, zJ0, pVar, jVar2);
    }
}
