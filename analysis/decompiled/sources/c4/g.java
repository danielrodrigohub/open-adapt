package c4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import n3.s0;
import u6.p0;

/* JADX INFO: compiled from: DefaultTsPayloadReaderFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements d0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<s0> f3992b;

    public g() {
        u6.a aVar = u6.v.f16002i;
        u6.v<Object> vVar = p0.f15967l;
        this.f3991a = 0;
        this.f3992b = vVar;
    }

    @Override // c4.d0.c
    public final d0 a(int i10, d0.b bVar) {
        if (i10 != 2) {
            if (i10 == 3 || i10 == 4) {
                return new t(new q(bVar.f3947a));
            }
            if (i10 == 21) {
                return new t(new o());
            }
            if (i10 == 27) {
                if (c(4)) {
                    return null;
                }
                return new t(new m(new z(b(bVar)), c(1), c(8)));
            }
            if (i10 == 36) {
                return new t(new n(new z(b(bVar))));
            }
            if (i10 == 89) {
                return new t(new i(bVar.f3948b));
            }
            if (i10 != 138) {
                if (i10 == 172) {
                    return new t(new d(bVar.f3947a));
                }
                if (i10 == 257) {
                    return new y(new s("application/vnd.dvb.ait"));
                }
                if (i10 == 134) {
                    if (c(16)) {
                        return null;
                    }
                    return new y(new s("application/x-scte35"));
                }
                if (i10 != 135) {
                    switch (i10) {
                        case 15:
                            if (c(2)) {
                                return null;
                            }
                            return new t(new f(false, bVar.f3947a));
                        case 16:
                            return new t(new l(new e0(b(bVar))));
                        case 17:
                            if (c(2)) {
                                return null;
                            }
                            return new t(new p(bVar.f3947a));
                        default:
                            switch (i10) {
                                case 128:
                                    break;
                                case 129:
                                    break;
                                case 130:
                                    if (!c(64)) {
                                        return null;
                                    }
                                    break;
                                default:
                                    return null;
                            }
                            break;
                    }
                }
                return new t(new b(bVar.f3947a));
            }
            return new t(new h(bVar.f3947a));
        }
        return new t(new k(new e0(b(bVar))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v4 */
    public final List<s0> b(d0.b bVar) {
        String str;
        int i10;
        if (c(32)) {
            return this.f3992b;
        }
        m5.w wVar = new m5.w(bVar.f3949c);
        ArrayList arrayList = this.f3992b;
        while (wVar.f10477c - wVar.f10476b > 0) {
            int iT = wVar.t();
            int iT2 = wVar.f10476b + wVar.t();
            if (iT == 134) {
                arrayList = new ArrayList();
                int iT3 = wVar.t() & 31;
                for (int i11 = 0; i11 < iT3; i11++) {
                    String strQ = wVar.q(3);
                    int iT4 = wVar.t();
                    boolean z10 = (iT4 & 128) != 0;
                    if (z10) {
                        i10 = iT4 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i10 = 1;
                    }
                    byte bT = (byte) wVar.t();
                    wVar.E(1);
                    List<byte[]> listSingletonList = null;
                    if (z10) {
                        listSingletonList = Collections.singletonList((bT & 64) != 0 ? new byte[]{1} : new byte[]{0});
                    }
                    s0.a aVar = new s0.a();
                    aVar.f11705k = str;
                    aVar.f11697c = strQ;
                    aVar.C = i10;
                    aVar.f11707m = listSingletonList;
                    arrayList.add(new s0(aVar));
                }
            }
            wVar.D(iT2);
            arrayList = arrayList;
        }
        return arrayList;
    }

    public final boolean c(int i10) {
        return (i10 & this.f3991a) != 0;
    }

    public g(int i10, List<s0> list) {
        this.f3991a = i10;
        this.f3992b = list;
    }
}
