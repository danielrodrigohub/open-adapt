package w9;

import android.annotation.SuppressLint;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.TimeoutKt;
import v9.a2;
import v9.d5;
import v9.e6;
import v9.f2;
import v9.f3;
import v9.f4;
import v9.g5;
import v9.i2;
import v9.i3;
import v9.i6;
import v9.j5;
import v9.k2;
import v9.l6;
import v9.m3;
import v9.n4;
import v9.o5;
import v9.o6;
import v9.p3;
import v9.s5;
import v9.s6;
import v9.u2;
import v9.w3;
import v9.w5;
import v9.w6;
import v9.z3;
import v9.z5;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x implements w9.d {
    public final Object A;
    public final Object B;
    public final Object C;
    public final fd.h D;
    public final q0 E;
    public final fd.d F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.m f17382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<v9.z, fd.o> f17383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ea.g f17384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final fb.d0 f17385e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final fb.k f17386f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final fb.a f17387g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fb.m f17388h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final jd.f f17389i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CoroutineScope f17390j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List<qd.l<ea.m, fd.o>> f17391k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ea.m f17392l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final fd.d f17393m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public fb.n f17394n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final fd.d f17395o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final fd.d f17396p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final fd.d f17397q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final fd.d f17398r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final fd.d f17399s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List<v9.i> f17400t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List<v9.s> f17401u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final List<v9.t0> f17402v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final List<v9.o> f17403w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<fb.d> f17404x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Object f17405y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Object f17406z;

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public final class a implements v9.p0<ea.p, ea.o> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ea.m f17407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x f17408b;

        public a(x xVar, ea.m mVar) {
            p4.h.j(mVar, "prior");
            this.f17408b = xVar;
            this.f17407a = mVar;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List<v9.s>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // v9.p0
        public final void a(Parcelable parcelable) {
            Object next;
            ea.p pVar = (ea.p) parcelable;
            p4.h.j(pVar, "result");
            if (pVar instanceof ea.z) {
                return;
            }
            Object[] array = this.f17408b.f17401u.toArray(new v9.s[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            x xVar = this.f17408b;
            for (Object obj : array) {
                v9.s sVar = (v9.s) obj;
                Iterator<T> it = pVar.b().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!p4.h.c(((ea.m) next).f6664h, this.f17407a.f6664h));
                ea.m mVar = (ea.m) next;
                if (mVar == null) {
                    new ea.k(pVar.a(), a0.d.c("Device with pairId: ", xVar.f17392l.f6664h, " no longer exists"));
                    Objects.requireNonNull(sVar);
                } else if (p4.h.c(this.f17407a.f6671o, mVar.f6671o)) {
                    sVar.a(new ea.r(pVar.a(), mVar));
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List<v9.s>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // v9.p0
        public final void b(v9.m mVar) {
            ea.o oVar = (ea.o) mVar;
            p4.h.j(oVar, "error");
            Object[] array = this.f17408b.f17401u.toArray(new v9.s[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (Object obj : array) {
                new ea.k(oVar.f6679i, oVar.f6681k);
                Objects.requireNonNull((v9.s) obj);
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class a0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17410i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a0(w9.a aVar) {
            super(0);
            this.f17410i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17410i;
            xVar.E0(aVar.f17254i, new w9.r0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class a1 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17412i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a1(w9.a aVar) {
            super(0);
            this.f17412i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17412i;
            xVar.E0(aVar.f17254i, new n1(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class b extends rd.o implements qd.a<fd.o> {
        public b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<qd.l<ea.m, fd.o>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.a
        public final fd.o invoke() {
            Object[] array = x.this.f17391k.toArray(new qd.l[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            x xVar = x.this;
            for (Object obj : array) {
                ((qd.l) obj).invoke(xVar.f17392l);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class b0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17415i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b0(w9.a aVar) {
            super(0);
            this.f17415i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17415i;
            xVar.E0(aVar.f17254i, new w9.s0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class b1 extends rd.o implements qd.a<fb.i> {
        public b1() {
            super(0);
        }

        @Override // qd.a
        public final fb.i invoke() {
            int i10 = fb.i.f7260a;
            return fb.j.f7261b;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class c extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17417i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(w9.a aVar) {
            super(0);
            this.f17417i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17417i;
            xVar.E0(aVar.f17254i, new w9.y(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class c0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17419i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c0(w9.a aVar) {
            super(0);
            this.f17419i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17419i;
            xVar.E0(aVar.f17254i, new w9.t0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class c1 extends rd.o implements qd.a<x9.k> {
        public c1() {
            super(0);
        }

        @Override // qd.a
        public final x9.k invoke() {
            x xVar = x.this;
            ea.m mVar = xVar.f17392l;
            ab.a aVarZ0 = xVar.z0();
            x xVar2 = x.this;
            return new x9.k(aVarZ0, mVar, xVar2.new m0(), xVar2.f17383c);
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class d extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17422i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ v9.z0 f17423j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(w9.a aVar, v9.z0 z0Var) {
            super(0);
            this.f17422i = aVar;
            this.f17423j = z0Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17422i;
            xVar.E0(aVar.f17254i, new w9.z(aVar, this.f17423j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class d0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17425i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d0(w9.a aVar) {
            super(0);
            this.f17425i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17425i;
            xVar.E0(aVar.f17254i, new w9.u0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class d1 extends rd.o implements qd.a<l> {
        public d1() {
            super(0);
        }

        @Override // qd.a
        public final l invoke() {
            return x.this.new l();
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class e extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17428i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ v9.x0 f17429j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(w9.a aVar, v9.x0 x0Var) {
            super(0);
            this.f17428i = aVar;
            this.f17429j = x0Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17428i;
            xVar.E0(aVar.f17254i, new w9.a0(aVar, this.f17429j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class e0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17431i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e0(w9.a aVar) {
            super(0);
            this.f17431i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17431i;
            xVar.E0(aVar.f17254i, new w9.v0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class e1 extends rd.o implements qd.a<bb.a> {
        public e1() {
            super(0);
        }

        @Override // qd.a
        public final bb.a invoke() {
            int i10 = bb.a.f3748a;
            int i11 = fb.l.f7263b;
            return new bb.b(androidx.emoji2.text.b.f1802i);
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class f extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17433i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(w9.a aVar) {
            super(0);
            this.f17433i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17433i;
            xVar.E0(aVar.f17254i, new w9.b0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class f0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17435i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f0(w9.a aVar) {
            super(0);
            this.f17435i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17435i;
            xVar.E0(aVar.f17254i, new w9.w0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class f1 extends rd.o implements qd.a<ka.d> {
        public f1() {
            super(0);
        }

        @Override // qd.a
        public final ka.d invoke() {
            String simpleName = x.this.getClass().getSimpleName();
            UUID uuidRandomUUID = UUID.randomUUID();
            p4.h.i(uuidRandomUUID, "randomUUID()");
            return new ka.d(simpleName, uuidRandomUUID);
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class g extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17438i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(w9.a aVar) {
            super(0);
            this.f17438i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17438i;
            xVar.E0(aVar.f17254i, new w9.c0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class g0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17440i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ea.h.a f17441j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g0(w9.a aVar, ea.h.a aVar2) {
            super(0);
            this.f17440i = aVar;
            this.f17441j = aVar2;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17440i;
            xVar.E0(aVar.f17254i, new w9.x0(aVar, this.f17441j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class g1 extends rd.o implements qd.a<ka.d> {
        public g1() {
            super(0);
        }

        @Override // qd.a
        public final ka.d invoke() {
            String simpleName = x.this.getClass().getSimpleName();
            UUID uuidRandomUUID = UUID.randomUUID();
            p4.h.i(uuidRandomUUID, "randomUUID()");
            return new ka.d(simpleName, uuidRandomUUID);
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class h extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17444i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(w9.a aVar) {
            super(0);
            this.f17444i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17444i;
            xVar.E0(aVar.f17254i, new w9.d0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class h0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17446i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h0(w9.a aVar) {
            super(0);
            this.f17446i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17446i;
            xVar.E0(aVar.f17254i, new w9.y0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class h1 extends rd.o implements qd.a<cb.a> {
        public h1() {
            super(0);
        }

        @Override // qd.a
        public final cb.a invoke() {
            int i10 = cb.a.f4268a;
            return cb.c.f4270b;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class i extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17448i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(w9.a aVar) {
            super(0);
            this.f17448i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17448i;
            xVar.E0(aVar.f17254i, new w9.e0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class i0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17450i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ea.h.a f17451j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i0(w9.a aVar, ea.h.a aVar2) {
            super(0);
            this.f17450i = aVar;
            this.f17451j = aVar2;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17450i;
            xVar.E0(aVar.f17254i, new w9.z0(aVar, this.f17451j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class j extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17453i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(w9.a aVar) {
            super(0);
            this.f17453i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17453i;
            xVar.E0(aVar.f17254i, new w9.f0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class j0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ea.e f17455i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j0(ea.e eVar) {
            super(0);
            this.f17455i = eVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            ea.m mVar = xVar.f17392l;
            List listN0 = gd.n.n0(xVar.e0());
            ((ArrayList) listN0).add(this.f17455i);
            xVar.G0(ea.m.a(mVar, null, false, null, null, null, null, listN0, 0L, false, 8063));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class k extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17457i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(w9.a aVar) {
            super(0);
            this.f17457i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17457i;
            xVar.E0(aVar.f17254i, new w9.g0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class k0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ea.e f17459i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k0(ea.e eVar) {
            super(0);
            this.f17459i = eVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            ea.m mVar = xVar.f17392l;
            List listN0 = gd.n.n0(mVar.f6671o);
            ((ArrayList) listN0).remove(this.f17459i);
            xVar.G0(ea.m.a(mVar, null, false, null, null, null, null, listN0, 0L, false, 8063));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class l implements fb.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17460a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f17461b = -1;

        public l() {
        }

        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List<fb.d>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // fb.d
        public final void a(ba.v vVar) {
            int i10;
            p4.h.j(vVar, "fitCalibrateState");
            v9.t tVar = v9.t.f16822a;
            eb.f fVar = v9.t.f16830i;
            eb.g[] gVarArr = new eb.g[1];
            gVarArr[0] = new eb.c(new eb.a(a0.b.a("FitCalibration[", vVar.b(), "[shoe: ", vVar.a() == 1 ? "Left" : "Right", "]]")));
            fVar.a(gVarArr);
            if (vVar instanceof ba.z) {
                if (vVar.a() == 1) {
                    this.f17460a = ((ba.z) vVar).f3747k;
                } else {
                    this.f17461b = ((ba.z) vVar).f3747k;
                }
                if (this.f17460a > -1 && (i10 = this.f17461b) > -1) {
                    x xVar = x.this;
                    ea.m mVar = xVar.f17392l;
                    xVar.G0(ea.m.a(mVar, null, false, ea.b.a(x.this.f17392l.f6667k, null, null, this.f17460a, false, 95), ea.b.a(mVar.f6668l, null, null, i10, false, 95), null, null, null, 0L, false, 8167));
                }
            }
            x xVar2 = x.this;
            synchronized (xVar2.B) {
                Object[] array = xVar2.f17404x.toArray(new fb.d[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (Object obj : array) {
                    ((fb.d) obj).a(vVar);
                    if (vVar.f3741i) {
                        xVar2.f17394n = null;
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class l0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ea.e f17464i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ v9.a f17465j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ qd.l<v9.j, fd.o> f17466k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public l0(ea.e eVar, v9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
            super(0);
            this.f17464i = eVar;
            this.f17465j = aVar;
            this.f17466k = lVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            xVar.G0(ea.m.a(xVar.f17392l, null, false, null, null, this.f17464i.f6628i, null, null, 0L, false, 8159));
            u1 u1Var = u1.LEFT;
            ea.e eVar = this.f17464i;
            ea.c cVar = eVar.f6630k;
            x xVar2 = x.this;
            v9.a aVar = this.f17465j;
            x.q0(xVar2, eVar.f6629j, new w9.a(aVar, u1Var), cVar, this.f17466k);
            u1 u1Var2 = u1.RIGHT;
            ea.e eVar2 = this.f17464i;
            ea.c cVar2 = eVar2.f6631l;
            x xVar3 = x.this;
            v9.a aVar2 = this.f17465j;
            x.q0(xVar3, eVar2.f6629j, new w9.a(aVar2, u1Var2), cVar2, this.f17466k);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class m extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17468i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(w9.a aVar) {
            super(0);
            this.f17468i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17468i;
            xVar.E0(aVar.f17254i, new w9.h0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class m0 extends rd.o implements qd.l<ea.m, fd.o> {
        public m0() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(ea.m mVar) {
            ea.m mVar2 = mVar;
            p4.h.j(mVar2, "latestInCache");
            x.this.G0(mVar2);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class n extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17471i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ea.d f17472j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(w9.a aVar, ea.d dVar) {
            super(0);
            this.f17471i = aVar;
            this.f17472j = dVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17471i;
            xVar.E0(aVar.f17254i, new w9.i0(aVar, this.f17472j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class n0 extends rd.o implements qd.l<v9.j, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final n0 f17473h = new n0();

        public n0() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(v9.j jVar) {
            p4.h.j(jVar, "$this$null");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class o extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ w9.a f17474h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ x f17475i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(w9.a aVar, x xVar) {
            super(0);
            this.f17474h = aVar;
            this.f17475i = xVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            u1 u1Var = this.f17474h.f17254i;
            if (u1Var == u1.LEFT || u1Var == u1.BOTH) {
                x xVar = this.f17475i;
                ea.b bVar = xVar.f17392l.f6667k;
                if (bVar.f6616n && xVar.f17387g.a(bVar.f6613k)) {
                    v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", "left has connected locally", null, 4, null);
                    this.f17475i.A0().s(this.f17474h.f17253h);
                } else if (((fb.i) this.f17475i.f17393m.getValue()).a(this.f17475i.f17392l.f6667k.f6613k)) {
                    v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", "left is known on phone", null, 4, null);
                    x xVar2 = this.f17475i;
                    ea.m mVar = xVar2.f17392l;
                    xVar2.G0(ea.m.a(mVar, null, false, ea.b.a(mVar.f6667k, null, null, 0, true, 63), null, null, null, null, 0L, false, 8183));
                    this.f17475i.A0().s(this.f17474h.f17253h);
                } else {
                    v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", "left is unknown, going in for a scan", null, 4, null);
                    if (aa.a.a()) {
                        cb.a aVarC0 = this.f17475i.C0();
                        ka.d dVarO0 = x.o0(this.f17475i);
                        x xVar3 = this.f17475i;
                        Objects.requireNonNull(xVar3);
                        aVarC0.a(dVarO0, new w9.a1(xVar3));
                    } else {
                        cb.a aVarC1 = this.f17475i.C0();
                        ka.d dVarO1 = x.o0(this.f17475i);
                        x xVar4 = this.f17475i;
                        Objects.requireNonNull(xVar4);
                        aVarC1.b(dVarO1, new w9.a1(xVar4));
                    }
                }
            }
            u1 u1Var2 = this.f17474h.f17254i;
            if (u1Var2 == u1.RIGHT || u1Var2 == u1.BOTH) {
                x xVar5 = this.f17475i;
                ea.m mVar2 = xVar5.f17392l;
                if (mVar2.f6668l.f6616n && xVar5.f17387g.a(mVar2.f6667k.f6613k)) {
                    v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", "right has connected locally", null, 4, null);
                    this.f17475i.B0().s(this.f17474h.f17253h);
                } else if (((fb.i) this.f17475i.f17393m.getValue()).a(this.f17475i.f17392l.f6668l.f6613k)) {
                    v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", "right is known on phone", null, 4, null);
                    x xVar6 = this.f17475i;
                    ea.m mVar3 = xVar6.f17392l;
                    xVar6.G0(ea.m.a(mVar3, null, false, null, ea.b.a(mVar3.f6668l, null, null, 0, true, 63), null, null, null, 0L, false, 8175));
                    this.f17475i.B0().s(this.f17474h.f17253h);
                } else {
                    v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", "right is unknown, going in for a scan", null, 4, null);
                    if (aa.a.a()) {
                        cb.a aVarC2 = this.f17475i.C0();
                        ka.d dVarP0 = x.p0(this.f17475i);
                        x xVar7 = this.f17475i;
                        Objects.requireNonNull(xVar7);
                        aVarC2.a(dVarP0, new w9.e1(xVar7));
                    } else {
                        cb.a aVarC3 = this.f17475i.C0();
                        ka.d dVarP1 = x.p0(this.f17475i);
                        x xVar8 = this.f17475i;
                        Objects.requireNonNull(xVar8);
                        aVarC3.b(dVarP1, new w9.e1(xVar8));
                    }
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class o0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17477i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o0(w9.a aVar) {
            super(0);
            this.f17477i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17477i;
            xVar.E0(aVar.f17254i, new w9.b1(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class p extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17479i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ qd.l<v9.h, fd.o> f17480j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public p(w9.a aVar, qd.l<? super v9.h, fd.o> lVar) {
            super(0);
            this.f17479i = aVar;
            this.f17480j = lVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x.this.o(this.f17479i, this.f17480j);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class p0 extends rd.o implements qd.l<v9.j, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final p0 f17481h = new p0();

        public p0() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(v9.j jVar) {
            p4.h.j(jVar, "$this$null");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class q implements v9.p0<ea.p, ea.o> {
        public q() {
        }

        @Override // v9.p0
        public final void a(Parcelable parcelable) {
            ea.p pVar = (ea.p) parcelable;
            p4.h.j(pVar, "result");
            v9.d.a.a(d3.e.j(), null, "deletePair: success " + pVar, null, 5, null);
            x xVar = x.this;
            xVar.E.a(new k2(xVar.f17392l.f6667k.f6612j, pVar.a()));
            x xVar2 = x.this;
            xVar2.E.a(new k2(xVar2.f17392l.f6668l.f6612j, pVar.a()));
        }

        @Override // v9.p0
        public final void b(v9.m mVar) {
            ea.o oVar = (ea.o) mVar;
            p4.h.j(oVar, "error");
            v9.d.a.a(d3.e.j(), null, "deletePair: error " + oVar, null, 5, null);
            x.this.E.b(new i2(x.this.f17392l.f6667k.f6612j, oVar.f6679i, oVar));
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class q0 implements v9.p0<v9.g, v9.f> {
        public q0() {
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List<v9.i>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // v9.p0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final void b(v9.f fVar) {
            p4.h.j(fVar, "error");
            Object[] array = x.this.f17400t.toArray(new v9.i[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.i iVar : (v9.i[]) array) {
                iVar.b(fVar);
            }
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [java.util.List<v9.i>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r5v76, types: [java.util.List<v9.o>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r8v1, types: [java.util.List<v9.t0>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // v9.p0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public final void a(v9.g gVar) {
            ea.m mVarA;
            p4.h.j(gVar, "result");
            v9.d.a.a(d3.e.j(), "Result", String.valueOf(gVar), null, 4, null);
            Object[] array = x.this.f17400t.toArray(new v9.i[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            v9.i[] iVarArr = (v9.i[]) array;
            if (gVar instanceof u2) {
                fa.d dVarT = x.this.t();
                fa.i iVar = dVarT.f7140k;
                if (iVar instanceof fa.i.f) {
                    fa.k.c0 c0VarH = dVarT.f7137h.f7136j.h();
                    fa.k.c0 c0Var = fa.k.c0.STAGED_FOR_FLASH;
                    if (c0VarH == c0Var) {
                        x.m0(x.this, new w9.a(gVar.a(), u1.LEFT));
                    }
                    if (dVarT.f7138i.f7136j.h() == c0Var) {
                        x.m0(x.this, new w9.a(gVar.a(), u1.RIGHT));
                    }
                } else if (iVar instanceof fa.i.e) {
                    fa.c cVar = dVarT.f7137h;
                    fa.c cVar2 = dVarT.f7138i;
                    fa.k kVar = cVar.f7136j;
                    if ((kVar instanceof fa.k.v) && p4.h.c(kVar, cVar2.f7136j)) {
                        ya.b bVarA0 = x.this.A0();
                        fa.k.a aVar = fa.k.a.f7178h;
                        bVarA0.i(aVar);
                        x.this.B0().i(aVar);
                    } else {
                        if (cVar.f7136j instanceof fa.k.v) {
                            x.this.A0().i(fa.k.a.f7178h);
                        }
                        if (cVar2.f7136j instanceof fa.k.v) {
                            x.this.B0().i(fa.k.a.f7178h);
                        }
                    }
                } else {
                    boolean z10 = iVar instanceof fa.i.j;
                }
                x xVar = x.this;
                synchronized (xVar.C) {
                    fb.m mVar = xVar.f17388h;
                    Objects.requireNonNull(mVar);
                    synchronized (mVar.f7275l) {
                        mVar.d(u1.BOTH, dVarT);
                        mVar.f7274k = dVarT;
                    }
                    Object[] array2 = xVar.f17403w.toArray(new v9.o[0]);
                    p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    for (Object obj : array2) {
                        z9.a.IO.b(new w9.c1((v9.o) obj, dVarT));
                    }
                }
            } else if (gVar instanceof a2) {
                fa.d dVarT2 = x.this.t();
                if (androidx.appcompat.widget.p.g(dVarT2.f7140k, rd.x.a(fa.i.e.class), rd.x.a(fa.i.g.class), rd.x.a(fa.i.f.class), rd.x.a(fa.i.j.class))) {
                    u1 u1Var = gVar.f6155i ? u1.LEFT : u1.RIGHT;
                    fb.m mVar2 = x.this.f17388h;
                    ba.e eVar = ((a2) gVar).f16453m;
                    Objects.requireNonNull(mVar2);
                    p4.h.j(u1Var, "shoe");
                    p4.h.j(eVar, "battery");
                    synchronized (mVar2.f7275l) {
                        fa.i iVar2 = dVarT2.f7140k;
                        if ((iVar2 instanceof fa.i.e) || (iVar2 instanceof fa.i.g)) {
                            Map<String, String> mapB = mVar2.b(u1Var, dVarT2);
                            mapB.put("FW_UPGRADE_TELEMETRY", "FW_BATTERY_STATE_CHANGED");
                            mapB.put("BATTERY_PERCENT", String.valueOf(eVar.f3631h));
                            mapB.put("BATTERY_STATE", eVar.f3632i.f3639h);
                            mapB.put("FW_STATE_LEFT", mVar2.c(u1.LEFT, dVarT2));
                            mapB.put("FW_STATE_LEFT", mVar2.c(u1.RIGHT, dVarT2));
                            mVar2.g(mapB, u1Var, mVar2.f7264a);
                        }
                    }
                }
            } else if (gVar instanceof k2) {
                for (v9.i iVar3 : iVarArr) {
                    iVar3.a(gVar);
                }
            } else if (gVar instanceof j5) {
                x xVar2 = x.this;
                ea.m mVar3 = xVar2.f17392l;
                if (mVar3.f6676t) {
                    return;
                }
                if (gVar.f6155i) {
                    ea.b bVar = mVar3.f6667k;
                    byte[] bArr = hc.b.f8408j;
                    p4.h.i(bArr, "DEFAULT_KEY");
                    mVarA = ea.m.a(mVar3, null, false, ea.b.a(bVar, null, g7.b.e(bArr), 0, false, 111), null, null, null, null, 0L, false, 8183);
                } else {
                    ea.b bVar2 = mVar3.f6668l;
                    byte[] bArr2 = hc.b.f8408j;
                    p4.h.i(bArr2, "DEFAULT_KEY");
                    mVarA = ea.m.a(mVar3, null, false, null, ea.b.a(bVar2, null, g7.b.e(bArr2), 0, false, 111), null, null, null, 0L, false, 8175);
                }
                xVar2.G0(mVarA);
                ya.a aVar2 = ya.a.f18735a;
                ea.m mVar4 = x.this.f17392l;
                aVar2.b(mVar4.f6664h, mVar4.f6667k);
            } else if (gVar instanceof v9.h1) {
                x xVar3 = x.this;
                ea.m mVar5 = xVar3.f17392l;
                if (mVar5.f6676t) {
                    return;
                }
                xVar3.G0(gVar.f6155i ? ea.m.a(mVar5, null, false, ((v9.h1) gVar).f16580l, null, null, null, null, 0L, false, 8183) : ea.m.a(mVar5, null, false, null, ((v9.h1) gVar).f16580l, null, null, null, 0L, false, 8175));
                if (gVar.f6155i) {
                    ya.a aVar3 = ya.a.f18735a;
                    ea.m mVar6 = x.this.f17392l;
                    aVar3.b(mVar6.f6664h, mVar6.f6667k);
                } else {
                    ya.a aVar4 = ya.a.f18735a;
                    ea.m mVar7 = x.this.f17392l;
                    aVar4.b(mVar7.f6664h, mVar7.f6668l);
                }
            } else if (gVar instanceof f4) {
                if (gVar.f6156j) {
                    x.this.f17384d.f6641d = ((f4) gVar).f16552n;
                } else {
                    x.this.f17384d.f6640c = ((f4) gVar).f16552n;
                }
                x xVar4 = x.this;
                x.r0(xVar4, xVar4.D0());
            } else if (gVar instanceof n4) {
                if (gVar.f6156j) {
                    x.this.f17384d.f6641d = ((n4) gVar).f16734m;
                } else {
                    x.this.f17384d.f6640c = ((n4) gVar).f16734m;
                }
                x xVar5 = x.this;
                x.r0(xVar5, xVar5.D0());
            } else if (gVar instanceof w3) {
                if (gVar.f6156j) {
                    x.this.f17384d.f6643f = ((w3) gVar).f16899n;
                } else {
                    x.this.f17384d.f6642e = ((w3) gVar).f16899n;
                }
                x xVar6 = x.this;
                x.r0(xVar6, xVar6.D0());
            } else if (gVar instanceof z3) {
                if (gVar.f6156j) {
                    x.this.f17384d.f6643f = ((z3) gVar).f16954n;
                } else {
                    x.this.f17384d.f6642e = ((z3) gVar).f16954n;
                }
                x xVar7 = x.this;
                x.r0(xVar7, xVar7.D0());
            } else if (gVar instanceof f2) {
                if (((f2) gVar).f16547m != v9.e.CONNECTED_AND_AUTHENTICATED) {
                    Objects.requireNonNull(x.this);
                    if (gVar.f6155i) {
                        x.this.f17384d.f6642e = null;
                    } else {
                        x.this.f17384d.f6643f = null;
                    }
                    x xVar8 = x.this;
                    x.r0(xVar8, xVar8.D0());
                }
            } else if (gVar instanceof o5) {
                if (gVar.f6155i) {
                    fb.d0 d0Var = x.this.f17385e;
                    int i10 = ((o5) gVar).f16751m.f10208i;
                    Objects.requireNonNull(d0Var);
                    d0Var.f7258a = Integer.max(0, i10);
                } else {
                    fb.d0 d0Var2 = x.this.f17385e;
                    int i11 = ((o5) gVar).f16751m.f10208i;
                    Objects.requireNonNull(d0Var2);
                    Integer.max(0, i11);
                }
                x xVar9 = x.this;
                synchronized (xVar9.f17405y) {
                    Object[] array3 = xVar9.f17402v.toArray(new v9.t0[0]);
                    p4.h.h(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    for (Object obj2 : array3) {
                        v9.t0 t0Var = (v9.t0) obj2;
                        int i12 = xVar9.f17385e.f7258a;
                        fb.k kVar2 = xVar9.f17386f;
                        int i13 = ((o5) gVar).f16751m.f10209j;
                        if (kVar2.f7262a) {
                            Float.max(0.0f, (1 - 0.75f) * i13 * 2);
                        } else {
                            kVar2.f7262a = true;
                            Float.max(0.0f, i13 * 2);
                        }
                        long j10 = ((o5) gVar).f16751m.f10207h;
                        Objects.requireNonNull(t0Var);
                    }
                }
            }
            for (v9.i iVar4 : iVarArr) {
                iVar4.a(gVar);
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class r extends rd.o implements qd.a<ab.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final r f17484h = new r();

        public r() {
            super(0);
        }

        @Override // qd.a
        public final ab.a invoke() {
            Objects.requireNonNull(ab.a.f552a);
            return ab.a.C0012a.f554b;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class r0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17486i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r0(w9.a aVar) {
            super(0);
            this.f17486i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17486i;
            xVar.E0(aVar.f17254i, new w9.d1(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class s extends rd.o implements qd.l<ya.b, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ w9.a f17487h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(w9.a aVar) {
            super(1);
            this.f17487h = aVar;
        }

        @Override // qd.l
        public final fd.o invoke(ya.b bVar) {
            ya.b bVar2 = bVar;
            p4.h.j(bVar2, "$this$null");
            bVar2.f(this.f17487h.f17253h);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class s0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17489i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s0(w9.a aVar) {
            super(0);
            this.f17489i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17489i;
            xVar.E0(aVar.f17254i, new w9.f1(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    @ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareCheckLatestVersion$2", f = "AdaptKitPairDevicesController.kt", l = {1065, 1065}, m = "invokeSuspend")
    public static final class t extends ld.i implements qd.p<CoroutineScope, jd.d<? super fa.a>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17490h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f17491i;

        /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
        @ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareCheckLatestVersion$2$left$1", f = "AdaptKitPairDevicesController.kt", l = {1060}, m = "invokeSuspend")
        public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fa.b>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f17493h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ x f17494i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(x xVar, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f17494i = xVar;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f17494i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fa.b> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f17493h;
                if (i10 == 0) {
                    d3.e.p(obj);
                    bb.a aVarN0 = x.n0(this.f17494i);
                    fb.c cVarA = this.f17494i.A0().a();
                    this.f17493h = 1;
                    obj = aVarN0.a(cVarA, this);
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
        @ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareCheckLatestVersion$2$right$1", f = "AdaptKitPairDevicesController.kt", l = {1063}, m = "invokeSuspend")
        public static final class b extends ld.i implements qd.p<CoroutineScope, jd.d<? super fa.b>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f17495h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ x f17496i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(x xVar, jd.d<? super b> dVar) {
                super(2, dVar);
                this.f17496i = xVar;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new b(this.f17496i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fa.b> dVar) {
                return ((b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f17495h;
                if (i10 == 0) {
                    d3.e.p(obj);
                    bb.a aVarN0 = x.n0(this.f17496i);
                    fb.c cVarA = this.f17496i.B0().a();
                    this.f17495h = 1;
                    obj = aVarN0.a(cVarA, this);
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                return obj;
            }
        }

        public t(jd.d<? super t> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            t tVar = x.this.new t(dVar);
            tVar.f17491i = obj;
            return tVar;
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fa.a> dVar) {
            return ((t) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            Deferred deferred;
            fa.b bVar;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f17490h;
            if (i10 != 0) {
                if (i10 == 1) {
                    deferred = (Deferred) this.f17491i;
                    d3.e.p(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    bVar = (fa.b) this.f17491i;
                    d3.e.p(obj);
                }
                return new fa.a(bVar, (fa.b) obj);
            }
            d3.e.p(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.f17491i;
            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new a(x.this, null), 3, null);
            Deferred deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new b(x.this, null), 3, null);
            this.f17491i = deferredAsync$default2;
            this.f17490h = 1;
            Object objAwait = deferredAsync$default.await(this);
            if (objAwait == aVar) {
                return aVar;
            }
            deferred = deferredAsync$default2;
            obj = objAwait;
            fa.b bVar2 = (fa.b) obj;
            this.f17491i = bVar2;
            this.f17490h = 2;
            Object objAwait2 = deferred.await(this);
            if (objAwait2 == aVar) {
                return aVar;
            }
            bVar = bVar2;
            obj = objAwait2;
            return new fa.a(bVar, (fa.b) obj);
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class t0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17498i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ s5 f17499j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t0(w9.a aVar, s5 s5Var) {
            super(0);
            this.f17498i = aVar;
            this.f17499j = s5Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17498i;
            xVar.E0(aVar.f17254i, new w9.g1(aVar, this.f17499j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class u extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17501i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(w9.a aVar) {
            super(0);
            this.f17501i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            x.v0(xVar, xVar.A0());
            x xVar2 = x.this;
            x.v0(xVar2, xVar2.B0());
            x.this.f(this.f17501i);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class u0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17503i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ w5 f17504j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u0(w9.a aVar, w5 w5Var) {
            super(0);
            this.f17503i = aVar;
            this.f17504j = w5Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17503i;
            xVar.E0(aVar.f17254i, new w9.h1(aVar, this.f17504j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class v extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17506i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(w9.a aVar) {
            super(0);
            this.f17506i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            BuildersKt__Builders_commonKt.launch$default(xVar.f17390j, null, null, new w9.m0(xVar, this.f17506i, null), 3, null);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class v0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17508i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ z5 f17509j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v0(w9.a aVar, z5 z5Var) {
            super(0);
            this.f17508i = aVar;
            this.f17509j = z5Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17508i;
            xVar.E0(aVar.f17254i, new i1(aVar, this.f17509j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class w extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17511i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(w9.a aVar) {
            super(0);
            this.f17511i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17511i;
            xVar.E0(aVar.f17254i, new w9.n0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class w0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17513i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ e6 f17514j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w0(w9.a aVar, e6 e6Var) {
            super(0);
            this.f17513i = aVar;
            this.f17514j = e6Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17513i;
            xVar.E0(aVar.f17254i, new j1(this.f17514j, aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: renamed from: w9.x$x, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class C0306x extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17516i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0306x(w9.a aVar) {
            super(0);
            this.f17516i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17516i;
            xVar.E0(aVar.f17254i, new w9.o0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class x0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17518i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ i6 f17519j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public x0(w9.a aVar, i6 i6Var) {
            super(0);
            this.f17518i = aVar;
            this.f17519j = i6Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17518i;
            xVar.E0(aVar.f17254i, new k1(aVar, this.f17519j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class y extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17521i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y(w9.a aVar) {
            super(0);
            this.f17521i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17521i;
            xVar.E0(aVar.f17254i, new w9.p0(aVar));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class y0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17523i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ l6 f17524j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y0(w9.a aVar, l6 l6Var) {
            super(0);
            this.f17523i = aVar;
            this.f17524j = l6Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17523i;
            xVar.E0(aVar.f17254i, new l1(aVar, this.f17524j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class z extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17526i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ i3 f17527j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public z(w9.a aVar, i3 i3Var) {
            super(0);
            this.f17526i = aVar;
            this.f17527j = i3Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17526i;
            xVar.E0(aVar.f17254i, new w9.q0(aVar, this.f17527j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class z0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w9.a f17529i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ s6 f17530j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public z0(w9.a aVar, s6 s6Var) {
            super(0);
            this.f17529i = aVar;
            this.f17530j = s6Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            x xVar = x.this;
            w9.a aVar = this.f17529i;
            xVar.E0(aVar.f17254i, new m1(aVar, this.f17530j));
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x(ea.m mVar, qd.l<? super v9.z, fd.o> lVar) {
        this.f17382b = mVar;
        this.f17383c = lVar;
        ea.g gVar = new ea.g(null, null, null, null, null, null, 63, null);
        this.f17384d = gVar;
        this.f17385e = new fb.d0();
        this.f17386f = new fb.k();
        this.f17387g = fb.a.C0140a.f7248a.a();
        this.f17388h = new fb.m(mVar);
        jd.f fVarPlus = Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null));
        this.f17389i = fVarPlus;
        this.f17390j = CoroutineScopeKt.CoroutineScope(fVarPlus);
        this.f17391k = new CopyOnWriteArrayList();
        String str = mVar.f6669m;
        List<ea.e> list = mVar.f6671o;
        p4.h.j(list, "modes");
        gVar.f6638a = str;
        gVar.f6639b = list;
        this.f17392l = mVar;
        this.f17393m = androidx.lifecycle.o.w(1, new b1());
        this.f17395o = androidx.lifecycle.o.w(1, new c1());
        this.f17396p = androidx.lifecycle.o.w(1, new d1());
        this.f17397q = androidx.lifecycle.o.w(1, new e1());
        this.f17398r = androidx.lifecycle.o.w(1, new f1());
        this.f17399s = androidx.lifecycle.o.w(1, new g1());
        this.f17400t = new CopyOnWriteArrayList();
        this.f17401u = new CopyOnWriteArrayList();
        this.f17402v = new CopyOnWriteArrayList();
        this.f17403w = new CopyOnWriteArrayList();
        this.f17404x = new CopyOnWriteArrayList();
        this.f17405y = new Object();
        this.f17406z = new Object();
        this.A = new Object();
        this.B = new Object();
        this.C = new Object();
        this.D = (fd.h) androidx.lifecycle.o.x(r.f17484h);
        q0 q0Var = new q0();
        A0().D(q0Var);
        B0().D(q0Var);
        this.E = q0Var;
        this.F = androidx.lifecycle.o.w(1, new h1());
    }

    public static final void m0(x xVar, w9.a aVar) {
        Objects.requireNonNull(xVar);
        xVar.x0(new x9.b[]{xVar.y0(aVar, new w9.j0(aVar, xVar))}, new w9.l0(xVar, aVar));
    }

    public static final bb.a n0(x xVar) {
        return (bb.a) xVar.f17397q.getValue();
    }

    public static final ka.d o0(x xVar) {
        return (ka.d) xVar.f17398r.getValue();
    }

    public static final ka.d p0(x xVar) {
        return (ka.d) xVar.f17399s.getValue();
    }

    public static final void q0(x xVar, boolean z10, w9.a aVar, ea.c cVar, qd.l lVar) {
        Objects.requireNonNull(xVar);
        w9.d.b.a(xVar, aVar, cVar.f6618h.f6649i, lVar, null, 8, null);
        if (z10) {
            return;
        }
        xVar.E(aVar, cVar.f6619i, lVar);
    }

    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.List<v9.s>, java.util.concurrent.CopyOnWriteArrayList] */
    public static final void r0(x xVar, ea.a aVar) {
        Objects.requireNonNull(xVar);
        if (aVar.f6604b.length == 0) {
            v9.t tVar = v9.t.f16822a;
            eb.f fVar = v9.t.f16830i;
            eb.g[] gVarArr = new eb.g[1];
            ea.m mVar = xVar.f17392l;
            String str = mVar.f6667k.f6612j;
            String str2 = mVar.f6668l.f6612j;
            ea.e eVar = aVar.f6603a;
            String strB = eVar != null ? eVar.b() : null;
            StringBuilder sbA = k1.a.a("UserInModeDetected[left: ", str, " right: ", str2, " userInModeDetected: ");
            sbA.append(strB);
            gVarArr[0] = new eb.c(new eb.a(sbA.toString()));
            fVar.a(gVarArr);
            Object[] array = xVar.f17401u.toArray(new v9.s[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (Object obj : array) {
                ((v9.s) obj).a(new ea.q(aVar.f6603a));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object s0(x xVar, ya.b bVar, jd.d dVar) throws Throwable {
        o1 o1Var;
        ya.b bVar2;
        rd.w wVar;
        Objects.requireNonNull(xVar);
        if (dVar instanceof o1) {
            o1Var = (o1) dVar;
            int i10 = o1Var.f17337l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                o1Var.f17337l = i10 - Integer.MIN_VALUE;
            } else {
                o1Var = new o1(xVar, dVar);
            }
        } else {
            o1Var = new o1(xVar, dVar);
        }
        Object obj = o1Var.f17335j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = o1Var.f17337l;
        if (i11 == 0) {
            d3.e.p(obj);
            rd.w wVar2 = new rd.w();
            t1 t1Var = new t1(wVar2, bVar, null);
            o1Var.f17333h = bVar;
            o1Var.f17334i = wVar2;
            o1Var.f17337l = 1;
            Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(3000L, t1Var, o1Var);
            if (objWithTimeoutOrNull == aVar) {
                return aVar;
            }
            bVar2 = bVar;
            wVar = wVar2;
            obj = objWithTimeoutOrNull;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            wVar = o1Var.f17334i;
            bVar2 = o1Var.f17333h;
            d3.e.p(obj);
        }
        v9.i iVar = (v9.i) wVar.f14795h;
        if (iVar != null) {
            bVar2.h(iVar);
        }
        return obj;
    }

    public static final boolean t0(x xVar, fa.g gVar, ya.b bVar) {
        Objects.requireNonNull(xVar);
        if (!(gVar instanceof fa.g.a)) {
            if (gVar instanceof fa.g.b) {
                bVar.i(fa.k.j.f7212h);
            } else if (gVar instanceof fa.g.c) {
                fa.g.c cVar = (fa.g.c) gVar;
                bVar.i(new fa.k.p(cVar.f7162a, cVar.f7163b));
            }
            return true;
        }
        bVar.i(fa.k.C0135k.f7213h);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void u0(x xVar, ya.b bVar, fa.b bVar2) {
        fd.e eVar;
        Objects.requireNonNull(xVar);
        fb.c cVarA = bVar.a();
        if (bVar2 instanceof fa.b.C0129b) {
            eVar = new fd.e(new fa.k.v((fa.b.C0129b) bVar2), new fa.n.b(cVarA));
        } else if (bVar2 instanceof fa.b.c) {
            eVar = new fd.e(new fa.k.w((fa.b.c) bVar2), new fa.n.d(cVarA));
        } else {
            boolean z10 = bVar2 instanceof fa.b.a;
            if (!(z10 || bVar2 == null)) {
                throw new j2.a();
            }
            fa.b.a aVar = z10 ? (fa.b.a) bVar2 : null;
            if (aVar == null) {
                aVar = new fa.b.a(cVarA, "Result was null");
            }
            eVar = new fd.e(new fa.k.d(aVar), new fa.n.c(cVarA));
        }
        bVar.M((fa.k) eVar.f7388h, (fa.n) eVar.f7389i, true);
    }

    public static final void v0(x xVar, ya.b bVar) {
        float fM;
        Objects.requireNonNull(xVar);
        fa.k kVar = bVar.L().f7136j;
        if (kVar instanceof fa.p) {
            fM = ((fa.p) kVar).m();
        } else {
            fM = kVar instanceof fa.k.a0 ? ((fa.k.a0) kVar).m() : 0.0f;
        }
        bVar.i(new fa.k.a0.c(fM));
    }

    @Override // w9.d
    public final da.f A() {
        return new da.f(new da.b(da.e.j(A0().e()), A0().l()), new da.b(da.e.j(B0().e()), B0().l()));
    }

    public final ya.b A0() {
        ya.a aVar = ya.a.f18735a;
        ea.m mVar = this.f17392l;
        return aVar.b(mVar.f6664h, mVar.f6667k);
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void B(w9.a aVar, s6 s6Var) {
        p4.h.j(s6Var, "sessionStopRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionStop")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, s6Var.f16664a, s6Var)}, new z0(aVar, s6Var));
    }

    public final ya.b B0() {
        ya.a aVar = ya.a.f18735a;
        ea.m mVar = this.f17392l;
        return aVar.b(mVar.f6664h, mVar.f6668l);
    }

    @Override // w9.d
    public final void C(w9.a aVar, ea.h hVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.r, fd.o> lVar2) {
        p4.h.j(hVar, "laceTightness");
        p4.h.j(lVar, "notConnected");
        p4.h.j(lVar2, "invalidInput");
        ea.h.a aVarW0 = w0(hVar, aVar);
        x0(new x9.b[]{y0(aVar, lVar), new x9.g(aVar, aVarW0, lVar2)}, new i0(aVar, aVarW0));
    }

    public final cb.a C0() {
        return (cb.a) this.F.getValue();
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void D(w9.a aVar, z5 z5Var) {
        p4.h.j(z5Var, "sessionDownloadStopRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionDownloadStop")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, z5Var.f16664a, z5Var)}, new v0(aVar, z5Var));
    }

    public final ea.a D0() {
        String str;
        ea.e eVar = this.f17384d.a().f6603a;
        if (eVar != null && (str = eVar.f6628i) != null && !p4.h.c(this.f17392l.f6669m, str)) {
            G0(ea.m.a(this.f17392l, null, false, null, null, str, null, null, System.currentTimeMillis(), false, 6111));
        }
        return this.f17384d.a();
    }

    @Override // w9.d
    public final void E(w9.a aVar, ea.d dVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(dVar, "adaptKitColor");
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new n(aVar, dVar));
    }

    public final void E0(u1 u1Var, qd.l<? super ya.b, fd.o> lVar) {
        int iOrdinal = u1Var.ordinal();
        if (iOrdinal == 0) {
            lVar.invoke(A0());
            return;
        }
        if (iOrdinal == 1) {
            lVar.invoke(B0());
        } else {
            if (iOrdinal != 2) {
                return;
            }
            lVar.invoke(A0());
            lVar.invoke(B0());
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.t0>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void F(v9.t0 t0Var) {
        synchronized (this.f17405y) {
            this.f17402v.remove(t0Var);
        }
    }

    public final void F0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new r0(aVar));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.1.7")
    public final void G(w9.a aVar, v9.x0 x0Var) {
        p4.h.j(x0Var, "animationStartRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(x0Var.f16904c, "AnimationStart")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, x0Var.f16664a, x0Var)}, new e(aVar, x0Var));
    }

    /* JADX WARN: Code duplicated, block: B:36:0x009d  */
    public final void G0(ea.m mVar) {
        Object next;
        Iterator<T> it = z0().c().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!p4.h.c(((ea.m) next).f6664h, this.f17392l.f6664h));
        ea.m mVar2 = (ea.m) next;
        if (mVar2 != null) {
            this.f17392l = mVar2;
        }
        ea.m mVar3 = this.f17392l;
        Objects.requireNonNull(mVar3);
        p4.h.j(mVar, "other");
        boolean z10 = true;
        if (p4.h.c(mVar, mVar3)) {
            boolean zC = p4.h.c(mVar3.f6665i, mVar.f6665i);
            boolean z11 = mVar3.f6666j == mVar.f6666j;
            boolean zC2 = p4.h.c(mVar3.f6667k, mVar.f6667k);
            boolean zC3 = p4.h.c(mVar3.f6668l, mVar.f6668l);
            boolean zC4 = p4.h.c(mVar3.f6669m, mVar.f6669m);
            boolean zC5 = p4.h.c(mVar3.f6670n, mVar.f6670n);
            boolean zC6 = p4.h.c(mVar3.f6671o, mVar.f6671o);
            boolean z12 = mVar3.f6676t == mVar.f6676t;
            boolean z13 = mVar3.f6674r == mVar.f6674r;
            if (zC && z11 && zC2 && zC3 && zC4 && zC5 && zC6 && z12 && z13) {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (z10) {
            this.f17392l = ea.m.a(mVar, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6143);
            ab.a aVarZ0 = z0();
            v9.a.C0295a c0295a = v9.a.f16441i;
            v9.a aVar = v9.a.f16442j;
            ea.m mVar4 = this.f17392l;
            aVarZ0.d(aVar, mVar4, new a(this, mVar4));
            z9.a.IO.b(new b());
        } else {
            this.f17392l = mVar;
        }
        ea.g gVar = this.f17384d;
        ea.m mVar5 = this.f17392l;
        String str = mVar5.f6669m;
        List<ea.e> list = mVar5.f6671o;
        Objects.requireNonNull(gVar);
        p4.h.j(list, "modes");
        gVar.f6638a = str;
        gVar.f6639b = list;
    }

    @Override // w9.d
    public final void H(w9.a aVar, qd.l<? super v9.h, fd.o> lVar, qd.l<? super v9.l0, fd.o> lVar2) {
        p4.h.j(lVar, "alreadyConnected");
        p4.h.j(lVar2, "permissionNotGranted");
        x0(new x9.b[]{new x9.l(androidx.lifecycle.o.z("android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT"), aVar, lVar2)}, new p(aVar, lVar));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.List<v9.i>, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List<v9.i>, java.util.concurrent.CopyOnWriteArrayList] */
    public final void H0(boolean z10, v9.i iVar) {
        synchronized (this.f17406z) {
            try {
                if (z10) {
                    this.f17400t.remove(iVar);
                } else {
                    this.f17400t.add(iVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // w9.d
    public final void I(fa.j jVar, w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(jVar, "highSpeedTransfer");
        p4.h.j(lVar, "notConnected");
        ya.b bVarA0 = A0();
        fa.k.r rVar = fa.k.r.f7221h;
        bVarA0.M(rVar, new fa.n.c(A0().a()), false);
        B0().M(rVar, new fa.n.c(B0().a()), false);
        x0(new x9.b[]{y0(aVar, lVar)}, new v(aVar));
    }

    @Override // w9.d
    public final void J(v9.a aVar, ea.e eVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.y, fd.o> lVar2) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(eVar, "adaptKitDeviceMode");
        p4.h.j(lVar, "notConnected");
        p4.h.j(lVar2, "modeDoesNotExist");
        x0(new x9.b[]{new x9.h(new w9.a(aVar, u1.BOTH), eVar, this.f17392l, lVar2)}, new l0(eVar, aVar, lVar));
    }

    @Override // w9.d
    public final void K(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new j(aVar));
    }

    @Override // w9.d
    public final void L(v9.a aVar, ea.e eVar, qd.l<? super v9.r, fd.o> lVar, qd.l<? super v9.y, fd.o> lVar2) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(eVar, "adaptKitDeviceMode");
        p4.h.j(lVar, "invalidInput");
        p4.h.j(lVar2, "modeAlreadyExists");
        u1 u1Var = u1.BOTH;
        u1 u1Var2 = u1.LEFT;
        u1 u1Var3 = u1.RIGHT;
        x0(new x9.b[]{new x9.j(new w9.a(aVar, u1Var), eVar.f6628i, lVar), new x9.g(new w9.a(aVar, u1Var2), eVar.f6630k.f6618h.f6649i, lVar), new x9.g(new w9.a(aVar, u1Var3), eVar.f6631l.f6618h.f6649i, lVar), new x9.a(eVar.f6630k.f6619i, new w9.a(aVar, u1Var2), lVar), new x9.a(eVar.f6631l.f6619i, new w9.a(aVar, u1Var3), lVar), new x9.i(new w9.a(aVar, u1Var), eVar, this.f17392l, lVar2)}, new j0(eVar));
    }

    @Override // w9.d
    public final void M(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new s0(aVar));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.s>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void N(v9.s sVar) {
        p4.h.j(sVar, "modeListener");
        synchronized (this.A) {
            this.f17401u.add(sVar);
        }
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void O(w9.a aVar, w5 w5Var) {
        p4.h.j(w5Var, "sessionDownloadStartRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionDownloadStart")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, w5Var.f16664a, w5Var)}, new u0(aVar, w5Var));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void P(w9.a aVar, v9.k1 k1Var) {
        p4.h.j(k1Var, "autoAdaptCurrentActivityRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "AutoAdaptCurrentActivity")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, k1Var.f16664a, k1Var)}, new g(aVar));
    }

    @Override // w9.d
    public final void Q(v9.a aVar, ea.e eVar, qd.l<? super v9.y, fd.o> lVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(eVar, "adaptKitDeviceMode");
        p4.h.j(lVar, "modeDoesNotExist");
        x0(new x9.b[]{new x9.h(new w9.a(aVar, u1.BOTH), eVar, this.f17392l, lVar)}, new k0(eVar));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void R(w9.a aVar, e6 e6Var) {
        p4.h.j(e6Var, "sessionGetRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionGet")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, e6Var.f16664a, e6Var)}, new w0(aVar, e6Var));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void S(w9.a aVar, i6 i6Var) {
        p4.h.j(i6Var, "sessionPauseRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionPause")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, i6Var.f16664a, i6Var)}, new x0(aVar, i6Var));
    }

    @Override // w9.d
    public final void T(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        fb.n nVar = this.f17394n;
        if (nVar != null) {
            nVar.cancel();
        }
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "1.4.1")
    public final void U(w9.a aVar, g5 g5Var) {
        p4.h.j(g5Var, "adaptKitDeviceRequest");
        y0(aVar, p0.f17481h);
        fb.c cVar = g5Var.f16664a;
        fb.c cVarA = A0().a();
        fb.c cVarA2 = B0().a();
        ea.m mVar = this.f17392l;
        p4.h.j(cVarA, "leftFirmwareVersion");
        p4.h.j(cVarA2, "rightFirmwareVersion");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(cVar, "requiredFirmwareVersion");
        p4.h.j(null, "productInformation");
        throw null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.o>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void V(v9.o oVar) {
        synchronized (this.C) {
            this.f17403w.remove(oVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<qd.l<ea.m, fd.o>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void W(qd.l<? super ea.m, fd.o> lVar) {
        p4.h.j(lVar, "pairUpdated");
        this.f17391k.remove(lVar);
    }

    @Override // w9.d
    public final void X(v9.i iVar) {
        p4.h.j(iVar, "adaptKitDeviceResultListener");
        H0(false, iVar);
    }

    @Override // w9.d
    public final void Y(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new e0(aVar));
    }

    @Override // w9.d
    public final void Z(w9.a aVar, i3 i3Var) {
        p4.h.j(i3Var, "request");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(i3Var.f16638c, "GestureConfigurationSet")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, i3Var.f16664a, i3Var)}, new z(aVar, i3Var));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "1.5.0")
    public final void a(w9.a aVar, v9.v0 v0Var) {
        p4.h.j(v0Var, "animationGetRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(v0Var.f16872b, "AnimationGet")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, v0Var.f16664a, v0Var)}, new c(aVar));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void a0(w9.a aVar, v9.u1 u1Var) {
        p4.h.j(u1Var, "autoAdaptStopRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "AutoAdaptStop")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, u1Var.f16664a, u1Var)}, new i(aVar));
    }

    @Override // w9.d
    public final void b(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new c0(aVar));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "1.5.0")
    public final void b0(w9.a aVar, v9.z0 z0Var) {
        p4.h.j(z0Var, "animationStartRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(z0Var.f16946c, "AnimationStart")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, z0Var.f16664a, z0Var)}, new d(aVar, z0Var));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void c(w9.a aVar, o6 o6Var) {
        p4.h.j(o6Var, "sessionStartRequest");
        y0(aVar, androidx.emoji2.text.b.f(null, "SessionStart"));
        throw null;
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void c0(w9.a aVar, w6 w6Var) {
        p4.h.j(w6Var, "sessionsGetRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionsGet")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, w6Var.f16664a, w6Var)}, new a1(aVar));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.o>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void d(v9.o oVar) {
        p4.h.j(oVar, "firmwareUpdateListener");
        synchronized (this.C) {
            this.f17403w.add(oVar);
        }
    }

    @Override // w9.d
    public final void d0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new f0(aVar));
    }

    @Override // w9.d
    public final void e(w9.a aVar, m3 m3Var) {
        p4.h.j(m3Var, "request");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(m3Var.f16716b, "GestureStatisticsGet")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, m3Var.f16664a, m3Var)}, new a0(aVar));
    }

    @Override // w9.d
    public final List<ea.e> e0() {
        Object next;
        Iterator<T> it = z0().c().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!p4.h.c(((ea.m) next).f6664h, this.f17392l.f6664h));
        ea.m mVar = (ea.m) next;
        if (mVar != null) {
            G0(mVar);
            return mVar.f6671o;
        }
        qd.l<v9.z, fd.o> lVar = this.f17383c;
        v9.a.C0295a c0295a = v9.a.f16441i;
        lVar.invoke(new v9.z(v9.a.f16442j, this.f17392l.f6664h));
        return new ArrayList();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return p4.h.c(this.f17382b, xVar.f17382b) && p4.h.c(this.f17383c, xVar.f17383c);
    }

    @Override // w9.d
    public final void f(w9.a aVar) {
        p4.h.j(aVar, "adaptKitIdentifierShoe");
        JobKt__JobKt.cancelChildren$default(this.f17389i, null, 1, null);
        u1 u1Var = aVar.f17254i;
        if (u1Var == u1.LEFT || u1Var == u1.BOTH) {
            C0().c((ka.d) this.f17398r.getValue());
        }
        u1 u1Var2 = aVar.f17254i;
        if (u1Var2 == u1.RIGHT || u1Var2 == u1.BOTH) {
            C0().c((ka.d) this.f17399s.getValue());
        }
        E0(aVar.f17254i, new s(aVar));
    }

    @Override // w9.d
    public final void f0(w9.a aVar, p3 p3Var) {
        p4.h.j(p3Var, "request");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(p3Var.f16762b, "GestureStatisticsReset")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, p3Var.f16664a, p3Var)}, new b0(aVar));
    }

    @Override // w9.d
    public final void g(w9.a aVar, ea.h hVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.r, fd.o> lVar2) {
        p4.h.j(hVar, "laceTightness");
        p4.h.j(lVar, "notConnected");
        p4.h.j(lVar2, "invalidInput");
        ea.h.a aVarW0 = w0(hVar, aVar);
        x0(new x9.b[]{y0(aVar, lVar), new x9.m(aVar, aVarW0, lVar2)}, new g0(aVar, aVarW0));
    }

    @Override // w9.d
    public final void g0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new w(aVar));
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // w9.d
    public final void h(qd.l<? super ea.m, fd.o> lVar) {
        p4.h.j(lVar, "pairUpdated");
        this.f17391k.add((qd.l<ea.m, fd.o>) lVar);
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void h0(w9.a aVar, l6 l6Var) {
        p4.h.j(l6Var, "sessionResumeRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionResume")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, l6Var.f16664a, l6Var)}, new y0(aVar, l6Var));
    }

    public final int hashCode() {
        return this.f17383c.hashCode() + (this.f17382b.hashCode() * 31);
    }

    @Override // w9.d
    public final fb.c i(w9.a aVar) {
        int iOrdinal = aVar.f17254i.ordinal();
        if (iOrdinal == 0) {
            return A0().a();
        }
        if (iOrdinal == 1) {
            return B0().a();
        }
        if (iOrdinal == 2) {
            return (fb.c) hd.b.c(A0().a(), B0().a());
        }
        throw new j2.a();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<fb.d>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void i0(fb.d dVar) {
        p4.h.j(dVar, "fitCalibrateListener");
        synchronized (this.B) {
            this.f17404x.add(dVar);
        }
    }

    @Override // w9.d
    public final void j(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new C0306x(aVar));
    }

    @Override // w9.d
    public final void j0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new m(aVar));
    }

    @Override // w9.d
    public final void k(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new h0(aVar));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<fb.d>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void k0(fb.d dVar) {
        synchronized (this.B) {
            this.f17404x.remove(dVar);
        }
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void l(w9.a aVar, v9.r1 r1Var) {
        p4.h.j(r1Var, "autoAdaptStartRequest");
        y0(aVar, androidx.emoji2.text.b.f(null, "AutoAdaptStart"));
        fb.c cVar = r1Var.f16664a;
        fb.c cVarA = A0().a();
        fb.c cVarA2 = B0().a();
        ea.m mVar = this.f17392l;
        p4.h.j(cVarA, "leftFirmwareVersion");
        p4.h.j(cVarA2, "rightFirmwareVersion");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(cVar, "requiredFirmwareVersion");
        ea.m mVar2 = this.f17392l;
        A0().Q();
        B0().Q();
        p4.h.j(mVar2, "adaptKitPairedDevices");
        p4.h.j(null, "publishConditionError");
        p4.h.j(null, "autoAdaptConfiguration");
        throw null;
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void l0(w9.a aVar, s5 s5Var) {
        p4.h.j(s5Var, "sessionDownloadDeleteRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "SessionDownloadDelete")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, s5Var.f16664a, s5Var)}, new t0(aVar, s5Var));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "1.5.0")
    public final void m(w9.a aVar, v9.d1 d1Var) {
        p4.h.j(d1Var, "animationStopRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(d1Var.f16504b, "AnimationStop")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, d1Var.f16664a, d1Var)}, new f(aVar));
    }

    @Override // w9.d
    public final void n(v9.i iVar) {
        H0(true, iVar);
    }

    @Override // w9.d
    @SuppressLint({"MissingPermission"})
    public final void o(w9.a aVar, qd.l<? super v9.h, fd.o> lVar) {
        p4.h.j(aVar, "adaptKitIdentifierShoe");
        p4.h.j(lVar, "alreadyConnected");
        x0(new x9.b[]{new x9.e(aVar, A0().e(), B0().e(), this.f17392l, lVar)}, new o(aVar, this));
    }

    @Override // w9.d
    public final void p(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new u(aVar));
    }

    @Override // w9.d
    public final void q(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new k(aVar));
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "2.3.0")
    public final void r(w9.a aVar, v9.o1 o1Var) {
        p4.h.j(o1Var, "autoAdaptCurrentStateRequest");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(null, "AutoAdaptCurrentState")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, o1Var.f16664a, o1Var)}, new h(aVar));
    }

    @Override // w9.d
    public final void s(v9.a aVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.j, fd.o> lVar2) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(lVar, "notConnectedLeft");
        p4.h.j(lVar2, "notConnectedRight");
        fb.n nVar = this.f17394n;
        if (nVar != null && nVar != null) {
            nVar.cancel();
        }
        da.d dVarE = B0().e();
        da.d dVarE2 = A0().e();
        if (dVarE2.g()) {
            lVar.invoke(new v9.j(new w9.a(aVar, u1.LEFT), this.f17392l.f6667k.f6612j));
            this.f17394n = null;
        }
        if (dVarE.g()) {
            lVar2.invoke(new v9.j(new w9.a(aVar, u1.RIGHT), this.f17392l.f6668l.f6612j));
            this.f17394n = null;
        }
        if (dVarE2.b() && dVarE.b()) {
            ya.b bVarA0 = A0();
            ya.b bVarB0 = B0();
            fb.d dVar = (fb.d) this.f17396p.getValue();
            p4.h.j(dVar, "fitCalibrateListener");
            fb.o oVar = new fb.o(aVar, bVarA0, bVarB0, dVar);
            this.f17394n = oVar;
            oVar.f7286j.schedule(new fb.p(oVar), oVar.f7285i);
            da.d dVarE3 = oVar.f7278b.e();
            da.d dVar2 = da.d.CONNECTED_AND_AUTHENTICATED;
            oVar.f7281e = dVarE3 != dVar2 ? new ba.y(1) : new ba.m0(1);
            oVar.f7282f = oVar.f7279c.e() != dVar2 ? new ba.y(2) : new ba.m0(2);
            oVar.d();
        }
    }

    @Override // w9.d
    public final fa.d t() {
        return new fa.d(A0().L(), B0().L());
    }

    public final String toString() {
        return "AdaptKitPairedDevicesControllerImpl(adaptKitPairedDevices=" + this.f17382b + ", pairNoLongerExists=" + this.f17383c + ")";
    }

    @Override // w9.d
    public final Object u(jd.d<? super fa.a> dVar) {
        return BuildersKt.withContext(Dispatchers.getDefault(), new t(null), dVar);
    }

    @Override // w9.d
    public final void updatePair(ea.m mVar) {
        p4.h.j(mVar, "adaptKitPairedDevices");
        if (p4.h.c(mVar.f6664h, this.f17392l.f6664h)) {
            G0(ea.m.a(mVar, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6143));
        }
    }

    @Override // w9.d
    public final void v(v9.a aVar, qd.l<? super v9.b, fd.o> lVar) {
        String strC;
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(lVar, "connectedThroughOtherApp");
        da.f fVarA = A();
        v9.e eVar = fVarA.f6152h.f6135h;
        v9.e eVar2 = v9.e.CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT;
        boolean z10 = eVar == eVar2;
        boolean z11 = fVarA.f6153i.f6135h == eVar2;
        if (z10 || z11) {
            if (z10 && z11) {
                ea.m mVar = this.f17392l;
                strC = a0.d.c(mVar.f6667k.f6612j, ",", mVar.f6668l.f6612j);
            } else if (z10) {
                strC = this.f17392l.f6667k.f6612j;
            } else {
                strC = z11 ? this.f17392l.f6668l.f6612j : "";
            }
            ea.m mVar2 = this.f17392l;
            lVar.invoke(new v9.b(aVar, strC, a0.d.c(mVar2.f6667k.f6612j, ",", mVar2.f6668l.f6612j)));
            return;
        }
        w9.a aVar2 = new w9.a(aVar, u1.LEFT);
        w9.v vVar = w9.v.f17378h;
        F0(aVar2, vVar);
        F0(new w9.a(aVar, u1.RIGHT), vVar);
        G0(ea.m.a(this.f17392l, null, false, null, null, null, null, null, 0L, true, 4095));
        v9.d.a.a(d3.e.j(), null, "deletePair: about to delete " + this.f17392l, null, 5, null);
        z0().b(aVar, androidx.lifecycle.o.e(this.f17392l), new q());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.s>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // w9.d
    public final void w(v9.s sVar) {
        synchronized (this.f17406z) {
            this.f17401u.remove(sVar);
        }
    }

    public final ea.h.a w0(ea.h hVar, w9.a aVar) {
        if (!(hVar instanceof ea.h.c)) {
            if (hVar instanceof ea.h.a) {
                return (ea.h.a) hVar;
            }
            throw new j2.a();
        }
        ea.h.c cVar = (ea.h.c) hVar;
        int i10 = this.f17392l.f6667k.f6615m;
        p4.h.j(cVar, "relative");
        ea.h.a aVar2 = new ea.h.a(i10 > 0 ? f1.b.l((cVar.f6647j / 100.0f) * i10) : 0);
        int i11 = this.f17392l.f6668l.f6615m;
        ea.h.a aVar3 = new ea.h.a(i11 > 0 ? f1.b.l((cVar.f6647j / 100.0f) * i11) : 0);
        int iOrdinal = aVar.f17254i.ordinal();
        if (iOrdinal == 0) {
            return aVar2;
        }
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                throw new j2.a();
            }
            if (aVar3.f6646j > aVar2.f6646j) {
                return aVar2;
            }
        }
        return aVar3;
    }

    @Override // w9.d
    public final void x(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        p4.h.j(lVar, "notConnected");
        x0(new x9.b[]{y0(aVar, lVar)}, new d0(aVar));
    }

    public final void x0(x9.b<? extends v9.m>[] bVarArr, qd.a<fd.o> aVar) {
        if (((x9.k) this.f17395o.getValue()).f()) {
            return;
        }
        for (x9.b<? extends v9.m> bVar : bVarArr) {
            if (bVar.f()) {
                return;
            }
        }
        aVar.invoke();
    }

    @Override // w9.d
    @v9.n(minimumFirmwareVersion = "1.4.1")
    public final void y(w9.a aVar, d5 d5Var) {
        p4.h.j(d5Var, "productInformationGetRequest");
        x0(new x9.b[]{y0(aVar, n0.f17473h), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, d5Var.f16664a, d5Var)}, new o0(aVar));
    }

    public final x9.c y0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar) {
        return new x9.c(aVar, A0().e(), B0().e(), this.f17392l, lVar);
    }

    @Override // w9.d
    public final void z(w9.a aVar, f3 f3Var) {
        p4.h.j(f3Var, "request");
        x0(new x9.b[]{y0(aVar, androidx.emoji2.text.b.f(f3Var.f16548b, "GestureConfigurationGet")), new x9.f(aVar, A0().a(), B0().a(), this.f17392l, f3Var.f16664a, f3Var)}, new y(aVar));
    }

    public final ab.a z0() {
        return (ab.a) this.D.getValue();
    }
}
