package ee;

import androidx.appcompat.widget.e0;
import de.a0;
import de.d0;
import gd.n;
import gd.z;
import java.io.IOException;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;
import qd.p;
import rd.o;
import rd.u;
import rd.v;
import rd.w;
import yd.s;

/* JADX INFO: compiled from: zip.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return hd.a.b(((f) t10).f6756a, ((f) t11).f6756a);
        }
    }

    /* JADX INFO: compiled from: zip.kt */
    public static final class b extends o implements p<Integer, Long, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ u f6764h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ long f6765i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ v f6766j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ de.f f6767k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final /* synthetic */ v f6768l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final /* synthetic */ v f6769m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(u uVar, long j10, v vVar, de.f fVar, v vVar2, v vVar3) {
            super(2);
            this.f6764h = uVar;
            this.f6765i = j10;
            this.f6766j = vVar;
            this.f6767k = fVar;
            this.f6768l = vVar2;
            this.f6769m = vVar3;
        }

        @Override // qd.p
        public final fd.o invoke(Integer num, Long l10) throws IOException {
            int iIntValue = num.intValue();
            long jLongValue = l10.longValue();
            if (iIntValue == 1) {
                u uVar = this.f6764h;
                if (uVar.f14793h) {
                    throw new IOException("bad zip: zip64 extra repeated");
                }
                uVar.f14793h = true;
                if (jLongValue < this.f6765i) {
                    throw new IOException("bad zip: zip64 extra too short");
                }
                v vVar = this.f6766j;
                long jI = vVar.f14794h;
                if (jI == 4294967295L) {
                    jI = this.f6767k.I();
                }
                vVar.f14794h = jI;
                v vVar2 = this.f6768l;
                vVar2.f14794h = vVar2.f14794h == 4294967295L ? this.f6767k.I() : 0L;
                v vVar3 = this.f6769m;
                vVar3.f14794h = vVar3.f14794h == 4294967295L ? this.f6767k.I() : 0L;
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: zip.kt */
    public static final class c extends o implements p<Integer, Long, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ de.f f6770h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w<Long> f6771i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ w<Long> f6772j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ w<Long> f6773k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(de.f fVar, w<Long> wVar, w<Long> wVar2, w<Long> wVar3) {
            super(2);
            this.f6770h = fVar;
            this.f6771i = wVar;
            this.f6772j = wVar2;
            this.f6773k = wVar3;
        }

        /* JADX WARN: Type inference failed for: r11v12, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r1v12, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r1v8, types: [T, java.lang.Long] */
        @Override // qd.p
        public final fd.o invoke(Integer num, Long l10) throws IOException {
            int iIntValue = num.intValue();
            long jLongValue = l10.longValue();
            if (iIntValue == 21589) {
                if (jLongValue < 1) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                int i10 = this.f6770h.readByte() & 255;
                boolean z10 = (i10 & 1) == 1;
                boolean z11 = (i10 & 2) == 2;
                boolean z12 = (i10 & 4) == 4;
                de.f fVar = this.f6770h;
                long j10 = z10 ? 5L : 1L;
                if (z11) {
                    j10 += 4;
                }
                if (z12) {
                    j10 += 4;
                }
                if (jLongValue < j10) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                if (z10) {
                    this.f6771i.f14795h = Long.valueOf(((long) fVar.y()) * 1000);
                }
                if (z11) {
                    this.f6772j.f14795h = Long.valueOf(((long) this.f6770h.y()) * 1000);
                }
                if (z12) {
                    this.f6773k.f14795h = Long.valueOf(((long) this.f6770h.y()) * 1000);
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList, java.util.List<de.a0>] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.util.ArrayList, java.util.List<de.a0>] */
    public static final Map<a0, f> a(List<f> list) {
        a0 a0VarA = a0.f6189i.a("/", false);
        Map<a0, f> mapA = z.A(new fd.e(a0VarA, new f(a0VarA)));
        for (f fVar : n.i0(list, new a())) {
            if (mapA.put(fVar.f6756a, fVar) == null) {
                while (true) {
                    a0 a0VarI = fVar.f6756a.i();
                    if (a0VarI == null) {
                        break;
                    }
                    f fVar2 = (f) ((LinkedHashMap) mapA).get(a0VarI);
                    if (fVar2 != null) {
                        fVar2.f6763h.add(fVar.f6756a);
                        break;
                    }
                    f fVar3 = new f(a0VarI);
                    mapA.put(a0VarI, fVar3);
                    fVar3.f6763h.add(fVar.f6756a);
                    fVar = fVar3;
                }
            }
        }
        return mapA;
    }

    public static final String b(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("0x");
        d3.e.c(16);
        String string = Integer.toString(i10, 16);
        p4.h.i(string, "toString(this, checkRadix(radix))");
        sb2.append(string);
        return sb2.toString();
    }

    public static final f c(de.f fVar) throws IOException {
        Long lValueOf;
        d0 d0Var = (d0) fVar;
        int iY = d0Var.y();
        if (iY != 33639248) {
            StringBuilder sbC = a0.b.c("bad zip: expected ");
            sbC.append(b(33639248));
            sbC.append(" but was ");
            sbC.append(b(iY));
            throw new IOException(sbC.toString());
        }
        d0Var.a(4L);
        int iY2 = d0Var.Y() & 65535;
        if ((iY2 & 1) != 0) {
            StringBuilder sbC2 = a0.b.c("unsupported zip: general purpose bit flag=");
            sbC2.append(b(iY2));
            throw new IOException(sbC2.toString());
        }
        int iY3 = d0Var.Y() & 65535;
        int iY4 = d0Var.Y() & 65535;
        int iY5 = d0Var.Y() & 65535;
        if (iY4 == -1) {
            lValueOf = null;
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.set(14, 0);
            gregorianCalendar.set(((iY5 >> 9) & 127) + 1980, ((iY5 >> 5) & 15) - 1, iY5 & 31, (iY4 >> 11) & 31, (iY4 >> 5) & 63, (iY4 & 31) << 1);
            lValueOf = Long.valueOf(gregorianCalendar.getTime().getTime());
        }
        Long l10 = lValueOf;
        d0Var.y();
        v vVar = new v();
        vVar.f14794h = ((long) d0Var.y()) & 4294967295L;
        v vVar2 = new v();
        vVar2.f14794h = ((long) d0Var.y()) & 4294967295L;
        int iY6 = d0Var.Y() & 65535;
        int iY7 = d0Var.Y() & 65535;
        int iY8 = d0Var.Y() & 65535;
        d0Var.a(8L);
        v vVar3 = new v();
        vVar3.f14794h = ((long) d0Var.y()) & 4294967295L;
        String strF0 = d0Var.f0(iY6);
        if (s.h0(strF0, (char) 0)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        long j10 = vVar2.f14794h == 4294967295L ? ((long) 8) + 0 : 0L;
        if (vVar.f14794h == 4294967295L) {
            j10 += (long) 8;
        }
        if (vVar3.f14794h == 4294967295L) {
            j10 += (long) 8;
        }
        long j11 = j10;
        u uVar = new u();
        d(fVar, iY7, new b(uVar, j11, vVar2, fVar, vVar, vVar3));
        if (j11 <= 0 || uVar.f14793h) {
            return new f(a0.f6189i.a("/", false).j(strF0), yd.o.Y(strF0, "/", false), d0Var.f0(iY8), vVar.f14794h, vVar2.f14794h, iY3, l10, vVar3.f14794h);
        }
        throw new IOException("bad zip: zip64 extra required but absent");
    }

    public static final void d(de.f fVar, int i10, p<? super Integer, ? super Long, fd.o> pVar) throws IOException {
        long j10 = i10;
        while (j10 != 0) {
            if (j10 < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            d0 d0Var = (d0) fVar;
            int iY = d0Var.Y() & 65535;
            long jY = ((long) d0Var.Y()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long j11 = j10 - ((long) 4);
            if (j11 < jY) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            d0Var.T(jY);
            long j12 = d0Var.f6213i.f6199i;
            pVar.invoke(Integer.valueOf(iY), Long.valueOf(jY));
            de.c cVar = d0Var.f6213i;
            long j13 = (cVar.f6199i + jY) - j12;
            if (j13 < 0) {
                throw new IOException(e0.d("unsupported zip: too many bytes processed for ", iY));
            }
            if (j13 > 0) {
                cVar.a(j13);
            }
            j10 = j11 - jY;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final de.j e(de.f fVar, de.j jVar) throws IOException {
        w wVar = new w();
        wVar.f14795h = jVar != null ? jVar.f6248f : 0;
        w wVar2 = new w();
        w wVar3 = new w();
        d0 d0Var = (d0) fVar;
        int iY = d0Var.y();
        if (iY != 67324752) {
            StringBuilder sbC = a0.b.c("bad zip: expected ");
            sbC.append(b(67324752));
            sbC.append(" but was ");
            sbC.append(b(iY));
            throw new IOException(sbC.toString());
        }
        d0Var.a(2L);
        int iY2 = d0Var.Y() & 65535;
        if ((iY2 & 1) != 0) {
            StringBuilder sbC2 = a0.b.c("unsupported zip: general purpose bit flag=");
            sbC2.append(b(iY2));
            throw new IOException(sbC2.toString());
        }
        d0Var.a(18L);
        long jY = ((long) d0Var.Y()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int iY3 = d0Var.Y() & 65535;
        d0Var.a(jY);
        if (jVar == null) {
            d0Var.a(iY3);
            return null;
        }
        d(fVar, iY3, new c(fVar, wVar, wVar2, wVar3));
        return new de.j(jVar.f6243a, jVar.f6244b, null, jVar.f6246d, (Long) wVar3.f14795h, (Long) wVar.f14795h, (Long) wVar2.f14795h);
    }
}
