package i2;

import android.graphics.Rect;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: LottieCompositionMoshiParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j2.c.a f8721a = j2.c.a.a("w", "h", "ip", "op", "fr", TracePayload.VERSION_KEY, "layers", "assets", "fonts", "chars", "markers");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static j2.c.a f8722b = j2.c.a.a("id", "layers", "w", "h", "p", "u");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j2.c.a f8723c = j2.c.a.a("list");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final j2.c.a f8724d = j2.c.a.a("cm", "tm", "dr");

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0046. Please report as an issue. */
    public static y1.i a(j2.c cVar) throws IOException {
        float f10;
        float f11;
        int i10;
        float f12;
        p.d<g2.f> dVar;
        float f13;
        float fC = k2.g.c();
        p.d<g2.f> dVar2 = new p.d<>();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        p.h<d2.d> hVar = new p.h<>();
        y1.i iVar = new y1.i();
        cVar.Y();
        int iL0 = 0;
        float fK0 = 0.0f;
        float fK1 = 0.0f;
        float fK2 = 0.0f;
        int iL1 = 0;
        while (cVar.i0()) {
            float f14 = fK0;
            switch (cVar.q0(f8721a)) {
                case 0:
                    iL1 = cVar.l0();
                    dVar2 = dVar2;
                    fK0 = f14;
                    fC = fC;
                    fK1 = fK1;
                    arrayList2 = arrayList2;
                    fK2 = fK2;
                    map3 = map3;
                    hVar = hVar;
                    break;
                case 1:
                    iL0 = cVar.l0();
                    dVar2 = dVar2;
                    fK0 = f14;
                    fC = fC;
                    fK1 = fK1;
                    arrayList2 = arrayList2;
                    fK2 = fK2;
                    map3 = map3;
                    hVar = hVar;
                    break;
                case 2:
                    fK1 = (float) cVar.k0();
                    fK0 = f14;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 3:
                    fK2 = ((float) cVar.k0()) - 0.01f;
                    fK0 = f14;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 4:
                    fC = fC;
                    map3 = map3;
                    arrayList2 = arrayList2;
                    hVar = hVar;
                    iL0 = iL0;
                    dVar2 = dVar2;
                    fK0 = (float) cVar.k0();
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 5:
                    fC = fC;
                    map3 = map3;
                    arrayList2 = arrayList2;
                    hVar = hVar;
                    iL0 = iL0;
                    f10 = fK1;
                    f11 = fK2;
                    dVar2 = dVar2;
                    String[] strArrSplit = cVar.n0().split("\\.");
                    int i11 = Integer.parseInt(strArrSplit[0]);
                    int i12 = Integer.parseInt(strArrSplit[1]);
                    if (!(i11 >= 4 && (i11 > 4 || (i12 >= 4 && (i12 > 4 || Integer.parseInt(strArrSplit[2]) >= 0))))) {
                        iVar.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    fK0 = f14;
                    fK1 = f10;
                    fK2 = f11;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 6:
                    fC = fC;
                    p.d<g2.f> dVar3 = dVar2;
                    map3 = map3;
                    arrayList2 = arrayList2;
                    hVar = hVar;
                    iL0 = iL0;
                    f10 = fK1;
                    f11 = fK2;
                    cVar.x();
                    int i13 = 0;
                    while (cVar.i0()) {
                        g2.f fVarA = v.a(cVar, iVar);
                        if (fVarA.f7592e == 3) {
                            i13++;
                        }
                        arrayList.add(fVarA);
                        p.d<g2.f> dVar4 = dVar3;
                        dVar4.f(fVarA.f7591d, fVarA);
                        if (i13 > 4) {
                            k2.c.b("You have " + i13 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                        dVar3 = dVar4;
                    }
                    dVar2 = dVar3;
                    cVar.f0();
                    fK0 = f14;
                    fK1 = f10;
                    fK2 = f11;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 7:
                    arrayList2 = arrayList2;
                    f10 = fK1;
                    f11 = fK2;
                    cVar.x();
                    while (cVar.i0()) {
                        ArrayList arrayList3 = new ArrayList();
                        p.d dVar5 = new p.d();
                        cVar.Y();
                        HashMap map4 = map3;
                        String strN0 = null;
                        String strN1 = null;
                        int iL2 = 0;
                        int iL3 = 0;
                        while (cVar.i0()) {
                            hVar = hVar;
                            int iQ0 = cVar.q0(f8722b);
                            if (iQ0 != 0) {
                                i10 = iL0;
                                if (iQ0 == 1) {
                                    cVar.x();
                                    while (cVar.i0()) {
                                        g2.f fVarA2 = v.a(cVar, iVar);
                                        dVar5.f(fVarA2.f7591d, fVarA2);
                                        arrayList3.add(fVarA2);
                                        fC = fC;
                                        dVar2 = dVar2;
                                    }
                                    f12 = fC;
                                    dVar = dVar2;
                                    cVar.f0();
                                } else if (iQ0 == 2) {
                                    iL2 = cVar.l0();
                                } else if (iQ0 == 3) {
                                    iL3 = cVar.l0();
                                } else if (iQ0 == 4) {
                                    strN1 = cVar.n0();
                                } else if (iQ0 != 5) {
                                    cVar.r0();
                                    cVar.s0();
                                    f12 = fC;
                                    dVar = dVar2;
                                } else {
                                    cVar.n0();
                                }
                                fC = f12;
                                iL0 = i10;
                                dVar2 = dVar;
                            } else {
                                i10 = iL0;
                                strN0 = cVar.n0();
                            }
                            iL0 = i10;
                        }
                        float f15 = fC;
                        p.d<g2.f> dVar6 = dVar2;
                        p.h<d2.d> hVar2 = hVar;
                        int i14 = iL0;
                        cVar.g0();
                        if (strN1 != null) {
                            map2.put(strN0, new y1.f0(iL2, iL3, strN0, strN1));
                        } else {
                            map.put(strN0, arrayList3);
                        }
                        fC = f15;
                        map3 = map4;
                        hVar = hVar2;
                        iL0 = i14;
                        dVar2 = dVar6;
                    }
                    fC = fC;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    cVar.f0();
                    dVar2 = dVar2;
                    fK0 = f14;
                    fK1 = f10;
                    fK2 = f11;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 8:
                    f10 = fK1;
                    f11 = fK2;
                    cVar.Y();
                    while (cVar.i0()) {
                        if (cVar.q0(f8723c) != 0) {
                            cVar.r0();
                            cVar.s0();
                        } else {
                            cVar.x();
                            while (cVar.i0()) {
                                j2.c.a aVar = n.f8704a;
                                cVar.Y();
                                String strN2 = null;
                                String strN3 = null;
                                String strN4 = null;
                                while (cVar.i0()) {
                                    int iQ1 = cVar.q0(n.f8704a);
                                    if (iQ1 != 0) {
                                        ArrayList arrayList4 = arrayList2;
                                        if (iQ1 == 1) {
                                            strN3 = cVar.n0();
                                        } else if (iQ1 == 2) {
                                            strN4 = cVar.n0();
                                        } else if (iQ1 != 3) {
                                            cVar.r0();
                                            cVar.s0();
                                        } else {
                                            cVar.k0();
                                        }
                                        arrayList2 = arrayList4;
                                    } else {
                                        strN2 = cVar.n0();
                                    }
                                }
                                cVar.g0();
                                map3.put(strN3, new d2.c(strN2, strN3, strN4));
                                arrayList2 = arrayList2;
                            }
                            cVar.f0();
                        }
                    }
                    arrayList2 = arrayList2;
                    cVar.g0();
                    hVar = hVar;
                    iL0 = iL0;
                    dVar2 = dVar2;
                    fK0 = f14;
                    fK1 = f10;
                    fK2 = f11;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 9:
                    f10 = fK1;
                    f11 = fK2;
                    cVar.x();
                    while (cVar.i0()) {
                        j2.c.a aVar2 = m.f8702a;
                        ArrayList arrayList5 = new ArrayList();
                        cVar.Y();
                        double dK0 = 0.0d;
                        String strN5 = null;
                        String strN6 = null;
                        char cCharAt = 0;
                        while (cVar.i0()) {
                            int iQ2 = cVar.q0(m.f8702a);
                            if (iQ2 == 0) {
                                cCharAt = cVar.n0().charAt(0);
                            } else if (iQ2 == 1) {
                                cVar.k0();
                            } else if (iQ2 == 2) {
                                dK0 = cVar.k0();
                            } else if (iQ2 == 3) {
                                strN5 = cVar.n0();
                            } else if (iQ2 == 4) {
                                strN6 = cVar.n0();
                            } else if (iQ2 != 5) {
                                cVar.r0();
                                cVar.s0();
                            } else {
                                cVar.Y();
                                while (cVar.i0()) {
                                    if (cVar.q0(m.f8703b) != 0) {
                                        cVar.r0();
                                        cVar.s0();
                                    } else {
                                        cVar.x();
                                        while (cVar.i0()) {
                                            arrayList5.add((f2.n) h.a(cVar, iVar));
                                        }
                                        cVar.f0();
                                    }
                                }
                                cVar.g0();
                            }
                        }
                        cVar.g0();
                        d2.d dVar7 = new d2.d(arrayList5, cCharAt, dK0, strN5, strN6);
                        hVar.f(dVar7.hashCode(), dVar7);
                    }
                    cVar.f0();
                    arrayList2 = arrayList2;
                    hVar = hVar;
                    iL0 = iL0;
                    dVar2 = dVar2;
                    fK0 = f14;
                    fK1 = f10;
                    fK2 = f11;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                case 10:
                    cVar.x();
                    while (cVar.i0()) {
                        cVar.Y();
                        String strN7 = null;
                        float fK3 = 0.0f;
                        float fK4 = 0.0f;
                        while (cVar.i0()) {
                            int iQ3 = cVar.q0(f8724d);
                            if (iQ3 != 0) {
                                f13 = fK2;
                                if (iQ3 == 1) {
                                    fK3 = (float) cVar.k0();
                                } else if (iQ3 != 2) {
                                    cVar.r0();
                                    cVar.s0();
                                } else {
                                    fK4 = (float) cVar.k0();
                                }
                                fK1 = fK1;
                            } else {
                                f13 = fK2;
                                strN7 = cVar.n0();
                            }
                            fK2 = f13;
                        }
                        cVar.g0();
                        arrayList2.add(new d2.h(strN7, fK3, fK4));
                        fK1 = fK1;
                        fK2 = fK2;
                    }
                    f10 = fK1;
                    f11 = fK2;
                    cVar.f0();
                    arrayList2 = arrayList2;
                    hVar = hVar;
                    iL0 = iL0;
                    dVar2 = dVar2;
                    fK0 = f14;
                    fK1 = f10;
                    fK2 = f11;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
                default:
                    fC = fC;
                    map3 = map3;
                    arrayList2 = arrayList2;
                    hVar = hVar;
                    iL0 = iL0;
                    f10 = fK1;
                    f11 = fK2;
                    dVar2 = dVar2;
                    cVar.r0();
                    cVar.s0();
                    fK0 = f14;
                    fK1 = f10;
                    fK2 = f11;
                    dVar2 = dVar2;
                    fC = fC;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    hVar = hVar;
                    iL0 = iL0;
                    break;
            }
        }
        float f16 = fC;
        iVar.f18341j = new Rect(0, 0, (int) (iL1 * f16), (int) (iL0 * f16));
        iVar.f18342k = fK1;
        iVar.f18343l = fK2;
        iVar.f18344m = fK0;
        iVar.f18340i = arrayList;
        iVar.f18339h = dVar2;
        iVar.f18334c = map;
        iVar.f18335d = map2;
        iVar.f18338g = hVar;
        iVar.f18336e = map3;
        iVar.f18337f = arrayList2;
        return iVar;
    }
}
