package r3;

import android.annotation.SuppressLint;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.newrelic.agent.android.api.v1.Defaults;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import l5.c0;
import m5.g0;
import n3.t0;
import o3.v0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: DefaultDrmSession.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements r3.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<r3.d.b> f14411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f14412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC0247a f14413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f14414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f14416f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f14417g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap<String, String> f14418h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m5.g<k.a> f14419i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c0 f14420j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final v0 f14421k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final y f14422l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final UUID f14423m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final e f14424n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14425o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14426p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public HandlerThread f14427q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public c f14428r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public q3.b f14429s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public r3.e.a f14430t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte[] f14431u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public byte[] f14432v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public s.a f14433w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public s.d f14434x;

    /* JADX INFO: renamed from: r3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultDrmSession.java */
    public interface InterfaceC0247a {
    }

    /* JADX INFO: compiled from: DefaultDrmSession.java */
    public interface b {
    }

    /* JADX INFO: compiled from: DefaultDrmSession.java */
    @SuppressLint({"HandlerLeak"})
    public class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f14435a;

        public c(Looper looper) {
            super(looper);
        }

        public final void a(int i10, Object obj, boolean z10) {
            obtainMessage(i10, new d(p4.r.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        /* JADX WARN: Code duplicated, block: B:34:0x009f  */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Object objC;
            d dVar = (d) message.obj;
            boolean z10 = true;
            try {
                int i10 = message.what;
                if (i10 == 0) {
                    objC = ((w) a.this.f14422l).c((s.d) dVar.f14440d);
                } else {
                    if (i10 != 1) {
                        throw new RuntimeException();
                    }
                    a aVar = a.this;
                    objC = ((w) aVar.f14422l).a(aVar.f14423m, (s.a) dVar.f14440d);
                }
            } catch (z e10) {
                d dVar2 = (d) message.obj;
                if (dVar2.f14438b) {
                    int i11 = dVar2.f14441e + 1;
                    dVar2.f14441e = i11;
                    if (i11 > a.this.f14420j.c(3)) {
                        z10 = false;
                    } else {
                        SystemClock.elapsedRealtime();
                        SystemClock.elapsedRealtime();
                        long jB = a.this.f14420j.b(new c0.c(e10.getCause() instanceof IOException ? (IOException) e10.getCause() : new f(e10.getCause()), dVar2.f14441e));
                        if (jB == -9223372036854775807L) {
                            z10 = false;
                        } else {
                            synchronized (this) {
                                if (this.f14435a) {
                                    z10 = false;
                                } else {
                                    sendMessageDelayed(Message.obtain(message), jB);
                                }
                            }
                        }
                    }
                } else {
                    z10 = false;
                }
                if (z10) {
                    return;
                } else {
                    objC = e10;
                }
            } catch (Exception e11) {
                m5.p.h("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e11);
                objC = e11;
            }
            c0 c0Var = a.this.f14420j;
            long j10 = dVar.f14437a;
            c0Var.d();
            synchronized (this) {
                if (!this.f14435a) {
                    a.this.f14424n.obtainMessage(message.what, Pair.create(dVar.f14440d, objC)).sendToTarget();
                }
            }
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSession.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f14437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f14438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f14439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Object f14440d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14441e;

        public d(long j10, boolean z10, long j11, Object obj) {
            this.f14437a = j10;
            this.f14438b = z10;
            this.f14439c = j11;
            this.f14440d = obj;
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSession.java */
    @SuppressLint({"HandlerLeak"})
    public class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Type inference failed for: r8v7, types: [java.util.HashSet, java.util.Set<r3.a>] */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i10 = message.what;
            if (i10 == 0) {
                a aVar = a.this;
                if (obj == aVar.f14434x) {
                    if (aVar.f14425o == 2 || aVar.j()) {
                        aVar.f14434x = null;
                        if (obj2 instanceof Exception) {
                            ((r3.b.f) aVar.f14413c).a((Exception) obj2, false);
                            return;
                        }
                        try {
                            aVar.f14412b.h((byte[]) obj2);
                            r3.b.f fVar = (r3.b.f) aVar.f14413c;
                            fVar.f14474b = null;
                            u6.v vVarS = u6.v.s(fVar.f14473a);
                            fVar.f14473a.clear();
                            u6.a aVarListIterator = vVarS.listIterator(0);
                            while (aVarListIterator.hasNext()) {
                                a aVar2 = (a) aVarListIterator.next();
                                if (aVar2.m()) {
                                    aVar2.i(true);
                                }
                            }
                            return;
                        } catch (Exception e10) {
                            ((r3.b.f) aVar.f14413c).a(e10, true);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (i10 != 1) {
                return;
            }
            a aVar3 = a.this;
            if (obj == aVar3.f14433w && aVar3.j()) {
                aVar3.f14433w = null;
                if (obj2 instanceof Exception) {
                    aVar3.l((Exception) obj2, false);
                    return;
                }
                try {
                    byte[] bArr = (byte[]) obj2;
                    if (aVar3.f14415e == 3) {
                        s sVar = aVar3.f14412b;
                        byte[] bArr2 = aVar3.f14432v;
                        int i11 = g0.f10384a;
                        sVar.f(bArr2, bArr);
                        aVar3.h(t0.f11724e);
                        return;
                    }
                    byte[] bArrF = aVar3.f14412b.f(aVar3.f14431u, bArr);
                    int i12 = aVar3.f14415e;
                    if ((i12 == 2 || (i12 == 0 && aVar3.f14432v != null)) && bArrF != null && bArrF.length != 0) {
                        aVar3.f14432v = bArrF;
                    }
                    aVar3.f14425o = 4;
                    aVar3.h(y0.g.f18207e);
                } catch (Exception e11) {
                    aVar3.l(e11, true);
                }
            }
        }
    }

    /* JADX INFO: compiled from: DefaultDrmSession.java */
    public static final class f extends IOException {
        public f(Throwable th) {
            super(th);
        }
    }

    public a(UUID uuid, s sVar, InterfaceC0247a interfaceC0247a, b bVar, List<r3.d.b> list, int i10, boolean z10, boolean z11, byte[] bArr, HashMap<String, String> map, y yVar, Looper looper, c0 c0Var, v0 v0Var) {
        if (i10 == 1 || i10 == 3) {
            Objects.requireNonNull(bArr);
        }
        this.f14423m = uuid;
        this.f14413c = interfaceC0247a;
        this.f14414d = bVar;
        this.f14412b = sVar;
        this.f14415e = i10;
        this.f14416f = z10;
        this.f14417g = z11;
        if (bArr != null) {
            this.f14432v = bArr;
            this.f14411a = null;
        } else {
            Objects.requireNonNull(list);
            this.f14411a = Collections.unmodifiableList(list);
        }
        this.f14418h = map;
        this.f14422l = yVar;
        this.f14419i = new m5.g<>();
        this.f14420j = c0Var;
        this.f14421k = v0Var;
        this.f14425o = 2;
        this.f14424n = new e(looper);
    }

    @Override // r3.e
    public final boolean a() {
        return this.f14416f;
    }

    @Override // r3.e
    public final UUID b() {
        return this.f14423m;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // r3.e
    public final void c(k.a aVar) {
        if (this.f14426p < 0) {
            StringBuilder sbC = a0.b.c("Session reference count less than zero: ");
            sbC.append(this.f14426p);
            m5.p.c("DefaultDrmSession", sbC.toString());
            this.f14426p = 0;
        }
        if (aVar != null) {
            m5.g<k.a> gVar = this.f14419i;
            synchronized (gVar.f10380h) {
                ArrayList arrayList = new ArrayList(gVar.f10383k);
                arrayList.add(aVar);
                gVar.f10383k = Collections.unmodifiableList(arrayList);
                Integer num = gVar.f10381i.get(aVar);
                if (num == null) {
                    HashSet hashSet = new HashSet(gVar.f10382j);
                    hashSet.add(aVar);
                    gVar.f10382j = Collections.unmodifiableSet(hashSet);
                }
                gVar.f10381i.put((E) aVar, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
            }
        }
        int i10 = this.f14426p + 1;
        this.f14426p = i10;
        if (i10 == 1) {
            m5.a.e(this.f14425o == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f14427q = handlerThread;
            handlerThread.start();
            this.f14428r = new c(this.f14427q.getLooper());
            if (m()) {
                i(true);
            }
        } else if (aVar != null && j() && this.f14419i.h(aVar) == 1) {
            aVar.d(this.f14425o);
        }
        r3.b.g gVar2 = (r3.b.g) this.f14414d;
        r3.b bVar = r3.b.this;
        if (bVar.f14453l != -9223372036854775807L) {
            bVar.f14456o.remove(this);
            Handler handler = r3.b.this.f14462u;
            Objects.requireNonNull(handler);
            handler.removeCallbacksAndMessages(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:54:0x0106  */
    /* JADX WARN: Code duplicated, block: B:57:0x011f  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // r3.e
    public final void d(k.a aVar) {
        r3.b bVar;
        r3.b.f fVar;
        r3.b bVar2;
        int i10 = this.f14426p;
        if (i10 <= 0) {
            m5.p.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i11 = 1;
        int i12 = i10 - 1;
        this.f14426p = i12;
        if (i12 == 0) {
            this.f14425o = 0;
            e eVar = this.f14424n;
            int i13 = g0.f10384a;
            eVar.removeCallbacksAndMessages(null);
            c cVar = this.f14428r;
            synchronized (cVar) {
                cVar.removeCallbacksAndMessages(null);
                cVar.f14435a = true;
            }
            this.f14428r = null;
            this.f14427q.quit();
            this.f14427q = null;
            this.f14429s = null;
            this.f14430t = null;
            this.f14433w = null;
            this.f14434x = null;
            byte[] bArr = this.f14431u;
            if (bArr != null) {
                this.f14412b.e(bArr);
                this.f14431u = null;
            }
        }
        if (aVar != null) {
            m5.g<k.a> gVar = this.f14419i;
            synchronized (gVar.f10380h) {
                Integer num = gVar.f10381i.get(aVar);
                if (num != null) {
                    ArrayList arrayList = new ArrayList(gVar.f10383k);
                    arrayList.remove(aVar);
                    gVar.f10383k = Collections.unmodifiableList(arrayList);
                    if (num.intValue() == 1) {
                        gVar.f10381i.remove(aVar);
                        HashSet hashSet = new HashSet(gVar.f10382j);
                        hashSet.remove(aVar);
                        gVar.f10382j = Collections.unmodifiableSet(hashSet);
                    } else {
                        gVar.f10381i.put((E) aVar, Integer.valueOf(num.intValue() - 1));
                    }
                }
            }
            if (this.f14419i.h(aVar) == 0) {
                aVar.f();
            }
        }
        b bVar3 = this.f14414d;
        int i14 = this.f14426p;
        r3.b.g gVar2 = (r3.b.g) bVar3;
        if (i14 == 1) {
            r3.b bVar4 = r3.b.this;
            if (bVar4.f14457p > 0 && bVar4.f14453l != -9223372036854775807L) {
                bVar4.f14456o.add(this);
                Handler handler = r3.b.this.f14462u;
                Objects.requireNonNull(handler);
                handler.postAtTime(new y0.t(this, i11), this, SystemClock.uptimeMillis() + r3.b.this.f14453l);
            } else if (i14 == 0) {
                r3.b.this.f14454m.remove(this);
                bVar = r3.b.this;
                if (bVar.f14459r == this) {
                    bVar.f14459r = null;
                }
                if (bVar.f14460s == this) {
                    bVar.f14460s = null;
                }
                fVar = bVar.f14450i;
                fVar.f14473a.remove(this);
                if (fVar.f14474b == this) {
                    fVar.f14474b = null;
                    if (!fVar.f14473a.isEmpty()) {
                        a next = fVar.f14473a.iterator().next();
                        fVar.f14474b = next;
                        next.o();
                    }
                }
                bVar2 = r3.b.this;
                if (bVar2.f14453l != -9223372036854775807L) {
                    Handler handler2 = bVar2.f14462u;
                    Objects.requireNonNull(handler2);
                    handler2.removeCallbacksAndMessages(this);
                    r3.b.this.f14456o.remove(this);
                }
            }
        } else if (i14 == 0) {
            r3.b.this.f14454m.remove(this);
            bVar = r3.b.this;
            if (bVar.f14459r == this) {
                bVar.f14459r = null;
            }
            if (bVar.f14460s == this) {
                bVar.f14460s = null;
            }
            fVar = bVar.f14450i;
            fVar.f14473a.remove(this);
            if (fVar.f14474b == this) {
                fVar.f14474b = null;
                if (!fVar.f14473a.isEmpty()) {
                    a next2 = fVar.f14473a.iterator().next();
                    fVar.f14474b = next2;
                    next2.o();
                }
            }
            bVar2 = r3.b.this;
            if (bVar2.f14453l != -9223372036854775807L) {
                Handler handler3 = bVar2.f14462u;
                Objects.requireNonNull(handler3);
                handler3.removeCallbacksAndMessages(this);
                r3.b.this.f14456o.remove(this);
            }
        }
        r3.b.this.l();
    }

    @Override // r3.e
    public final boolean e(String str) {
        s sVar = this.f14412b;
        byte[] bArr = this.f14431u;
        m5.a.f(bArr);
        return sVar.b(bArr, str);
    }

    @Override // r3.e
    public final r3.e.a f() {
        if (this.f14425o == 1) {
            return this.f14430t;
        }
        return null;
    }

    @Override // r3.e
    public final q3.b g() {
        return this.f14429s;
    }

    @Override // r3.e
    public final int getState() {
        return this.f14425o;
    }

    public final void h(m5.f<k.a> fVar) {
        Set<k.a> set;
        m5.g<k.a> gVar = this.f14419i;
        synchronized (gVar.f10380h) {
            set = gVar.f10382j;
        }
        Iterator<k.a> it = set.iterator();
        while (it.hasNext()) {
            fVar.b(it.next());
        }
    }

    @RequiresNonNull({"sessionId"})
    public final void i(boolean z10) {
        long jMin;
        if (this.f14417g) {
            return;
        }
        byte[] bArr = this.f14431u;
        int i10 = g0.f10384a;
        int i11 = this.f14415e;
        boolean z11 = false;
        if (i11 != 0 && i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    return;
                }
                Objects.requireNonNull(this.f14432v);
                Objects.requireNonNull(this.f14431u);
                n(this.f14432v, 3, z10);
                return;
            }
            byte[] bArr2 = this.f14432v;
            if (bArr2 != null) {
                try {
                    this.f14412b.c(bArr, bArr2);
                    z11 = true;
                } catch (Exception e10) {
                    k(e10, 1);
                }
                if (!z11) {
                    return;
                }
            }
            n(bArr, 2, z10);
            return;
        }
        byte[] bArr3 = this.f14432v;
        if (bArr3 == null) {
            n(bArr, 1, z10);
            return;
        }
        if (this.f14425o != 4) {
            try {
                this.f14412b.c(bArr, bArr3);
                z11 = true;
            } catch (Exception e11) {
                k(e11, 1);
            }
            if (!z11) {
                return;
            }
        }
        if (n3.i.f11428d.equals(this.f14423m)) {
            Map<String, String> mapP = p();
            Pair pair = mapP == null ? null : new Pair(Long.valueOf(g7.c.c(mapP, "LicenseDurationRemaining")), Long.valueOf(g7.c.c(mapP, "PlaybackDurationRemaining")));
            Objects.requireNonNull(pair);
            jMin = Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
        } else {
            jMin = Long.MAX_VALUE;
        }
        if (this.f14415e != 0 || jMin > 60) {
            if (jMin <= 0) {
                k(new x(), 2);
                return;
            } else {
                this.f14425o = 4;
                h(y0.h.f18223f);
                return;
            }
        }
        m5.p.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jMin);
        n(bArr, 2, z10);
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = Defaults.COLLECT_NETWORK_ERRORS)
    public final boolean j() {
        int i10 = this.f14425o;
        return i10 == 3 || i10 == 4;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0020  */
    public final void k(Exception exc, int i10) {
        int iB;
        Set<k.a> set;
        int i11 = g0.f10384a;
        if (i11 >= 21 && o.a(exc)) {
            iB = o.b(exc);
        } else if (i11 >= 23 && p.a(exc)) {
            iB = 6006;
        } else if (i11 >= 18 && n.b(exc)) {
            iB = 6002;
        } else if (i11 >= 18 && n.a(exc)) {
            iB = 6007;
        } else if (exc instanceof a0) {
            iB = 6001;
        } else if (exc instanceof r3.b.d) {
            iB = 6003;
        } else if (exc instanceof x) {
            iB = 6008;
        } else if (i10 == 1) {
            iB = 6006;
        } else if (i10 == 2) {
            iB = 6004;
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException();
            }
            iB = 6002;
        }
        this.f14430t = new r3.e.a(exc, iB);
        m5.p.d("DefaultDrmSession", "DRM session error", exc);
        m5.g<k.a> gVar = this.f14419i;
        synchronized (gVar.f10380h) {
            set = gVar.f10382j;
        }
        Iterator<k.a> it = set.iterator();
        while (it.hasNext()) {
            it.next().e(exc);
        }
        if (this.f14425o != 4) {
            this.f14425o = 1;
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.HashSet, java.util.Set<r3.a>] */
    public final void l(Exception exc, boolean z10) {
        if (!(exc instanceof NotProvisionedException)) {
            k(exc, z10 ? 1 : 2);
            return;
        }
        r3.b.f fVar = (r3.b.f) this.f14413c;
        fVar.f14473a.add(this);
        if (fVar.f14474b != null) {
            return;
        }
        fVar.f14474b = this;
        o();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashSet, java.util.Set<r3.a>] */
    @EnsuresNonNullIf(expression = {"sessionId"}, result = Defaults.COLLECT_NETWORK_ERRORS)
    public final boolean m() {
        Set<k.a> set;
        if (j()) {
            return true;
        }
        try {
            byte[] bArrN = this.f14412b.n();
            this.f14431u = bArrN;
            this.f14412b.i(bArrN, this.f14421k);
            this.f14429s = this.f14412b.m(this.f14431u);
            this.f14425o = 3;
            m5.g<k.a> gVar = this.f14419i;
            synchronized (gVar.f10380h) {
                set = gVar.f10382j;
            }
            Iterator<k.a> it = set.iterator();
            while (it.hasNext()) {
                it.next().d(3);
            }
            Objects.requireNonNull(this.f14431u);
            return true;
        } catch (NotProvisionedException unused) {
            r3.b.f fVar = (r3.b.f) this.f14413c;
            fVar.f14473a.add(this);
            if (fVar.f14474b != null) {
                return false;
            }
            fVar.f14474b = this;
            o();
            return false;
        } catch (Exception e10) {
            k(e10, 1);
            return false;
        }
    }

    public final void n(byte[] bArr, int i10, boolean z10) {
        try {
            s.a aVarJ = this.f14412b.j(bArr, this.f14411a, i10, this.f14418h);
            this.f14433w = aVarJ;
            c cVar = this.f14428r;
            int i11 = g0.f10384a;
            Objects.requireNonNull(aVarJ);
            cVar.a(1, aVarJ, z10);
        } catch (Exception e10) {
            l(e10, true);
        }
    }

    public final void o() {
        s.d dVarG = this.f14412b.g();
        this.f14434x = dVarG;
        c cVar = this.f14428r;
        int i10 = g0.f10384a;
        Objects.requireNonNull(dVarG);
        cVar.a(0, dVarG, true);
    }

    public final Map<String, String> p() {
        byte[] bArr = this.f14431u;
        if (bArr == null) {
            return null;
        }
        return this.f14412b.d(bArr);
    }
}
