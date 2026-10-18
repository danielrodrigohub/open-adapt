package u4;

import android.net.Uri;
import android.text.TextUtils;
import c4.c0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import m5.d0;
import m5.g0;
import m5.h0;
import m5.s;
import m5.w;
import n3.s0;
import o3.v0;
import okhttp3.internal.http2.Http2;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import u6.p0;
import u6.v;

/* JADX INFO: compiled from: HlsMediaChunk.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends r4.m {
    public static final AtomicInteger L = new AtomicInteger();
    public final boolean A;
    public final boolean B;
    public k C;
    public n D;
    public int E;
    public boolean F;
    public volatile boolean G;
    public boolean H;
    public v<Integer> I;
    public boolean J;
    public boolean K;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f15773k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f15774l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Uri f15775m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f15776n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f15777o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final l5.j f15778p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final l5.m f15779q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final k f15780r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f15781s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f15782t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final d0 f15783u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final i f15784v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final List<s0> f15785w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final r3.d f15786x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final k4.g f15787y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final w f15788z;

    public j(i iVar, l5.j jVar, l5.m mVar, s0 s0Var, boolean z10, l5.j jVar2, l5.m mVar2, boolean z11, Uri uri, List<s0> list, int i10, Object obj, long j10, long j11, long j12, int i11, boolean z12, int i12, boolean z13, boolean z14, d0 d0Var, r3.d dVar, k kVar, k4.g gVar, w wVar, boolean z15, v0 v0Var) {
        super(jVar, mVar, s0Var, i10, obj, j10, j11, j12);
        this.A = z10;
        this.f15777o = i11;
        this.K = z12;
        this.f15774l = i12;
        this.f15779q = mVar2;
        this.f15778p = jVar2;
        this.F = mVar2 != null;
        this.B = z11;
        this.f15775m = uri;
        this.f15781s = z14;
        this.f15783u = d0Var;
        this.f15782t = z13;
        this.f15784v = iVar;
        this.f15785w = list;
        this.f15786x = dVar;
        this.f15780r = kVar;
        this.f15787y = gVar;
        this.f15788z = wVar;
        this.f15776n = z15;
        u6.a aVar = v.f16002i;
        this.I = p0.f15967l;
        this.f15773k = L.getAndIncrement();
    }

    public static byte[] f(String str) {
        if (androidx.activity.k.s(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @Override // l5.d0.d
    public final void a() throws IOException {
        k kVar;
        Objects.requireNonNull(this.D);
        if (this.C == null && (kVar = this.f15780r) != null) {
            s3.h hVar = ((b) kVar).f15735a;
            if ((hVar instanceof c0) || (hVar instanceof a4.e)) {
                this.C = kVar;
                this.F = false;
            }
        }
        if (this.F) {
            Objects.requireNonNull(this.f15778p);
            Objects.requireNonNull(this.f15779q);
            e(this.f15778p, this.f15779q, this.B, false);
            this.E = 0;
            this.F = false;
        }
        if (this.G) {
            return;
        }
        if (!this.f15782t) {
            e(this.f14566i, this.f14559b, this.A, true);
        }
        this.H = !this.G;
    }

    @Override // l5.d0.d
    public final void b() {
        this.G = true;
    }

    @Override // r4.m
    public final boolean d() {
        return this.H;
    }

    @RequiresNonNull({"output"})
    public final void e(l5.j jVar, l5.m mVar, boolean z10, boolean z11) throws IOException {
        l5.m mVarB;
        boolean z12;
        long j10;
        long j11;
        if (z10) {
            z12 = this.E != 0;
            mVarB = mVar;
        } else {
            mVarB = mVar.b(this.E);
            z12 = false;
        }
        try {
            s3.e eVarH = h(jVar, mVarB, z11);
            if (z12) {
                eVarH.k(this.E);
            }
            do {
                try {
                    try {
                        if (this.G) {
                            break;
                        }
                    } catch (EOFException e10) {
                        if ((this.f14561d.f11680l & Http2.INITIAL_MAX_FRAME_SIZE) == 0) {
                            throw e10;
                        }
                        ((b) this.C).f15735a.b(0L, 0L);
                        j10 = eVarH.f15040d;
                        j11 = mVar.f10076f;
                    }
                } catch (Throwable th) {
                    this.E = (int) (eVarH.f15040d - mVar.f10076f);
                    throw th;
                }
            } while (((b) this.C).f15735a.e(eVarH, b.f15734d) == 0);
            j10 = eVarH.f15040d;
            j11 = mVar.f10076f;
            this.E = (int) (j10 - j11);
            c3.d.i(jVar);
        } catch (Throwable th2) {
            c3.d.i(jVar);
            throw th2;
        }
    }

    public final int g(int i10) {
        m5.a.e(!this.f15776n);
        if (i10 >= this.I.size()) {
            return 0;
        }
        return this.I.get(i10).intValue();
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    @EnsuresNonNull({"extractor"})
    @RequiresNonNull({"output"})
    public final s3.e h(l5.j jVar, l5.m mVar, boolean z10) throws IOException {
        long j10;
        int i10;
        b bVar;
        b bVar2;
        s3.h aVar;
        boolean zJ;
        boolean z11;
        List<s0> listSingletonList;
        int i11;
        s3.h dVar;
        long jL = jVar.l(mVar);
        long jM = -9223372036854775807L;
        int i12 = 0;
        if (z10) {
            try {
                d0 d0Var = this.f15783u;
                boolean z12 = this.f15781s;
                long j11 = this.f14564g;
                synchronized (d0Var) {
                    m5.a.e(d0Var.f10373a == 9223372036854775806L);
                    if (d0Var.f10374b == -9223372036854775807L) {
                        if (z12) {
                            d0Var.f10376d.set(Long.valueOf(j11));
                        } else {
                            while (d0Var.f10374b == -9223372036854775807L) {
                                d0Var.wait();
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        }
        s3.e eVar = new s3.e(jVar, mVar.f10076f, jL);
        if (this.C == null) {
            eVar.f15042f = 0;
            try {
                this.f15788z.A(10);
                eVar.p(this.f15788z.f10475a, 0, 10, false);
                if (this.f15788z.v() == 4801587) {
                    this.f15788z.E(3);
                    int iS = this.f15788z.s();
                    int i13 = iS + 10;
                    w wVar = this.f15788z;
                    byte[] bArr = wVar.f10475a;
                    if (i13 > bArr.length) {
                        wVar.A(i13);
                        System.arraycopy(bArr, 0, this.f15788z.f10475a, 0, 10);
                    }
                    eVar.p(this.f15788z.f10475a, 10, iS, false);
                    f4.a aVarL = this.f15787y.l(this.f15788z.f10475a, iS);
                    if (aVarL != null) {
                        int length = aVarL.f7052h.length;
                        for (int i14 = 0; i14 < length; i14++) {
                            f4.a.b bVar3 = aVarL.f7052h[i14];
                            if (bVar3 instanceof k4.k) {
                                k4.k kVar = (k4.k) bVar3;
                                if ("com.apple.streaming.transportStreamTimestamp".equals(kVar.f9685i)) {
                                    System.arraycopy(kVar.f9686j, 0, this.f15788z.f10475a, 0, 8);
                                    this.f15788z.D(0);
                                    this.f15788z.C(8);
                                    jM = this.f15788z.m() & 8589934591L;
                                    break;
                                }
                            }
                        }
                    }
                }
            } catch (EOFException unused2) {
            }
            eVar.f15042f = 0;
            k kVar2 = this.f15780r;
            if (kVar2 != null) {
                b bVar4 = (b) kVar2;
                s3.h hVar = bVar4.f15735a;
                m5.a.e(!((hVar instanceof c0) || (hVar instanceof a4.e)));
                s3.h hVar2 = bVar4.f15735a;
                if (hVar2 instanceof q) {
                    dVar = new q(bVar4.f15736b.f11678j, bVar4.f15737c);
                } else if (hVar2 instanceof c4.e) {
                    dVar = new c4.e(0);
                } else if (hVar2 instanceof c4.a) {
                    dVar = new c4.a();
                } else if (hVar2 instanceof c4.c) {
                    dVar = new c4.c();
                } else {
                    if (!(hVar2 instanceof z3.d)) {
                        StringBuilder sbC = a0.b.c("Unexpected extractor type for recreation: ");
                        sbC.append(bVar4.f15735a.getClass().getSimpleName());
                        throw new IllegalStateException(sbC.toString());
                    }
                    dVar = new z3.d();
                }
                bVar2 = new b(dVar, bVar4.f15736b, bVar4.f15737c);
                j10 = jM;
            } else {
                i iVar = this.f15784v;
                Uri uri = mVar.f10071a;
                s0 s0Var = this.f14561d;
                List<s0> list = this.f15785w;
                d0 d0Var2 = this.f15783u;
                Map<String, List<String>> mapH = jVar.h();
                Objects.requireNonNull((d) iVar);
                int iB = h0.b(s0Var.f11687s);
                int iC = h0.c(mapH);
                int iD = h0.d(uri);
                int[] iArr = d.f15739b;
                int i15 = 7;
                ArrayList arrayList = new ArrayList(7);
                d.a(iB, arrayList);
                d.a(iC, arrayList);
                d.a(iD, arrayList);
                for (int i16 = 0; i16 < 7; i16++) {
                    d.a(iArr[i16], arrayList);
                }
                eVar.f15042f = 0;
                s3.h hVar3 = null;
                int i17 = 0;
                int i18 = 1;
                while (true) {
                    if (i17 >= arrayList.size()) {
                        j10 = jM;
                        i10 = 0;
                        Objects.requireNonNull(hVar3);
                        bVar = new b(hVar3, s0Var, d0Var2);
                        break;
                    }
                    int iIntValue = ((Integer) arrayList.get(i17)).intValue();
                    ArrayList arrayList2 = arrayList;
                    if (iIntValue == 0) {
                        j10 = jM;
                        aVar = new c4.a();
                    } else if (iIntValue == i18) {
                        j10 = jM;
                        aVar = new c4.c();
                    } else if (iIntValue == 2) {
                        j10 = jM;
                        aVar = new c4.e(0);
                    } else if (iIntValue == i15) {
                        j10 = jM;
                        aVar = new z3.d(0L);
                    } else if (iIntValue == 8) {
                        j10 = jM;
                        f4.a aVar2 = s0Var.f11685q;
                        if (aVar2 == null) {
                            z11 = false;
                            break;
                        }
                        int i19 = 0;
                        while (true) {
                            f4.a.b[] bVarArr = aVar2.f7052h;
                            if (i19 >= bVarArr.length) {
                                z11 = false;
                                break;
                            }
                            f4.a.b bVar5 = bVarArr[i19];
                            if (bVar5 instanceof o) {
                                z11 = !((o) bVar5).f15845j.isEmpty();
                                break;
                            }
                            i19++;
                        }
                        aVar = new a4.e(z11 ? 4 : 0, d0Var2, null, list != null ? list : Collections.emptyList());
                    } else if (iIntValue != 11) {
                        aVar = iIntValue != 13 ? null : new q(s0Var.f11678j, d0Var2);
                        j10 = jM;
                    } else {
                        if (list != null) {
                            i11 = 48;
                            listSingletonList = list;
                        } else {
                            s0.a aVar3 = new s0.a();
                            aVar3.f11705k = "application/cea-608";
                            listSingletonList = Collections.singletonList(new s0(aVar3));
                            i11 = 16;
                        }
                        String str = s0Var.f11684p;
                        if (TextUtils.isEmpty(str)) {
                            j10 = jM;
                        } else {
                            j10 = jM;
                            if (!(s.c(str, "audio/mp4a-latm") != null)) {
                                i11 |= 2;
                            }
                            if (!(s.c(str, "video/avc") != null)) {
                                i11 |= 4;
                            }
                        }
                        aVar = new c0(2, d0Var2, new c4.g(i11, listSingletonList));
                    }
                    Objects.requireNonNull(aVar);
                    try {
                        zJ = aVar.j(eVar);
                        i10 = 0;
                        eVar.f15042f = 0;
                    } catch (EOFException unused3) {
                        zJ = false;
                        eVar.f15042f = 0;
                        i10 = 0;
                    } catch (Throwable th) {
                        eVar.f15042f = 0;
                        throw th;
                    }
                    if (zJ) {
                        bVar = new b(aVar, s0Var, d0Var2);
                        break;
                    }
                    if (hVar3 == null && (iIntValue == iB || iIntValue == iC || iIntValue == iD || iIntValue == 11)) {
                        hVar3 = aVar;
                    }
                    i17++;
                    i15 = 7;
                    i18 = 1;
                    arrayList = arrayList2;
                    jM = j10;
                }
                bVar2 = bVar;
                i12 = i10;
            }
            this.C = bVar2;
            s3.h hVar4 = bVar2.f15735a;
            if ((((hVar4 instanceof c4.e) || (hVar4 instanceof c4.a) || (hVar4 instanceof c4.c) || (hVar4 instanceof z3.d)) ? 1 : i12) != 0) {
                this.D.I(j10 != -9223372036854775807L ? this.f15783u.b(j10) : this.f14564g);
            } else {
                this.D.I(0L);
            }
            this.D.E.clear();
            ((b) this.C).f15735a.g(this.D);
        }
        n nVar = this.D;
        r3.d dVar2 = this.f15786x;
        if (!g0.a(nVar.d0, dVar2)) {
            nVar.d0 = dVar2;
            while (true) {
                n.d[] dVarArr = nVar.C;
                if (i12 >= dVarArr.length) {
                    break;
                }
                if (nVar.V[i12]) {
                    n.d dVar3 = dVarArr[i12];
                    dVar3.I = dVar2;
                    dVar3.f13117z = true;
                }
                i12++;
            }
        }
        return eVar;
    }
}
