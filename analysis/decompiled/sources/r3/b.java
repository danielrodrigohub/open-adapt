package r3;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.appcompat.widget.k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import l5.c0;
import m5.g0;
import n3.s0;
import o3.v0;
import u6.p0;

/* JADX INFO: compiled from: DefaultDrmSessionManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UUID f14443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s.c f14444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y f14445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap<String, String> f14446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f14447f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f14448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f14449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f14450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c0 f14451j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final g f14452k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f14453l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<r3.a> f14454m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Set<e> f14455n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Set<r3.a> f14456o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14457p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public s f14458q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public r3.a f14459r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public r3.a f14460s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Looper f14461t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Handler f14462u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f14463v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public byte[] f14464w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public v0 f14465x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public volatile c f14466y;

    /* JADX INFO: renamed from: r3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultDrmSessionManager.java */
    public class C0248b implements s.b {
        public C0248b() {
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSessionManager.java */
    @SuppressLint({"HandlerLeak"})
    public class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<r3.a>] */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (r3.a aVar : b.this.f14454m) {
                if (Arrays.equals(aVar.f14431u, bArr)) {
                    if (message.what == 2 && aVar.f14415e == 0 && aVar.f14425o == 4) {
                        int i10 = g0.f10384a;
                        aVar.i(false);
                        return;
                    }
                    return;
                }
            }
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSessionManager.java */
    public static final class d extends Exception {
        public d(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSessionManager.java */
    public class e implements l.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final k.a f14469b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public r3.e f14470c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f14471d;

        public e(k.a aVar) {
            this.f14469b = aVar;
        }

        @Override // r3.l.b
        public final void a() {
            Handler handler = b.this.f14462u;
            Objects.requireNonNull(handler);
            g0.P(handler, new k1(this, 2));
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSessionManager.java */
    public class f implements r3.a.InterfaceC0247a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Set<r3.a> f14473a = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public r3.a f14474b;

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashSet, java.util.Set<r3.a>] */
        public final void a(Exception exc, boolean z10) {
            this.f14474b = null;
            u6.v vVarS = u6.v.s(this.f14473a);
            this.f14473a.clear();
            u6.a aVarListIterator = vVarS.listIterator(0);
            while (aVarListIterator.hasNext()) {
                ((r3.a) aVarListIterator.next()).k(exc, z10 ? 1 : 3);
            }
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSessionManager.java */
    public class g implements r3.a.b {
        public g() {
        }
    }

    public b(UUID uuid, s.c cVar, y yVar, HashMap map, boolean z10, int[] iArr, boolean z11, c0 c0Var, long j10, a aVar) {
        Objects.requireNonNull(uuid);
        m5.a.b(!n3.i.f11426b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f14443b = uuid;
        this.f14444c = cVar;
        this.f14445d = yVar;
        this.f14446e = map;
        this.f14447f = z10;
        this.f14448g = iArr;
        this.f14449h = z11;
        this.f14451j = c0Var;
        this.f14450i = new f();
        this.f14452k = new g();
        this.f14463v = 0;
        this.f14454m = new ArrayList();
        this.f14455n = u6.v0.e();
        this.f14456o = u6.v0.e();
        this.f14453l = j10;
    }

    public static boolean h(r3.e eVar) {
        r3.a aVar = (r3.a) eVar;
        if (aVar.f14425o == 1) {
            if (g0.f10384a < 19) {
                return true;
            }
            r3.e.a aVarF = aVar.f();
            Objects.requireNonNull(aVarF);
            if (aVarF.getCause() instanceof ResourceBusyException) {
                return true;
            }
        }
        return false;
    }

    public static List<r3.d.b> k(r3.d dVar, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(dVar.f14482k);
        for (int i10 = 0; i10 < dVar.f14482k; i10++) {
            r3.d.b bVar = dVar.f14479h[i10];
            if ((bVar.b(uuid) || (n3.i.f11427c.equals(uuid) && bVar.b(n3.i.f11426b))) && (bVar.f14487l != null || z10)) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    @Override // r3.l
    public final void a() {
        int i10 = this.f14457p - 1;
        this.f14457p = i10;
        if (i10 != 0) {
            return;
        }
        if (this.f14453l != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f14454m);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((r3.a) arrayList.get(i11)).d(null);
            }
        }
        n();
        l();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<r3.a>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List<r3.a>] */
    @Override // r3.l
    public final void b() {
        int i10 = this.f14457p;
        this.f14457p = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.f14458q == null) {
            s sVarA = this.f14444c.a(this.f14443b);
            this.f14458q = sVarA;
            sVarA.k(new C0248b());
        } else if (this.f14453l != -9223372036854775807L) {
            for (int i11 = 0; i11 < this.f14454m.size(); i11++) {
                ((r3.a) this.f14454m.get(i11)).c(null);
            }
        }
    }

    @Override // r3.l
    public final l.b c(k.a aVar, s0 s0Var) {
        int i10 = 1;
        m5.a.e(this.f14457p > 0);
        m5.a.f(this.f14461t);
        e eVar = new e(aVar);
        Handler handler = this.f14462u;
        Objects.requireNonNull(handler);
        handler.post(new y0.u(eVar, s0Var, i10));
        return eVar;
    }

    @Override // r3.l
    public final r3.e d(k.a aVar, s0 s0Var) {
        m5.a.e(this.f14457p > 0);
        m5.a.f(this.f14461t);
        return g(this.f14461t, aVar, s0Var, true);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0029  */
    /* JADX WARN: Code duplicated, block: B:41:0x0090  */
    /* JADX WARN: Code duplicated, block: B:48:? A[RETURN, SYNTHETIC] */
    @Override // r3.l
    public final int e(s0 s0Var) {
        String str;
        s sVar = this.f14458q;
        Objects.requireNonNull(sVar);
        int iL = sVar.l();
        r3.d dVar = s0Var.f11690v;
        boolean z10 = false;
        if (dVar == null) {
            int i10 = m5.s.i(s0Var.f11687s);
            int[] iArr = this.f14448g;
            int i11 = g0.f10384a;
            int i12 = 0;
            while (i12 < iArr.length) {
                if (iArr[i12] == i10) {
                    if (i12 != -1) {
                        return iL;
                    }
                    return 0;
                }
                i12++;
            }
            i12 = -1;
            if (i12 != -1) {
                return iL;
            }
            return 0;
        }
        if (this.f14464w != null) {
            z10 = true;
        } else if (!((ArrayList) k(dVar, this.f14443b, true)).isEmpty()) {
            str = dVar.f14481j;
            if (str != null || "cenc".equals(str) || (!"cbcs".equals(str) ? !("cbc1".equals(str) || "cens".equals(str)) : g0.f10384a >= 25)) {
                z10 = true;
            }
        } else if (dVar.f14482k == 1 && dVar.f14479h[0].b(n3.i.f11426b)) {
            StringBuilder sbC = a0.b.c("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sbC.append(this.f14443b);
            m5.p.g("DefaultDrmSessionMgr", sbC.toString());
            str = dVar.f14481j;
            if (str != null) {
                z10 = true;
            } else {
                z10 = true;
            }
        }
        if (z10) {
            return iL;
        }
        return 1;
    }

    @Override // r3.l
    public final void f(Looper looper, v0 v0Var) {
        synchronized (this) {
            Looper looper2 = this.f14461t;
            if (looper2 == null) {
                this.f14461t = looper;
                this.f14462u = new Handler(looper);
            } else {
                m5.a.e(looper2 == looper);
                Objects.requireNonNull(this.f14462u);
            }
        }
        this.f14465x = v0Var;
    }

    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.ArrayList, java.util.List<r3.a>] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.ArrayList, java.util.List<r3.a>] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.util.ArrayList, java.util.List<r3.a>] */
    public final r3.e g(Looper looper, k.a aVar, s0 s0Var, boolean z10) {
        List<r3.d.b> listK;
        if (this.f14466y == null) {
            this.f14466y = new c(looper);
        }
        r3.d dVar = s0Var.f11690v;
        int i10 = 0;
        r3.a aVarJ = null;
        if (dVar == null) {
            int i11 = m5.s.i(s0Var.f11687s);
            s sVar = this.f14458q;
            Objects.requireNonNull(sVar);
            if (sVar.l() == 2 && t.f14514d) {
                return null;
            }
            int[] iArr = this.f14448g;
            int i12 = g0.f10384a;
            while (true) {
                if (i10 >= iArr.length) {
                    i10 = -1;
                    break;
                }
                if (iArr[i10] == i11) {
                    break;
                }
                i10++;
            }
            if (i10 == -1 || sVar.l() == 1) {
                return null;
            }
            r3.a aVar2 = this.f14459r;
            if (aVar2 == null) {
                u6.a aVar3 = u6.v.f16002i;
                r3.a aVarJ2 = j(p0.f15967l, true, null, z10);
                this.f14454m.add(aVarJ2);
                this.f14459r = aVarJ2;
            } else {
                aVar2.c(null);
            }
            return this.f14459r;
        }
        if (this.f14464w == null) {
            listK = k(dVar, this.f14443b, false);
            if (((ArrayList) listK).isEmpty()) {
                d dVar2 = new d(this.f14443b);
                m5.p.d("DefaultDrmSessionMgr", "DRM error", dVar2);
                if (aVar != null) {
                    aVar.e(dVar2);
                }
                return new r(new r3.e.a(dVar2, 6003));
            }
        } else {
            listK = null;
        }
        if (this.f14447f) {
            for (r3.a aVar4 : this.f14454m) {
                if (g0.a(aVar4.f14411a, listK)) {
                    aVarJ = aVar4;
                    break;
                }
            }
        } else {
            aVarJ = this.f14460s;
        }
        if (aVarJ == null) {
            aVarJ = j(listK, false, aVar, z10);
            if (!this.f14447f) {
                this.f14460s = aVarJ;
            }
            this.f14454m.add(aVarJ);
        } else {
            aVarJ.c(aVar);
        }
        return aVarJ;
    }

    public final r3.a i(List<r3.d.b> list, boolean z10, k.a aVar) {
        Objects.requireNonNull(this.f14458q);
        boolean z11 = this.f14449h | z10;
        UUID uuid = this.f14443b;
        s sVar = this.f14458q;
        f fVar = this.f14450i;
        g gVar = this.f14452k;
        int i10 = this.f14463v;
        byte[] bArr = this.f14464w;
        HashMap<String, String> map = this.f14446e;
        y yVar = this.f14445d;
        Looper looper = this.f14461t;
        Objects.requireNonNull(looper);
        c0 c0Var = this.f14451j;
        v0 v0Var = this.f14465x;
        Objects.requireNonNull(v0Var);
        r3.a aVar2 = new r3.a(uuid, sVar, fVar, gVar, list, i10, z11, z10, bArr, map, yVar, looper, c0Var, v0Var);
        aVar2.c(aVar);
        if (this.f14453l != -9223372036854775807L) {
            aVar2.c(null);
        }
        return aVar2;
    }

    public final r3.a j(List<r3.d.b> list, boolean z10, k.a aVar, boolean z11) {
        r3.a aVarI = i(list, z10, aVar);
        if (h(aVarI) && !this.f14456o.isEmpty()) {
            m();
            aVarI.d(aVar);
            if (this.f14453l != -9223372036854775807L) {
                aVarI.d(null);
            }
            aVarI = i(list, z10, aVar);
        }
        if (!h(aVarI) || !z11 || this.f14455n.isEmpty()) {
            return aVarI;
        }
        n();
        if (!this.f14456o.isEmpty()) {
            m();
        }
        aVarI.d(aVar);
        if (this.f14453l != -9223372036854775807L) {
            aVarI.d(null);
        }
        return i(list, z10, aVar);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<r3.a>] */
    public final void l() {
        if (this.f14458q != null && this.f14457p == 0 && this.f14454m.isEmpty() && this.f14455n.isEmpty()) {
            s sVar = this.f14458q;
            Objects.requireNonNull(sVar);
            sVar.a();
            this.f14458q = null;
        }
    }

    public final void m() {
        Iterator it = u6.a0.s(this.f14456o).iterator();
        while (it.hasNext()) {
            ((r3.e) it.next()).d(null);
        }
    }

    public final void n() {
        Iterator it = u6.a0.s(this.f14455n).iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            Handler handler = b.this.f14462u;
            Objects.requireNonNull(handler);
            g0.P(handler, new k1(eVar, 2));
        }
    }
}
