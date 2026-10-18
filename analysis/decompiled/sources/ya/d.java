package ya;

import android.animation.ArgbEvaluator;
import android.annotation.SuppressLint;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Predicate;
import org.json.JSONObject;
import v9.a1;
import v9.a2;
import v9.a3;
import v9.a4;
import v9.a6;
import v9.b1;
import v9.b2;
import v9.b3;
import v9.b6;
import v9.c1;
import v9.c4;
import v9.c5;
import v9.c6;
import v9.d3;
import v9.d4;
import v9.e1;
import v9.e3;
import v9.e5;
import v9.f2;
import v9.f4;
import v9.f6;
import v9.g1;
import v9.g3;
import v9.g4;
import v9.g6;
import v9.h1;
import v9.h3;
import v9.h5;
import v9.i1;
import v9.i4;
import v9.i5;
import v9.j1;
import v9.j3;
import v9.j4;
import v9.j5;
import v9.j6;
import v9.k2;
import v9.k3;
import v9.k5;
import v9.l1;
import v9.l3;
import v9.l4;
import v9.l5;
import v9.m1;
import v9.m4;
import v9.m6;
import v9.n1;
import v9.n2;
import v9.n3;
import v9.n4;
import v9.n5;
import v9.o3;
import v9.o4;
import v9.o5;
import v9.p1;
import v9.p2;
import v9.p5;
import v9.p6;
import v9.q3;
import v9.q4;
import v9.q5;
import v9.q6;
import v9.r3;
import v9.r4;
import v9.s1;
import v9.s2;
import v9.t1;
import v9.t3;
import v9.t4;
import v9.t5;
import v9.t6;
import v9.u2;
import v9.u3;
import v9.u4;
import v9.u5;
import v9.v1;
import v9.v6;
import v9.w1;
import v9.w3;
import v9.w4;
import v9.x3;
import v9.x5;
import v9.x6;
import v9.y1;
import v9.y2;
import v9.y4;
import v9.y6;
import v9.z1;
import v9.z3;
import v9.z6;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements ya.b {
    public hc.l0 A;
    public final fd.d B;
    public final k C;
    public final qd.l<Throwable, Boolean> D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f18758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ea.b f18759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public hc.a f18760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public hc.a f18761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public fb.c f18762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f18763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f18764g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f18765h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fb.a f18766i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f18767j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public fb.s f18768k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public la.c f18769l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile v9.p0<v9.g, v9.f> f18770m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public fa.c f18771n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final xa.b f18772o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final List<v9.p0<v9.g, v9.f>> f18773p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Object f18774q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final PriorityBlockingQueue<ya.h0<?>> f18775r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ExecutorService f18776s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public da.a f18777t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final wa.c f18778u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public v9.e f18779v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ya.h0<?> f18780w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f18781x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final m0 f18782y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final fd.h f18783z;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public abstract class a extends ya.h0<Boolean> {
        public a() {
        }

        @Override // ya.h0
        public final boolean m(Throwable th) {
            p4.h.j(th, "throwable");
            return d.this.h0(th);
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a0 extends b<Integer> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18785m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18786n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18787o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18789q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18790h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ a0 f18791i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, a0 a0Var) {
                super(0);
                this.f18790h = dVar;
                this.f18791i = a0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18790h.A.t(this.f18791i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a0(v9.a aVar) {
            super();
            this.f18789q = aVar;
            this.f18785m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tlaceGetPresetPercent");
            this.f18786n = aVar;
            this.f18787o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18786n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18787o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18785m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            g4 g4Var = new g4(d.this.f18763f, this.f18789q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(g4Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, g4Var));
            }
            if ((dVar.A instanceof za.a) || !g4Var.f16571o.b()) {
                return;
            }
            if (g4Var instanceof m4 ? true : g4Var instanceof z1 ? true : g4Var instanceof u4 ? true : g4Var instanceof d4 ? true : g4Var instanceof x3 ? true : g4Var instanceof u3 ? true : g4Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, g4Var));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            int iIntValue = ((Number) obj).intValue();
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            i4 i4Var = new i4(dVar.f18763f, this.f18789q, new ea.i(new ea.h.a(iIntValue), dVar.f18759b.f6615m));
            if ((i4Var instanceof p2) || (i4Var instanceof a1) || (i4Var instanceof v9.w0) || (i4Var instanceof e1) || (i4Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(i4Var instanceof f6)) {
                    if (!(i4Var instanceof x6) && !(i4Var instanceof m6) && !(i4Var instanceof j6) && !(i4Var instanceof t6) && !(i4Var instanceof q5) && !(i4Var instanceof x5) && !(i4Var instanceof a6) && !(i4Var instanceof t5)) {
                        if (!(i4Var instanceof u5)) {
                            if (!(i4Var instanceof c6)) {
                                if (!(i4Var instanceof q6) && !(i4Var instanceof o5) && !(i4Var instanceof g6) && !(i4Var instanceof p5)) {
                                    if (!(i4Var instanceof c1) && !(i4Var instanceof t4) && !(i4Var instanceof l4) && !(i4Var instanceof y1) && !(i4Var instanceof c4) && !(i4Var instanceof y4) && !(i4Var instanceof w4) && !(i4Var instanceof t3) && !(i4Var instanceof n5) && !(i4Var instanceof e5)) {
                                        boolean z10 = i4Var instanceof h5;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(i4Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(i4Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, i4Var));
            }
            if ((dVar.A instanceof za.a) || i4Var.f16641m.b()) {
                return;
            }
            if (i4Var instanceof n4 ? true : i4Var instanceof a2 ? true : i4Var instanceof f2 ? true : i4Var instanceof w4 ? true : i4Var instanceof f4 ? true : i4Var instanceof z3 ? true : i4Var instanceof w3 ? true : i4Var instanceof y1) {
                z9.a.IO.b(new ya.w(i4Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public abstract class b<Response> extends ya.h0<Response> {
        public b() {
        }

        @Override // ya.h0
        public boolean m(Throwable th) {
            p4.h.j(th, "throwable");
            return d.this.h0(th);
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class b0 extends b<String> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18793m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18794n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18795o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18797q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18798h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ b0 f18799i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, b0 b0Var) {
                super(0);
                this.f18798h = dVar;
                this.f18799i = b0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18798h.A.y(this.f18799i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b0(v9.a aVar) {
            super();
            this.f18797q = aVar;
            this.f18793m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetProductInformation");
            this.f18794n = aVar;
            this.f18795o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18794n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18795o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18793m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            c5 c5Var = new c5(d.this.f18763f, this.f18797q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(c5Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, c5Var));
            }
            if ((dVar.A instanceof za.a) || !c5Var.f16497o.b()) {
                return;
            }
            if (c5Var instanceof m4 ? true : c5Var instanceof z1 ? true : c5Var instanceof u4 ? true : c5Var instanceof d4 ? true : c5Var instanceof x3 ? true : c5Var instanceof u3 ? true : c5Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, c5Var));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            String str = (String) obj;
            p4.h.j(str, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            e5 e5Var = new e5(dVar.f18763f, this.f18797q, str);
            if ((e5Var instanceof p2) || (e5Var instanceof a1) || (e5Var instanceof v9.w0) || (e5Var instanceof e1) || (e5Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(e5Var instanceof f6)) {
                    if (!(e5Var instanceof x6) && !(e5Var instanceof m6) && !(e5Var instanceof j6) && !(e5Var instanceof t6) && !(e5Var instanceof q5) && !(e5Var instanceof x5) && !(e5Var instanceof a6) && !(e5Var instanceof t5)) {
                        if (!(e5Var instanceof u5)) {
                            if (!(e5Var instanceof c6)) {
                                if (!(e5Var instanceof q6) && !(e5Var instanceof o5) && !(e5Var instanceof g6) && !(e5Var instanceof p5)) {
                                    if (!(e5Var instanceof c1) && !(e5Var instanceof t4) && !(e5Var instanceof l4) && !(e5Var instanceof y1) && !(e5Var instanceof c4) && !(e5Var instanceof y4) && !(e5Var instanceof w4) && !(e5Var instanceof t3)) {
                                        boolean z10 = e5Var instanceof n5;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(e5Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(e5Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, e5Var));
            }
            if ((dVar.A instanceof za.a) || e5Var.f16536m.b()) {
                return;
            }
            if (e5Var instanceof n4 ? true : e5Var instanceof a2 ? true : e5Var instanceof f2 ? true : e5Var instanceof w4 ? true : e5Var instanceof f4 ? true : e5Var instanceof z3 ? true : e5Var instanceof w3 ? true : e5Var instanceof y1) {
                z9.a.IO.b(new ya.w(e5Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public abstract class c<Response, Value> extends ya.h0<Response> implements nc.c<Response, Value> {
        public c() {
        }

        @Override // ya.h0
        public boolean m(Throwable th) {
            p4.h.j(th, "throwable");
            return d.this.h0(th);
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class c0 extends c<String, hc.n0> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18801m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18802n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18803o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final hc.n0 f18804p;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ v9.a f18806r;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18807h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ c0 f18808i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, c0 c0Var) {
                super(0);
                this.f18807h = dVar;
                this.f18808i = c0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18807h.A.P(this.f18808i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c0(v9.a aVar) {
            super();
            this.f18806r = aVar;
            this.f18801m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tserialNumber");
            this.f18802n = aVar;
            this.f18803o = new a(d.this, this);
            this.f18804p = hc.n0.PCA;
        }

        @Override // nc.c
        public final Object getValue() {
            return this.f18804p;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18802n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18803o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18801m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            l5 l5Var = new l5(d.this.f18763f, this.f18806r, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(l5Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, l5Var));
            }
            if ((dVar.A instanceof za.a) || !l5Var.f16706o.b()) {
                return;
            }
            if (l5Var instanceof m4 ? true : l5Var instanceof z1 ? true : l5Var instanceof u4 ? true : l5Var instanceof d4 ? true : l5Var instanceof x3 ? true : l5Var instanceof u3 ? true : l5Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, l5Var));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            String str = (String) obj;
            p4.h.j(str, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            n5 n5Var = new n5(dVar.f18763f, this.f18806r, str);
            if ((n5Var instanceof p2) || (n5Var instanceof a1) || (n5Var instanceof v9.w0) || (n5Var instanceof e1) || (n5Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(n5Var instanceof f6)) {
                    if (!(n5Var instanceof x6) && !(n5Var instanceof m6) && !(n5Var instanceof j6) && !(n5Var instanceof t6) && !(n5Var instanceof q5) && !(n5Var instanceof x5) && !(n5Var instanceof a6) && !(n5Var instanceof t5)) {
                        if (!(n5Var instanceof u5)) {
                            if (!(n5Var instanceof c6)) {
                                if (!(n5Var instanceof q6) && !(n5Var instanceof o5) && !(n5Var instanceof g6) && !(n5Var instanceof p5)) {
                                    if (!(n5Var instanceof c1) && !(n5Var instanceof t4) && !(n5Var instanceof l4) && !(n5Var instanceof y1) && !(n5Var instanceof c4) && !(n5Var instanceof y4) && !(n5Var instanceof w4)) {
                                        boolean z10 = n5Var instanceof t3;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(n5Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(n5Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, n5Var));
            }
            if ((dVar.A instanceof za.a) || n5Var.f16736m.b()) {
                return;
            }
            if (n5Var instanceof n4 ? true : n5Var instanceof a2 ? true : n5Var instanceof f2 ? true : n5Var instanceof w4 ? true : n5Var instanceof f4 ? true : n5Var instanceof z3 ? true : n5Var instanceof w3 ? true : n5Var instanceof y1) {
                z9.a.IO.b(new ya.w(n5Var, dVar));
            }
        }
    }

    /* JADX INFO: renamed from: ya.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public abstract class AbstractC0326d<Response, Value, Complete> extends ya.h0<Response> implements nc.d<Response, Value, Complete> {
        public AbstractC0326d() {
        }

        @Override // lc.a
        public final void b(Complete complete) {
            x();
            this.f19031h.complete(Boolean.TRUE);
        }

        @Override // ya.h0, lc.b
        public final void j(Response response) {
        }

        @Override // ya.h0
        public final void w(Response response) {
        }

        public abstract void x();
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class d0 extends rd.o implements qd.l<x6, fd.o> {
        public d0() {
            super(1);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.l
        public final fd.o invoke(x6 x6Var) {
            x6 x6Var2 = x6Var;
            p4.h.j(x6Var2, "it");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            int i10 = ((x6Var2 instanceof p2) || (x6Var2 instanceof a1) || (x6Var2 instanceof v9.w0) || (x6Var2 instanceof e1) || (x6Var2 instanceof p6) || !(x6Var2 instanceof f6)) ? 2 : 1;
            eb.c cVar = new eb.c(x6Var2);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(x6Var2);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, x6Var2));
            }
            if (!(dVar.A instanceof za.a) && !x6Var2.f16919m.b()) {
                if (x6Var2 instanceof n4 ? true : x6Var2 instanceof a2 ? true : x6Var2 instanceof f2 ? true : x6Var2 instanceof w4 ? true : x6Var2 instanceof f4 ? true : x6Var2 instanceof z3 ? true : x6Var2 instanceof w3 ? true : x6Var2 instanceof y1) {
                    z9.a.IO.b(new ya.w(x6Var2, dVar));
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class e extends InterruptedException {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f18811h = new e();

        public e() {
            super("Command stopped via Disconnect");
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class e0 extends rd.o implements qd.l<v6, fd.o> {
        public e0() {
            super(1);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.l
        public final fd.o invoke(v6 v6Var) {
            v6 v6Var2 = v6Var;
            p4.h.j(v6Var2, "it");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(v6Var2));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, v6Var2));
            }
            if (!(dVar.A instanceof za.a) && v6Var2.f16887o.b()) {
                if (v6Var2 instanceof m4 ? true : v6Var2 instanceof z1 ? true : v6Var2 instanceof u4 ? true : v6Var2 instanceof d4 ? true : v6Var2 instanceof x3 ? true : v6Var2 instanceof u3 ? true : v6Var2 instanceof w1) {
                    z9.a.IO.b(new ya.t(dVar, v6Var2));
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class f extends b<mc.c> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18813m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18814n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18815o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18817q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18818h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ f f18819i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, f fVar) {
                super(0);
                this.f18818h = dVar;
                this.f18819i = fVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18818h.A.w(this.f18819i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(v9.a aVar) {
            super();
            this.f18817q = aVar;
            this.f18813m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tBatteryGetInformation");
            this.f18814n = aVar;
            this.f18815o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18814n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18815o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18813m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            w1 w1Var = new w1(d.this.f18763f, this.f18817q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(w1Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, w1Var));
            }
            if ((dVar.A instanceof za.a) || !w1Var.f16894o.b()) {
                return;
            }
            if (!(w1Var instanceof m4 ? true : w1Var instanceof z1 ? true : w1Var instanceof u4 ? true : w1Var instanceof d4 ? true : w1Var instanceof x3)) {
                boolean z10 = w1Var instanceof u3;
            }
            z9.a.IO.b(new ya.t(dVar, w1Var));
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            mc.c cVar = (mc.c) obj;
            p4.h.j(cVar, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            y1 y1Var = new y1(dVar.f18763f, this.f18817q, de.n0.j(cVar));
            if ((y1Var instanceof p2) || (y1Var instanceof a1) || (y1Var instanceof v9.w0) || (y1Var instanceof e1) || (y1Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(y1Var instanceof f6)) {
                    if (!(y1Var instanceof x6) && !(y1Var instanceof m6) && !(y1Var instanceof j6) && !(y1Var instanceof t6) && !(y1Var instanceof q5) && !(y1Var instanceof x5) && !(y1Var instanceof a6) && !(y1Var instanceof t5)) {
                        if (!(y1Var instanceof u5)) {
                            if (!(y1Var instanceof c6)) {
                                if (!(y1Var instanceof q6) && !(y1Var instanceof o5) && !(y1Var instanceof g6) && !(y1Var instanceof p5)) {
                                    if (!(y1Var instanceof c1) && !(y1Var instanceof t4)) {
                                        boolean z10 = y1Var instanceof l4;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar2 = new eb.c(y1Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar2);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar2);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(y1Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, y1Var));
            }
            if ((dVar.A instanceof za.a) || y1Var.f16927m.b()) {
                return;
            }
            if (!(y1Var instanceof n4 ? true : y1Var instanceof a2 ? true : y1Var instanceof f2 ? true : y1Var instanceof w4 ? true : y1Var instanceof f4 ? true : y1Var instanceof z3)) {
                boolean z11 = y1Var instanceof w3;
            }
            z9.a.IO.b(new ya.w(y1Var, dVar));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class f0 extends b<Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18820m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18821n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18822o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18824q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18825h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ f0 f18826i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, f0 f0Var) {
                super(0);
                this.f18825h = dVar;
                this.f18826i = f0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18825h.A.S(this.f18826i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f0(v9.a aVar) {
            super();
            this.f18824q = aVar;
            this.f18820m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tlaceLoosen");
            this.f18821n = aVar;
            this.f18822o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18821n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18822o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18820m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            j4 j4Var = new j4(d.this.f18763f, this.f18824q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(j4Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, j4Var));
            }
            if ((dVar.A instanceof za.a) || !j4Var.f16657o.b()) {
                return;
            }
            if (j4Var instanceof m4 ? true : j4Var instanceof z1 ? true : j4Var instanceof u4 ? true : j4Var instanceof d4 ? true : j4Var instanceof x3 ? true : j4Var instanceof u3 ? true : j4Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, j4Var));
            }
        }

        @Override // ya.h0
        public final void w(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            d dVar = d.this;
            d.e0(dVar, zBooleanValue, new l4(dVar.f18763f, this.f18824q), new j4(d.this.f18763f, this.f18824q, new y9.a(this.f18824q, this.f18820m)));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class g extends b<Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18827m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18828n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18829o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18831q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18832h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ g f18833i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, g gVar) {
                super(0);
                this.f18832h = dVar;
                this.f18833i = gVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18832h.A.C(this.f18833i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(v9.a aVar) {
            super();
            this.f18831q = aVar;
            this.f18827m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tledBlink");
            this.f18828n = aVar;
            this.f18829o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18828n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18829o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18827m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            r3 r3Var = new r3(d.this.f18763f, this.f18831q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(r3Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, r3Var));
            }
            if ((dVar.A instanceof za.a) || !r3Var.f16797o.b()) {
                return;
            }
            if (r3Var instanceof m4 ? true : r3Var instanceof z1 ? true : r3Var instanceof u4 ? true : r3Var instanceof d4 ? true : r3Var instanceof x3 ? true : r3Var instanceof u3 ? true : r3Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, r3Var));
            }
        }

        @Override // ya.h0
        public final void w(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            d dVar = d.this;
            d.e0(dVar, zBooleanValue, new t3(dVar.f18763f, this.f18831q), new r3(d.this.f18763f, this.f18831q, new y9.a(this.f18831q, this.f18827m)));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class g0 extends rd.o implements qd.l<Boolean, fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v9.a f18835i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g0(v9.a aVar) {
            super(1);
            this.f18835i = aVar;
        }

        @Override // qd.l
        public final fd.o invoke(Boolean bool) {
            boolean zBooleanValue = bool.booleanValue();
            d dVar = d.this;
            d.e0(dVar, zBooleanValue, new w4(dVar.f18763f, this.f18835i), new u4(d.this.f18763f, this.f18835i, new y9.a(this.f18835i, "laceToPercent")));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class h extends c<Boolean, oc.d> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18836m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18837n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18838o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18840q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ ea.d f18841r;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18842h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ h f18843i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, h hVar) {
                super(0);
                this.f18842h = dVar;
                this.f18843i = hVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18842h.A.U(this.f18843i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(v9.a aVar, ea.d dVar) {
            super();
            this.f18840q = aVar;
            this.f18841r = dVar;
            this.f18836m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tcolorUpdate");
            this.f18837n = aVar;
            this.f18838o = new a(d.this, this);
        }

        @Override // nc.c
        public final Object getValue() {
            ea.d dVar = this.f18841r;
            int i10 = dVar.f6622h;
            int i11 = dVar.f6623i;
            int i12 = dVar.f6624j;
            int iA = q.g.a(dVar.f6625k);
            int i13 = 5;
            for (int i14 : q.g.b(5)) {
                if (q.g.a(i14) == iA) {
                    i13 = i14;
                    break;
                }
            }
            return new oc.d(i10, i11, i12, i13);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18837n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18838o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18836m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            x3 x3Var = new x3(d.this.f18763f, this.f18840q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(x3Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, x3Var));
            }
            if ((dVar.A instanceof za.a) || !x3Var.f16910o.b()) {
                return;
            }
            if (!(x3Var instanceof m4 ? true : x3Var instanceof z1 ? true : x3Var instanceof u4)) {
                boolean z10 = x3Var instanceof d4;
            }
            z9.a.IO.b(new ya.t(dVar, x3Var));
        }

        @Override // ya.h0
        public final void w(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            d dVar = d.this;
            v9.a.C0295a c0295a = v9.a.f16441i;
            dVar.t(v9.a.f16444l);
            d dVar2 = d.this;
            d.e0(dVar2, zBooleanValue, new z3(dVar2.f18763f, this.f18840q, this.f18841r), new x3(d.this.f18763f, this.f18840q, new y9.a(this.f18840q, this.f18836m)));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class h0 extends rd.o implements qd.l<Throwable, fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v9.a f18845i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h0(v9.a aVar) {
            super(1);
            this.f18845i = aVar;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.l
        public final fd.o invoke(Throwable th) {
            Throwable th2 = th;
            p4.h.j(th2, "it");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            u4 u4Var = new u4(d.this.f18763f, this.f18845i, th2);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(u4Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, u4Var));
            }
            if (!(dVar.A instanceof za.a) && u4Var.f16860o.b()) {
                if (!(u4Var instanceof m4)) {
                    boolean z10 = u4Var instanceof z1;
                }
                z9.a.IO.b(new ya.t(dVar, u4Var));
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class i extends rd.o implements qd.a<fd.o> {
        public i() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            d dVar = d.this;
            k kVar = dVar.C;
            ea.b bVar = dVar.f18759b;
            kVar.a(bVar.f6612j, bVar.f6614l, new ic.t(dVar.f18763f));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class i0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v9.a f18848i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ea.h.a f18849j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i0(v9.a aVar, ea.h.a aVar2) {
            super(0);
            this.f18848i = aVar;
            this.f18849j = aVar2;
        }

        @Override // qd.a
        public final fd.o invoke() {
            ArrayList arrayList = new ArrayList(d.this.f18773p);
            d dVar = d.this;
            v9.a aVar = this.f18848i;
            ea.h.a aVar2 = this.f18849j;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((v9.p0) it.next()).b(new u4(dVar.f18763f, aVar, new y9.b(aVar, aVar2)));
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class j extends rd.o implements qd.l<Bundle, fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v9.a f18851i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f18852j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(v9.a aVar, String str) {
            super(1);
            this.f18851i = aVar;
            this.f18852j = str;
        }

        /* JADX WARN: Code duplicated, block: B:197:0x02e6  */
        /* JADX WARN: Code duplicated, block: B:199:0x02f0  */
        /* JADX WARN: Code duplicated, block: B:202:0x033c  */
        /* JADX WARN: Code duplicated, block: B:204:0x0342  */
        /* JADX WARN: Code duplicated, block: B:37:0x010f  */
        /* JADX WARN: Type inference failed for: r6v6, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r6v8, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.l
        public final fd.o invoke(Bundle bundle) {
            da.h hVar;
            d dVar;
            da.d dVarG0;
            d dVar2;
            v9.e eVar;
            int i10;
            String[] stringArray;
            String string;
            Bundle bundle2 = bundle;
            Objects.requireNonNull(d.this.f18772o);
            if (bundle2 == null || (stringArray = bundle2.getStringArray("EXTRA_CONNECTION_APPLICATION_IDS")) == null) {
                hVar = null;
            } else {
                hVar = null;
                for (String str : stringArray) {
                    Bundle bundle3 = bundle2.getBundle(str);
                    if (bundle3 != null && (string = bundle3.getString("EXTRA_REQUEST_CURRENT_CONNECTION")) != null) {
                        JSONObject jSONObject = new JSONObject(string);
                        da.f fVar = new da.f(xa.c.a(jSONObject.optJSONObject("left")), xa.c.a(jSONObject.optJSONObject("right")));
                        String string2 = bundle3.getString("EXTRA_CONTROLLER_RECEIVER_ACTION_TOKEN");
                        if (string2 != null && (hVar == null || hVar.f6157h.f6152h.f6135h.ordinal() < fVar.f6152h.f6135h.ordinal() || hVar.f6157h.f6153i.f6135h.ordinal() < fVar.f6153i.f6135h.ordinal())) {
                            p4.h.i(str, "applicationId");
                            hVar = new da.h(fVar, str, string2);
                        }
                    }
                }
            }
            if (hVar != null) {
                v9.e eVar2 = hVar.f6157h.f6152h.f6135h;
                v9.e eVar3 = v9.e.NOT_CONNECTED;
                v9.e eVar4 = v9.e.NOT_INITIATED;
                v9.e eVar5 = v9.e.CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT;
                if (androidx.appcompat.widget.p.g(eVar2, eVar3, eVar4, eVar5) && androidx.appcompat.widget.p.g(hVar.f6157h.f6153i.f6135h, eVar3, eVar4, eVar5)) {
                    dVar = d.this;
                    dVar.f18779v = null;
                    if (dVar.A instanceof za.a) {
                        String str2 = dVar.f18763f;
                        p4.h.j(str2, "deviceId");
                        dVar.A = new hc.l(str2);
                    }
                    dVarG0 = d.this.g0();
                    fb.e eVarJ = d3.e.j();
                    d dVar3 = d.this;
                    v9.d.a.a(eVarJ, null, "connect called " + dVar3.f18763f + " currentState: " + dVarG0 + " connectionInFlight " + dVar3.f18781x, null, 5, null);
                    if (dVarG0.g()) {
                        dVar2 = d.this;
                        if (!dVar2.f18781x) {
                            dVar2.f18781x = true;
                            ic.s sVarK0 = dVar2.k0();
                            d dVar4 = d.this;
                            sVarK0.d(dVar4.f18763f, dVar4.C);
                            z9.a.IO.b(new ya.e(d.this, this.f18852j));
                        }
                    }
                } else {
                    d.this.f18764g = false;
                    d dVar5 = d.this;
                    Application applicationD = v9.t.f16822a.d();
                    d dVar6 = d.this;
                    dVar5.A = new za.a(applicationD, dVar6.f18758a, dVar6.f18763f, hVar.f6158i, hVar.f6159j);
                    if (yd.s.j0(d.this.f18763f, 'L', true)) {
                        if (hVar.f6157h.f6152h.f6135h.b()) {
                            eVar = eVar5;
                        } else {
                            eVar = hVar.f6157h.f6152h.f6135h;
                        }
                    } else if (hVar.f6157h.f6153i.f6135h.b()) {
                        eVar = eVar5;
                    } else {
                        eVar = hVar.f6157h.f6153i.f6135h;
                    }
                    d dVar7 = d.this;
                    dVar7.f18779v = eVar;
                    if (eVar != eVar5) {
                        ?? r10 = dVar7.f18773p;
                        String str3 = d.this.f18763f;
                        v9.a aVar = this.f18851i;
                        da.f fVar2 = hVar.f6157h;
                        b2 b2Var = new b2(str3, aVar, new IllegalStateException(a0.b.a("State of one (or both device) in other app is in some connection process. Other application needs to disconnect from both before: left: ", fVar2.f6152h.f6135h.f16528h, ", right: ", fVar2.f6153i.f6135h.f16528h, " is ")));
                        v9.t.f16830i.a(new eb.b(b2Var));
                        Object[] array = r10.toArray(new v9.p0[0]);
                        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        for (v9.p0 p0Var : (v9.p0[]) array) {
                            z9.a.IO.b(new ya.r(p0Var, b2Var));
                        }
                        if (!(dVar7.A instanceof za.a) && b2Var.f16474o.b()) {
                            if (b2Var instanceof m4 ? true : b2Var instanceof z1 ? true : b2Var instanceof u4 ? true : b2Var instanceof d4 ? true : b2Var instanceof x3 ? true : b2Var instanceof u3 ? true : b2Var instanceof w1) {
                                z9.a.IO.b(new ya.t(dVar7, b2Var));
                            }
                        }
                    }
                    d dVar8 = d.this;
                    ?? r11 = dVar8.f18773p;
                    f2 f2Var = new f2(dVar8.f18763f, eVar);
                    if ((f2Var instanceof p2) || (f2Var instanceof a1) || (f2Var instanceof v9.w0) || (f2Var instanceof e1) || (f2Var instanceof p6)) {
                        i10 = 2;
                    } else {
                        if (!(f2Var instanceof f6)) {
                            if (!(f2Var instanceof x6) && !(f2Var instanceof m6) && !(f2Var instanceof j6) && !(f2Var instanceof t6) && !(f2Var instanceof q5) && !(f2Var instanceof x5) && !(f2Var instanceof a6) && !(f2Var instanceof t5)) {
                                if (!(f2Var instanceof u5)) {
                                    if (!(f2Var instanceof c6)) {
                                        if (!(f2Var instanceof q6) && !(f2Var instanceof o5) && !(f2Var instanceof g6) && !(f2Var instanceof p5)) {
                                            if (!(f2Var instanceof c1) && !(f2Var instanceof t4) && !(f2Var instanceof l4) && !(f2Var instanceof y1) && !(f2Var instanceof c4) && !(f2Var instanceof y4) && !(f2Var instanceof w4) && !(f2Var instanceof t3) && !(f2Var instanceof n5) && !(f2Var instanceof e5) && !(f2Var instanceof h5) && !(f2Var instanceof i4) && !(f2Var instanceof q4) && !(f2Var instanceof j5) && !(f2Var instanceof z3)) {
                                                boolean z10 = f2Var instanceof f4;
                                            }
                                        }
                                    }
                                }
                            }
                            i10 = 2;
                        }
                        i10 = 1;
                    }
                    eb.c cVar = new eb.c(f2Var);
                    int iA = q.g.a(i10);
                    if (iA == 0) {
                        v9.t tVar = v9.t.f16822a;
                        v9.t.f16830i.c(cVar);
                    } else if (iA == 1) {
                        v9.t tVar2 = v9.t.f16822a;
                        v9.t.f16830i.a(cVar);
                    }
                    v9.p0<v9.g, v9.f> p0Var2 = dVar8.f18770m;
                    if (p0Var2 != null) {
                        p0Var2.a(f2Var);
                    }
                    Object[] array2 = r11.toArray(new v9.p0[0]);
                    p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    for (v9.p0 p0Var3 : (v9.p0[]) array2) {
                        z9.a.IO.b(new ya.u(p0Var3, f2Var));
                    }
                    if (!(dVar8.A instanceof za.a) && !f2Var.f16560k.b()) {
                        if (!(f2Var instanceof n4)) {
                            boolean z11 = f2Var instanceof a2;
                        }
                        z9.a.IO.b(new ya.w(f2Var, dVar8));
                    }
                }
            } else {
                dVar = d.this;
                dVar.f18779v = null;
                if (dVar.A instanceof za.a) {
                    String str4 = dVar.f18763f;
                    p4.h.j(str4, "deviceId");
                    dVar.A = new hc.l(str4);
                }
                dVarG0 = d.this.g0();
                fb.e eVarJ2 = d3.e.j();
                d dVar9 = d.this;
                v9.d.a.a(eVarJ2, null, "connect called " + dVar9.f18763f + " currentState: " + dVarG0 + " connectionInFlight " + dVar9.f18781x, null, 5, null);
                if (dVarG0.g()) {
                    dVar2 = d.this;
                    if (!dVar2.f18781x) {
                        dVar2.f18781x = true;
                        ic.s sVarK1 = dVar2.k0();
                        d dVar10 = d.this;
                        sVarK1.d(dVar10.f18763f, dVar10.C);
                        z9.a.IO.b(new ya.e(d.this, this.f18852j));
                    }
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class j0 extends c<Boolean, Integer> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18853m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18854n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final int f18855o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final qd.a<fd.o> f18856p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ qd.l<Boolean, fd.o> f18857q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ qd.l<Throwable, fd.o> f18858r;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18859h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ j0 f18860i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, j0 j0Var) {
                super(0);
                this.f18859h = dVar;
                this.f18860i = j0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18859h.A.L(this.f18860i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public j0(d dVar, v9.a aVar, ea.h.a aVar2, qd.l<? super Boolean, fd.o> lVar, qd.l<? super Throwable, fd.o> lVar2) {
            super();
            this.f18857q = lVar;
            this.f18858r = lVar2;
            this.f18853m = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tlaceToPercent");
            this.f18854n = aVar;
            this.f18855o = aVar2.f6646j;
            this.f18856p = new a(dVar, this);
        }

        @Override // nc.c
        public final Object getValue() {
            return Integer.valueOf(this.f18855o);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18854n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18856p;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18853m;
        }

        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            this.f18858r.invoke(th);
        }

        @Override // ya.h0
        public final void w(Object obj) {
            this.f18857q.invoke(Boolean.valueOf(((Boolean) obj).booleanValue()));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class k implements ic.o {

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18862h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar) {
                super(0);
                this.f18862h = dVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                d dVar = this.f18862h;
                dVar.f18764g = dVar.f18759b.f6616n;
                d dVar2 = this.f18862h;
                dVar2.f18769l = null;
                try {
                    dVar2.q0();
                } catch (Throwable unused) {
                }
                if (this.f18862h.j0()) {
                    v9.d.a.a(d3.e.j(), null, "ConnectionListener issuing connect", null, 5, null);
                    d dVar3 = this.f18862h;
                    v9.a.C0295a c0295a = v9.a.f16441i;
                    dVar3.s(v9.a.f16444l);
                }
                return fd.o.f7408a;
            }
        }

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class b extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18863h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ String f18864i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ da.d f18865j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(d dVar, String str, da.d dVar2) {
                super(0);
                this.f18863h = dVar;
                this.f18864i = str;
                this.f18865j = dVar2;
            }

            /* JADX WARN: Type inference failed for: r1v5, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
            @Override // qd.a
            public final fd.o invoke() {
                int i10;
                CompletableFuture completableFuture = new CompletableFuture();
                fb.c cVar = this.f18863h.f18762e;
                fb.c.a aVar = fb.c.f7253i;
                if (cVar.compareTo(fb.c.f7255k) >= 0) {
                    z9.a.IO.b(new ya.h(this.f18863h, completableFuture));
                } else {
                    completableFuture.complete(fd.o.f7408a);
                }
                try {
                    completableFuture.get(2L, TimeUnit.SECONDS);
                } catch (Throwable unused) {
                }
                d dVar = this.f18863h;
                ?? r10 = dVar.f18773p;
                f2 f2Var = new f2(this.f18864i, da.e.j(this.f18865j));
                if ((f2Var instanceof p2) || (f2Var instanceof a1) || (f2Var instanceof v9.w0) || (f2Var instanceof e1) || (f2Var instanceof p6)) {
                    i10 = 2;
                } else {
                    if (!(f2Var instanceof f6)) {
                        if (!(f2Var instanceof x6) && !(f2Var instanceof m6) && !(f2Var instanceof j6) && !(f2Var instanceof t6) && !(f2Var instanceof q5) && !(f2Var instanceof x5) && !(f2Var instanceof a6) && !(f2Var instanceof t5)) {
                            if (!(f2Var instanceof u5)) {
                                if (!(f2Var instanceof c6)) {
                                    if (!(f2Var instanceof q6) && !(f2Var instanceof o5) && !(f2Var instanceof g6) && !(f2Var instanceof p5)) {
                                        if (!(f2Var instanceof c1) && !(f2Var instanceof t4) && !(f2Var instanceof l4) && !(f2Var instanceof y1) && !(f2Var instanceof c4) && !(f2Var instanceof y4) && !(f2Var instanceof w4) && !(f2Var instanceof t3) && !(f2Var instanceof n5) && !(f2Var instanceof e5) && !(f2Var instanceof h5) && !(f2Var instanceof i4) && !(f2Var instanceof q4) && !(f2Var instanceof j5) && !(f2Var instanceof z3)) {
                                            boolean z10 = f2Var instanceof f4;
                                        }
                                    }
                                }
                            }
                        }
                        i10 = 2;
                    }
                    i10 = 1;
                }
                eb.c cVar2 = new eb.c(f2Var);
                int iA = q.g.a(i10);
                if (iA == 0) {
                    v9.t tVar = v9.t.f16822a;
                    v9.t.f16830i.c(cVar2);
                } else if (iA == 1) {
                    v9.t tVar2 = v9.t.f16822a;
                    v9.t.f16830i.a(cVar2);
                }
                v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
                if (p0Var != null) {
                    p0Var.a(f2Var);
                }
                Object[] array = r10.toArray(new v9.p0[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (v9.p0 p0Var2 : (v9.p0[]) array) {
                    z9.a.IO.b(new ya.u(p0Var2, f2Var));
                }
                if (!(dVar.A instanceof za.a) && !f2Var.f16560k.b()) {
                    if (!(f2Var instanceof n4)) {
                        boolean z11 = f2Var instanceof a2;
                    }
                    z9.a.IO.b(new ya.w(f2Var, dVar));
                }
                return fd.o.f7408a;
            }
        }

        public k() {
        }

        /* JADX WARN: Code duplicated, block: B:167:0x0235  */
        /* JADX WARN: Code duplicated, block: B:169:0x0242  */
        /* JADX WARN: Code duplicated, block: B:170:0x0247  */
        /* JADX WARN: Code duplicated, block: B:172:0x0256  */
        /* JADX WARN: Code duplicated, block: B:234:0x02e8  */
        /* JADX WARN: Type inference failed for: r1v16, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ic.o
        public final void a(String str, String str2, f8.b bVar) {
            d dVar;
            v9.a aVar;
            int i10;
            p4.h.j(str, "deviceId");
            p4.h.j(str2, "authKey");
            p4.h.j(bVar, "coreRFConnectionState");
            v9.d.a.a(d3.e.j(), null, "ConnectionListener " + str + " " + bVar + " " + d.this.j0(), null, 5, null);
            if (p4.h.c(str, d.this.f18763f)) {
                int i11 = 2;
                if (bVar instanceof ic.b) {
                    if (p4.h.c(d.this.f18771n.f7136j, fa.k.n.f7216h)) {
                        d.this.i(fa.k.u.f7226h);
                    } else {
                        d dVar2 = d.this;
                        dVar2.f18771n = fa.c.a(dVar2.f18771n, new fb.c(((ic.b) bVar).f9010c), null, fa.k.r.f7221h, 2);
                    }
                }
                da.d dVarR0 = d.this.r0(bVar, false);
                d dVar3 = d.this;
                if (dVarR0 == da.d.CONNECTED_AND_AUTHENTICATED && (dVar3.A instanceof za.a)) {
                    dVarR0 = da.d.CONNECTED_AND_AUTHENTICATED_REMOTELY;
                }
                if (dVarR0 == da.d.DISCONNECTED) {
                    if (dVar3.f18771n.f7136j.h() == fa.k.c0.IN_PROGRESS) {
                        d dVar4 = d.this;
                        fa.c cVar = dVar4.f18771n;
                        dVar4.f18771n = fa.c.a(cVar, null, null, new fa.k.h(cVar), 3);
                    }
                    d dVar5 = d.this;
                    dVar5.f18775r.clear();
                    ya.h0<?> h0Var = dVar5.f18780w;
                    if (h0Var != null) {
                        h0Var.k(e.f18811h);
                    }
                    dVar5.p0();
                }
                d dVar6 = d.this;
                int iOrdinal = dVarR0.ordinal();
                dVar6.f18781x = iOrdinal == 1 || iOrdinal == 2;
                if (d.this.j0()) {
                    int iOrdinal2 = dVarR0.ordinal();
                    if (iOrdinal2 == 0) {
                        z9.a.IO.b(new a(d.this));
                    } else if (iOrdinal2 == 4) {
                        d dVar7 = d.this;
                        dVar7.f18769l = null;
                        dVar7.q0();
                        dVar = d.this;
                        if (dVar.f18767j < 2) {
                            v9.a.C0295a c0295a = v9.a.f16441i;
                            aVar = v9.a.f16444l;
                        } else {
                            v9.a.C0295a c0295a2 = v9.a.f16441i;
                            aVar = v9.a.f16442j;
                        }
                        dVar.f(aVar);
                        d.this.f18767j++;
                    } else if (iOrdinal2 != 7) {
                        switch (iOrdinal2) {
                            case 11:
                                z9.a.IO.b(new a(d.this));
                                break;
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                                d dVar8 = d.this;
                                dVar8.f18769l = null;
                                dVar8.q0();
                                dVar = d.this;
                                if (dVar.f18767j < 2) {
                                    v9.a.C0295a c0295a3 = v9.a.f16441i;
                                    aVar = v9.a.f16444l;
                                } else {
                                    v9.a.C0295a c0295a4 = v9.a.f16441i;
                                    aVar = v9.a.f16442j;
                                }
                                dVar.f(aVar);
                                d.this.f18767j++;
                                break;
                            default:
                                d.this.q0();
                                d dVar9 = d.this;
                                ?? r10 = dVar9.f18773p;
                                f2 f2Var = new f2(str, da.e.j(dVarR0));
                                if ((f2Var instanceof p2) || (f2Var instanceof a1) || (f2Var instanceof v9.w0) || (f2Var instanceof e1) || (f2Var instanceof p6)) {
                                    i10 = 2;
                                } else {
                                    if (!(f2Var instanceof f6)) {
                                        if (!(f2Var instanceof x6) && !(f2Var instanceof m6) && !(f2Var instanceof j6) && !(f2Var instanceof t6) && !(f2Var instanceof q5) && !(f2Var instanceof x5) && !(f2Var instanceof a6) && !(f2Var instanceof t5)) {
                                            if (!(f2Var instanceof u5)) {
                                                if (!(f2Var instanceof c6)) {
                                                    if (!(f2Var instanceof q6) && !(f2Var instanceof o5) && !(f2Var instanceof g6) && !(f2Var instanceof p5)) {
                                                        if (!(f2Var instanceof c1) && !(f2Var instanceof t4) && !(f2Var instanceof l4) && !(f2Var instanceof y1) && !(f2Var instanceof c4) && !(f2Var instanceof y4) && !(f2Var instanceof w4) && !(f2Var instanceof t3) && !(f2Var instanceof n5) && !(f2Var instanceof e5) && !(f2Var instanceof h5) && !(f2Var instanceof i4) && !(f2Var instanceof q4) && !(f2Var instanceof j5) && !(f2Var instanceof z3)) {
                                                            boolean z10 = f2Var instanceof f4;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        i10 = 2;
                                    }
                                    i10 = 1;
                                }
                                eb.c cVar2 = new eb.c(f2Var);
                                int iA = q.g.a(i10);
                                if (iA == 0) {
                                    v9.t tVar = v9.t.f16822a;
                                    v9.t.f16830i.c(cVar2);
                                } else if (iA == 1) {
                                    v9.t tVar2 = v9.t.f16822a;
                                    v9.t.f16830i.a(cVar2);
                                }
                                v9.p0<v9.g, v9.f> p0Var = dVar9.f18770m;
                                if (p0Var != null) {
                                    p0Var.a(f2Var);
                                }
                                Object[] array = r10.toArray(new v9.p0[0]);
                                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                                for (v9.p0 p0Var2 : (v9.p0[]) array) {
                                    z9.a.IO.b(new ya.u(p0Var2, f2Var));
                                }
                                if (!(dVar9.A instanceof za.a) && !f2Var.f16560k.b()) {
                                    if (!(f2Var instanceof n4)) {
                                        boolean z11 = f2Var instanceof a2;
                                    }
                                    z9.a.IO.b(new ya.w(f2Var, dVar9));
                                }
                                break;
                        }
                    } else {
                        d dVar10 = d.this;
                        dVar10.f18767j = 0;
                        z9.a.IO.b(new b(dVar10, str, dVarR0));
                    }
                }
                if (da.e.j(dVarR0) != v9.e.CONNECTED_AND_AUTHENTICATED) {
                    d dVar11 = d.this;
                    ?? r11 = dVar11.f18773p;
                    f2 f2Var2 = new f2(str, da.e.j(dVarR0));
                    if (!(f2Var2 instanceof p2) && !(f2Var2 instanceof a1) && !(f2Var2 instanceof v9.w0) && !(f2Var2 instanceof e1) && !(f2Var2 instanceof p6)) {
                        if (f2Var2 instanceof f6) {
                            i11 = 1;
                        } else if (!(f2Var2 instanceof x6) && !(f2Var2 instanceof m6) && !(f2Var2 instanceof j6) && !(f2Var2 instanceof t6) && !(f2Var2 instanceof q5) && !(f2Var2 instanceof x5) && !(f2Var2 instanceof a6) && !(f2Var2 instanceof t5)) {
                            if (f2Var2 instanceof u5) {
                                i11 = 1;
                            } else if (!(f2Var2 instanceof c6)) {
                                if ((f2Var2 instanceof q6) || (f2Var2 instanceof o5) || (f2Var2 instanceof g6) || (f2Var2 instanceof p5)) {
                                    i11 = 1;
                                } else if (!(f2Var2 instanceof c1) && !(f2Var2 instanceof t4) && !(f2Var2 instanceof l4) && !(f2Var2 instanceof y1) && !(f2Var2 instanceof c4) && !(f2Var2 instanceof y4) && !(f2Var2 instanceof w4) && !(f2Var2 instanceof t3) && !(f2Var2 instanceof n5) && !(f2Var2 instanceof e5) && !(f2Var2 instanceof h5) && !(f2Var2 instanceof i4) && !(f2Var2 instanceof q4) && !(f2Var2 instanceof j5) && !(f2Var2 instanceof z3)) {
                                    boolean z12 = f2Var2 instanceof f4;
                                }
                            }
                        }
                    }
                    eb.c cVar3 = new eb.c(f2Var2);
                    int iA2 = q.g.a(i11);
                    if (iA2 == 0) {
                        v9.t tVar3 = v9.t.f16822a;
                        v9.t.f16830i.c(cVar3);
                    } else if (iA2 == 1) {
                        v9.t tVar4 = v9.t.f16822a;
                        v9.t.f16830i.a(cVar3);
                    }
                    v9.p0<v9.g, v9.f> p0Var3 = dVar11.f18770m;
                    if (p0Var3 != null) {
                        p0Var3.a(f2Var2);
                    }
                    Object[] array2 = r11.toArray(new v9.p0[0]);
                    p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    for (v9.p0 p0Var4 : (v9.p0[]) array2) {
                        z9.a.IO.b(new ya.u(p0Var4, f2Var2));
                    }
                    if ((dVar11.A instanceof za.a) || f2Var2.f16560k.b()) {
                        return;
                    }
                    if (!(f2Var2 instanceof n4)) {
                        boolean z13 = f2Var2 instanceof a2;
                    }
                    z9.a.IO.b(new ya.w(f2Var2, dVar11));
                }
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class k0 extends rd.o implements qd.p<v9.g, v9.f, fd.o> {
        public k0() {
            super(2);
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r4v4, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.p
        public final fd.o invoke(v9.g gVar, v9.f fVar) {
            int i10;
            v9.g gVar2 = gVar;
            v9.f fVar2 = fVar;
            int i11 = 0;
            if (gVar2 != null) {
                boolean z10 = gVar2 instanceof f2;
                if (z10) {
                    d.this.f18779v = ((f2) gVar2).f16547m;
                }
                d dVar = d.this;
                ?? r10 = dVar.f18773p;
                if ((gVar2 instanceof p2) || (gVar2 instanceof a1) || (gVar2 instanceof v9.w0) || (gVar2 instanceof e1) || (gVar2 instanceof p6)) {
                    i10 = 2;
                } else {
                    if (!(gVar2 instanceof f6)) {
                        if (!(gVar2 instanceof x6) && !(gVar2 instanceof m6) && !(gVar2 instanceof j6) && !(gVar2 instanceof t6) && !(gVar2 instanceof q5) && !(gVar2 instanceof x5) && !(gVar2 instanceof a6) && !(gVar2 instanceof t5)) {
                            if (!(gVar2 instanceof u5)) {
                                if (!(gVar2 instanceof c6)) {
                                    if (!(gVar2 instanceof q6) && !(gVar2 instanceof o5) && !(gVar2 instanceof g6) && !(gVar2 instanceof p5)) {
                                        if (!(gVar2 instanceof c1) && !(gVar2 instanceof t4) && !(gVar2 instanceof l4) && !(gVar2 instanceof y1) && !(gVar2 instanceof c4) && !(gVar2 instanceof y4) && !(gVar2 instanceof w4) && !(gVar2 instanceof t3) && !(gVar2 instanceof n5) && !(gVar2 instanceof e5) && !(gVar2 instanceof h5) && !(gVar2 instanceof i4) && !(gVar2 instanceof q4) && !(gVar2 instanceof j5) && !(gVar2 instanceof z3) && !(gVar2 instanceof f4) && !z10 && !(gVar2 instanceof w3) && !(gVar2 instanceof n4) && !(gVar2 instanceof a2) && !(gVar2 instanceof g1) && !(gVar2 instanceof s2) && !(gVar2 instanceof h1) && !(gVar2 instanceof d3) && !(gVar2 instanceof a3) && !(gVar2 instanceof k5) && !(gVar2 instanceof k2) && !(gVar2 instanceof s1) && !(gVar2 instanceof v1) && !(gVar2 instanceof p1) && !(gVar2 instanceof n1) && !(gVar2 instanceof l1) && !(gVar2 instanceof j1) && !(gVar2 instanceof g3) && !(gVar2 instanceof j3) && !(gVar2 instanceof n3) && !(gVar2 instanceof q3) && !(gVar2 instanceof k3)) {
                                            if (!(gVar2 instanceof u2) && !(gVar2 instanceof y6)) {
                                                throw new j2.a();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i10 = 2;
                    }
                    i10 = 1;
                }
                eb.c cVar = new eb.c(gVar2);
                int iA = q.g.a(i10);
                if (iA == 0) {
                    v9.t tVar = v9.t.f16822a;
                    v9.t.f16830i.c(cVar);
                } else if (iA == 1) {
                    v9.t tVar2 = v9.t.f16822a;
                    v9.t.f16830i.a(cVar);
                }
                v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
                if (p0Var != null) {
                    p0Var.a(gVar2);
                }
                Object[] array = r10.toArray(new v9.p0[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                v9.p0[] p0VarArr = (v9.p0[]) array;
                int length = p0VarArr.length;
                while (i11 < length) {
                    z9.a.IO.b(new ya.u(p0VarArr[i11], gVar2));
                    i11++;
                }
                if (!(dVar.A instanceof za.a) && !gVar2.a().b()) {
                    if (gVar2 instanceof n4 ? true : gVar2 instanceof a2) {
                        z10 = true;
                    }
                    if (z10 ? true : gVar2 instanceof w4 ? true : gVar2 instanceof f4 ? true : gVar2 instanceof z3 ? true : gVar2 instanceof w3 ? true : gVar2 instanceof y1) {
                        z9.a.IO.b(new ya.w(gVar2, dVar));
                    }
                }
            } else if (fVar2 != null) {
                d dVar2 = d.this;
                ?? r11 = dVar2.f18773p;
                v9.t tVar3 = v9.t.f16822a;
                v9.t.f16830i.a(new eb.b(fVar2));
                Object[] array2 = r11.toArray(new v9.p0[0]);
                p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                v9.p0[] p0VarArr2 = (v9.p0[]) array2;
                int length2 = p0VarArr2.length;
                while (i11 < length2) {
                    z9.a.IO.b(new ya.r(p0VarArr2[i11], fVar2));
                    i11++;
                }
                if (!(dVar2.A instanceof za.a) && fVar2.a().b()) {
                    if (fVar2 instanceof m4 ? true : fVar2 instanceof z1 ? true : fVar2 instanceof u4 ? true : fVar2 instanceof d4 ? true : fVar2 instanceof x3 ? true : fVar2 instanceof u3 ? true : fVar2 instanceof w1) {
                        z9.a.IO.b(new ya.t(dVar2, fVar2));
                    }
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class l extends rd.o implements qd.a<ya.i> {
        public l() {
            super(0);
        }

        @Override // qd.a
        public final ya.i invoke() {
            return new ya.i(d.this);
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class l0 extends b<Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f18868m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f18869n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final v9.a f18870o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18872q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18873h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ l0 f18874i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, l0 l0Var) {
                super(0);
                this.f18873h = dVar;
                this.f18874i = l0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18873h.A.s(this.f18874i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l0(v9.a aVar) {
            super();
            this.f18872q = aVar;
            this.f18868m = new a(d.this, this);
            this.f18869n = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetGestureStatistics");
            this.f18870o = aVar;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18870o;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18868m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18869n;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            o3 o3Var = new o3(th, d.this.f18763f, this.f18872q);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(o3Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, o3Var));
            }
            if ((dVar.A instanceof za.a) || !o3Var.f16746p.b()) {
                return;
            }
            if (o3Var instanceof m4 ? true : o3Var instanceof z1 ? true : o3Var instanceof u4 ? true : o3Var instanceof d4 ? true : o3Var instanceof x3 ? true : o3Var instanceof u3 ? true : o3Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, o3Var));
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            ((Boolean) obj).booleanValue();
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            q3 q3Var = new q3(dVar.f18763f, this.f18872q);
            if ((q3Var instanceof p2) || (q3Var instanceof a1) || (q3Var instanceof v9.w0) || (q3Var instanceof e1) || (q3Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(q3Var instanceof f6)) {
                    if (!(q3Var instanceof x6) && !(q3Var instanceof m6) && !(q3Var instanceof j6) && !(q3Var instanceof t6) && !(q3Var instanceof q5) && !(q3Var instanceof x5) && !(q3Var instanceof a6) && !(q3Var instanceof t5)) {
                        if (!(q3Var instanceof u5)) {
                            if (!(q3Var instanceof c6)) {
                                if (!(q3Var instanceof q6) && !(q3Var instanceof o5) && !(q3Var instanceof g6) && !(q3Var instanceof p5)) {
                                    if (!(q3Var instanceof c1) && !(q3Var instanceof t4) && !(q3Var instanceof l4) && !(q3Var instanceof y1) && !(q3Var instanceof c4) && !(q3Var instanceof y4) && !(q3Var instanceof w4) && !(q3Var instanceof t3) && !(q3Var instanceof n5) && !(q3Var instanceof e5) && !(q3Var instanceof h5) && !(q3Var instanceof i4) && !(q3Var instanceof q4) && !(q3Var instanceof j5) && !(q3Var instanceof z3) && !(q3Var instanceof f4) && !(q3Var instanceof f2) && !(q3Var instanceof w3) && !(q3Var instanceof n4) && !(q3Var instanceof a2) && !(q3Var instanceof g1) && !(q3Var instanceof s2) && !(q3Var instanceof h1) && !(q3Var instanceof d3) && !(q3Var instanceof a3) && !(q3Var instanceof k5) && !(q3Var instanceof k2) && !(q3Var instanceof s1) && !(q3Var instanceof v1) && !(q3Var instanceof p1) && !(q3Var instanceof n1) && !(q3Var instanceof l1) && !(q3Var instanceof j1) && !(q3Var instanceof g3) && !(q3Var instanceof j3)) {
                                        boolean z10 = q3Var instanceof n3;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(q3Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(q3Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, q3Var));
            }
            if ((dVar.A instanceof za.a) || q3Var.f16783m.b()) {
                return;
            }
            if (q3Var instanceof n4 ? true : q3Var instanceof a2 ? true : q3Var instanceof f2 ? true : q3Var instanceof w4 ? true : q3Var instanceof f4 ? true : q3Var instanceof z3 ? true : q3Var instanceof w3 ? true : q3Var instanceof y1) {
                z9.a.IO.b(new ya.w(q3Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class m extends rd.o implements qd.l<ya.h0<?>, fd.o> {
        public m() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(ya.h0<?> h0Var) {
            ya.h0<?> h0Var2 = h0Var;
            p4.h.j(h0Var2, "it");
            d.Y(d.this, h0Var2);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class m0 implements fb.c0<la.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public la.b f18876a;

        public m0() {
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // fb.c0
        public final void b(la.a aVar) {
            int i10;
            la.a aVar2 = aVar;
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            String str = dVar.f18763f;
            v9.a.C0295a c0295a = v9.a.f16441i;
            v9.a aVar3 = v9.a.f16442j;
            la.b bVar = this.f18876a;
            if (bVar == null) {
                p4.h.C("sessionId");
                throw null;
            }
            q5 q5Var = new q5(str, aVar3, bVar, aVar2);
            if ((q5Var instanceof p2) || (q5Var instanceof a1) || (q5Var instanceof v9.w0) || (q5Var instanceof e1) || (q5Var instanceof p6)) {
                i10 = 2;
            } else if (q5Var instanceof f6) {
                i10 = 1;
            } else {
                if (!(q5Var instanceof x6) && !(q5Var instanceof m6) && !(q5Var instanceof j6)) {
                    boolean z10 = q5Var instanceof t6;
                }
                i10 = 2;
            }
            eb.c cVar = new eb.c(q5Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(q5Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, q5Var));
            }
            if ((dVar.A instanceof za.a) || q5Var.f16787m.b()) {
                return;
            }
            if (q5Var instanceof n4 ? true : q5Var instanceof a2 ? true : q5Var instanceof f2 ? true : q5Var instanceof w4 ? true : q5Var instanceof f4 ? true : q5Var instanceof z3 ? true : q5Var instanceof w3 ? true : q5Var instanceof y1) {
                z9.a.IO.b(new ya.w(q5Var, dVar));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // fb.c0
        public final void c(la.c cVar) {
            p4.h.j(cVar, "sessionInformation");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            String str = dVar.f18763f;
            v9.a.C0295a c0295a = v9.a.f16441i;
            v9.a aVar = v9.a.f16442j;
            la.b bVar = this.f18876a;
            if (bVar == null) {
                p4.h.C("sessionId");
                throw null;
            }
            u5 u5Var = new u5(str, aVar, bVar, cVar);
            int i10 = ((u5Var instanceof p2) || (u5Var instanceof a1) || (u5Var instanceof v9.w0) || (u5Var instanceof e1) || (u5Var instanceof p6) || (!(u5Var instanceof f6) && ((u5Var instanceof x6) || (u5Var instanceof m6) || (u5Var instanceof j6) || (u5Var instanceof t6) || (u5Var instanceof q5) || (u5Var instanceof x5) || (u5Var instanceof a6) || (u5Var instanceof t5)))) ? 2 : 1;
            eb.c cVar2 = new eb.c(u5Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar2);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar2);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(u5Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, u5Var));
            }
            if ((dVar.A instanceof za.a) || u5Var.f16863m.b()) {
                return;
            }
            if (u5Var instanceof n4 ? true : u5Var instanceof a2 ? true : u5Var instanceof f2 ? true : u5Var instanceof w4 ? true : u5Var instanceof f4 ? true : u5Var instanceof z3 ? true : u5Var instanceof w3 ? true : u5Var instanceof y1) {
                z9.a.IO.b(new ya.w(u5Var, dVar));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // fb.c0
        public final void d(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            String str = d.this.f18763f;
            la.b bVar = this.f18876a;
            if (bVar == null) {
                p4.h.C("sessionId");
                throw null;
            }
            v9.a.C0295a c0295a = v9.a.f16441i;
            b6 b6Var = new b6(str, bVar, v9.a.f16442j, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(b6Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, b6Var));
            }
            if ((dVar.A instanceof za.a) || !b6Var.f16485p.b()) {
                return;
            }
            if (b6Var instanceof m4 ? true : b6Var instanceof z1 ? true : b6Var instanceof u4 ? true : b6Var instanceof d4 ? true : b6Var instanceof x3 ? true : b6Var instanceof u3 ? true : b6Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, b6Var));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class n extends b<Integer> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18878m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18879n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18880o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18882q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18883h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ n f18884i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, n nVar) {
                super(0);
                this.f18883h = dVar;
                this.f18884i = nVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18883h.A.T(this.f18884i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(v9.a aVar) {
            super();
            this.f18882q = aVar;
            this.f18878m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tlaceGetCurrentPercent");
            this.f18879n = aVar;
            this.f18880o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18879n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18880o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18878m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            d4 d4Var = new d4(d.this.f18763f, this.f18882q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(d4Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, d4Var));
            }
            if ((dVar.A instanceof za.a) || !d4Var.f16511o.b()) {
                return;
            }
            if (!(d4Var instanceof m4 ? true : d4Var instanceof z1)) {
                boolean z10 = d4Var instanceof u4;
            }
            z9.a.IO.b(new ya.t(dVar, d4Var));
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            int iIntValue = ((Number) obj).intValue();
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            f4 f4Var = new f4(dVar.f18763f, this.f18882q, new ea.i(new ea.h.a(iIntValue), dVar.f18759b.f6615m));
            if ((f4Var instanceof p2) || (f4Var instanceof a1) || (f4Var instanceof v9.w0) || (f4Var instanceof e1) || (f4Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(f4Var instanceof f6)) {
                    if (!(f4Var instanceof x6) && !(f4Var instanceof m6) && !(f4Var instanceof j6) && !(f4Var instanceof t6) && !(f4Var instanceof q5) && !(f4Var instanceof x5) && !(f4Var instanceof a6) && !(f4Var instanceof t5)) {
                        if (!(f4Var instanceof u5)) {
                            if (!(f4Var instanceof c6)) {
                                if (!(f4Var instanceof q6) && !(f4Var instanceof o5) && !(f4Var instanceof g6) && !(f4Var instanceof p5)) {
                                    if (!(f4Var instanceof c1) && !(f4Var instanceof t4) && !(f4Var instanceof l4) && !(f4Var instanceof y1) && !(f4Var instanceof c4) && !(f4Var instanceof y4) && !(f4Var instanceof w4) && !(f4Var instanceof t3) && !(f4Var instanceof n5) && !(f4Var instanceof e5) && !(f4Var instanceof h5) && !(f4Var instanceof i4) && !(f4Var instanceof q4) && !(f4Var instanceof j5)) {
                                        boolean z10 = f4Var instanceof z3;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(f4Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(f4Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, f4Var));
            }
            if ((dVar.A instanceof za.a) || f4Var.f16551m.b()) {
                return;
            }
            if (!(f4Var instanceof n4 ? true : f4Var instanceof a2 ? true : f4Var instanceof f2)) {
                boolean z11 = f4Var instanceof w4;
            }
            z9.a.IO.b(new ya.w(f4Var, dVar));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class n0 extends c<Boolean, Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18885m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18886n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18887o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18889q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ boolean f18890r;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18891h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ n0 f18892i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, n0 n0Var) {
                super(0);
                this.f18891h = dVar;
                this.f18892i = n0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18891h.A.p(this.f18892i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n0(v9.a aVar, boolean z10) {
            super();
            this.f18889q = aVar;
            this.f18890r = z10;
            this.f18885m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tsetFootPresenceSensor");
            this.f18886n = aVar;
            this.f18887o = new a(d.this, this);
        }

        @Override // nc.c
        public final Object getValue() {
            return Boolean.valueOf(this.f18890r);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18886n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18887o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18885m;
        }

        /* JADX WARN: Type inference failed for: r4v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            int i10 = 0;
            if (this.f18890r) {
                d dVar = d.this;
                ?? r10 = dVar.f18773p;
                b3 b3Var = new b3(d.this.f18763f, this.f18889q, th);
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.a(new eb.b(b3Var));
                Object[] array = r10.toArray(new v9.p0[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                v9.p0[] p0VarArr = (v9.p0[]) array;
                int length = p0VarArr.length;
                while (i10 < length) {
                    z9.a.IO.b(new ya.r(p0VarArr[i10], b3Var));
                    i10++;
                }
                if ((dVar.A instanceof za.a) || !b3Var.f16477o.b()) {
                    return;
                }
                if (b3Var instanceof m4 ? true : b3Var instanceof z1 ? true : b3Var instanceof u4 ? true : b3Var instanceof d4 ? true : b3Var instanceof x3 ? true : b3Var instanceof u3 ? true : b3Var instanceof w1) {
                    z9.a.IO.b(new ya.t(dVar, b3Var));
                    return;
                }
                return;
            }
            d dVar2 = d.this;
            ?? r11 = dVar2.f18773p;
            y2 y2Var = new y2(d.this.f18763f, this.f18889q, th);
            v9.t tVar2 = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(y2Var));
            Object[] array2 = r11.toArray(new v9.p0[0]);
            p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            v9.p0[] p0VarArr2 = (v9.p0[]) array2;
            int length2 = p0VarArr2.length;
            while (i10 < length2) {
                z9.a.IO.b(new ya.r(p0VarArr2[i10], y2Var));
                i10++;
            }
            if ((dVar2.A instanceof za.a) || !y2Var.f16930o.b()) {
                return;
            }
            if (y2Var instanceof m4 ? true : y2Var instanceof z1 ? true : y2Var instanceof u4 ? true : y2Var instanceof d4 ? true : y2Var instanceof x3 ? true : y2Var instanceof u3 ? true : y2Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar2, y2Var));
            }
        }

        @Override // ya.h0
        public final void w(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            if (this.f18890r) {
                d dVar = d.this;
                d.e0(dVar, zBooleanValue, new d3(dVar.f18763f, this.f18889q), new b3(d.this.f18763f, this.f18889q, new y9.a(this.f18889q, this.f18885m)));
            } else {
                d dVar2 = d.this;
                d.e0(dVar2, zBooleanValue, new a3(dVar2.f18763f, this.f18889q), new y2(d.this.f18763f, this.f18889q, new y9.a(this.f18889q, this.f18885m)));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class o extends a {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18893m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18894n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18895o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18897q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18898h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ o f18899i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, o oVar) {
                super(0);
                this.f18898h = dVar;
                this.f18899i = oVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18898h.A.m(this.f18899i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(v9.a aVar) {
            super();
            this.f18897q = aVar;
            this.f18893m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tsystemReset");
            this.f18894n = aVar;
            this.f18895o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18894n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18895o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18893m;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d.this.f(this.f18897q);
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            i5 i5Var = new i5(d.this.f18763f, this.f18897q, new y9.a(this.f18897q, this.f18893m));
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(i5Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, i5Var));
            }
            if ((dVar.A instanceof za.a) || !i5Var.f16644o.b()) {
                return;
            }
            if (i5Var instanceof m4 ? true : i5Var instanceof z1 ? true : i5Var instanceof u4 ? true : i5Var instanceof d4 ? true : i5Var instanceof x3 ? true : i5Var instanceof u3 ? true : i5Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, i5Var));
            }
        }

        @Override // ya.h0
        public final void w(Boolean bool) {
            boolean zBooleanValue = bool.booleanValue();
            d.this.f(this.f18897q);
            d dVar = d.this;
            d.e0(dVar, zBooleanValue, new j5(dVar.f18763f, this.f18897q), new i5(d.this.f18763f, this.f18897q, new y9.a(this.f18897q, this.f18893m)));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class o0 extends c<mc.o, List<? extends mc.n>> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f18900m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f18901n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final v9.a f18902o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final List<mc.n> f18903p;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ v9.a f18905r;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18906h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ o0 f18907i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, o0 o0Var) {
                super(0);
                this.f18906h = dVar;
                this.f18907i = o0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18906h.A.V(this.f18907i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o0(v9.a aVar, List<? extends ga.a> list) {
            mc.m mVar;
            mc.l lVar;
            super();
            this.f18905r = aVar;
            this.f18900m = new a(d.this, this);
            this.f18901n = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tsetGestureConfiguration");
            this.f18902o = aVar;
            ArrayList arrayList = new ArrayList(gd.j.T(list, 10));
            for (ga.a aVar2 : list) {
                int iOrdinal = aVar2.f7898i.ordinal();
                if (iOrdinal == 0) {
                    mVar = mc.m.CLASSIFICATION_UNKNOWN;
                } else if (iOrdinal == 1) {
                    mVar = mc.m.CLASSIFICATION_NONE;
                } else if (iOrdinal == 2) {
                    mVar = mc.m.CLASSIFICATION_DOUBLETAP;
                } else {
                    if (iOrdinal != 3) {
                        throw new j2.a();
                    }
                    mVar = mc.m.CLASSIFICATION_DOUBLETAP_TRAINING;
                }
                int iOrdinal2 = aVar2.f7897h.ordinal();
                if (iOrdinal2 == 0) {
                    lVar = mc.l.ACTION_UNKNOWN;
                } else if (iOrdinal2 == 1) {
                    lVar = mc.l.ACTION_NONE;
                } else {
                    if (iOrdinal2 != 2) {
                        throw new j2.a();
                    }
                    lVar = mc.l.ACTION_UNLACE;
                }
                arrayList.add(new mc.n(mVar, lVar));
            }
            this.f18903p = arrayList;
        }

        @Override // nc.c
        public final Object getValue() {
            return this.f18903p;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18902o;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18900m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18901n;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            h3 h3Var = new h3(th, d.this.f18763f, this.f18905r);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(h3Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, h3Var));
            }
            if ((dVar.A instanceof za.a) || !h3Var.f16586p.b()) {
                return;
            }
            if (h3Var instanceof m4 ? true : h3Var instanceof z1 ? true : h3Var instanceof u4 ? true : h3Var instanceof d4 ? true : h3Var instanceof x3 ? true : h3Var instanceof u3 ? true : h3Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, h3Var));
            }
        }

        /* JADX WARN: Code duplicated, block: B:73:0x00a5  */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            ga.b bVar;
            mc.o oVar = (mc.o) obj;
            p4.h.j(oVar, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            String str = dVar.f18763f;
            int iOrdinal = oVar.ordinal();
            int i10 = 2;
            if (iOrdinal == 0) {
                bVar = ga.b.CRITICAL_BATTERY;
            } else if (iOrdinal == 1) {
                bVar = ga.b.ACTIVE_SESSION;
            } else if (iOrdinal == 2) {
                bVar = ga.b.CONFIG_SET;
            } else {
                if (iOrdinal != 3) {
                    throw new j2.a();
                }
                bVar = ga.b.UNKNOWN;
            }
            j3 j3Var = new j3(str, bVar, this.f18905r);
            if (!(j3Var instanceof p2) && !(j3Var instanceof a1) && !(j3Var instanceof v9.w0) && !(j3Var instanceof e1) && !(j3Var instanceof p6)) {
                if (j3Var instanceof f6) {
                    i10 = 1;
                } else if (!(j3Var instanceof x6) && !(j3Var instanceof m6) && !(j3Var instanceof j6) && !(j3Var instanceof t6) && !(j3Var instanceof q5) && !(j3Var instanceof x5) && !(j3Var instanceof a6) && !(j3Var instanceof t5)) {
                    if (j3Var instanceof u5) {
                        i10 = 1;
                    } else if (!(j3Var instanceof c6)) {
                        if ((j3Var instanceof q6) || (j3Var instanceof o5) || (j3Var instanceof g6) || (j3Var instanceof p5)) {
                            i10 = 1;
                        } else if (!(j3Var instanceof c1) && !(j3Var instanceof t4) && !(j3Var instanceof l4) && !(j3Var instanceof y1) && !(j3Var instanceof c4) && !(j3Var instanceof y4) && !(j3Var instanceof w4) && !(j3Var instanceof t3) && !(j3Var instanceof n5) && !(j3Var instanceof e5) && !(j3Var instanceof h5) && !(j3Var instanceof i4) && !(j3Var instanceof q4) && !(j3Var instanceof j5) && !(j3Var instanceof z3) && !(j3Var instanceof f4) && !(j3Var instanceof f2) && !(j3Var instanceof w3) && !(j3Var instanceof n4) && !(j3Var instanceof a2) && !(j3Var instanceof g1) && !(j3Var instanceof s2) && !(j3Var instanceof h1) && !(j3Var instanceof d3) && !(j3Var instanceof a3) && !(j3Var instanceof k5) && !(j3Var instanceof k2) && !(j3Var instanceof s1) && !(j3Var instanceof v1) && !(j3Var instanceof p1) && !(j3Var instanceof n1) && !(j3Var instanceof l1) && !(j3Var instanceof j1)) {
                            boolean z10 = j3Var instanceof g3;
                        }
                    }
                }
            }
            eb.c cVar = new eb.c(j3Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(j3Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, j3Var));
            }
            if ((dVar.A instanceof za.a) || j3Var.f16655n.b()) {
                return;
            }
            if (j3Var instanceof n4 ? true : j3Var instanceof a2 ? true : j3Var instanceof f2 ? true : j3Var instanceof w4 ? true : j3Var instanceof f4 ? true : j3Var instanceof z3 ? true : j3Var instanceof w3 ? true : j3Var instanceof y1) {
                z9.a.IO.b(new ya.w(j3Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class p extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v9.a f18909i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(v9.a aVar) {
            super(0);
            this.f18909i = aVar;
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.a
        public final fd.o invoke() {
            d dVar = d.this;
            dVar.f18775r.clear();
            ya.h0<?> h0Var = dVar.f18780w;
            if (h0Var != null) {
                h0Var.k(e.f18811h);
            }
            dVar.p0();
            try {
                if (d.this.f18765h) {
                    v9.t tVar = v9.t.f16822a;
                    w0.a.b(tVar.d()).e((BroadcastReceiver) d.this.f18783z.getValue());
                    wa.c cVar = d.this.f18778u;
                    Application applicationD = tVar.d();
                    Objects.requireNonNull(cVar);
                    if (cVar.f17544f) {
                        Objects.requireNonNull(cVar.f17545g);
                        applicationD.unregisterReceiver(cVar);
                    }
                    cVar.f17544f = false;
                    d.this.f18765h = false;
                }
                d.this.k0().b(d.this.f18763f);
                d dVar2 = d.this;
                ?? r10 = dVar2.f18773p;
                p2 p2Var = new p2(dVar2.f18763f, this.f18909i);
                eb.c cVar2 = new eb.c(p2Var);
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar2);
                v9.p0<v9.g, v9.f> p0Var = dVar2.f18770m;
                if (p0Var != null) {
                    p0Var.a(p2Var);
                }
                Object[] array = r10.toArray(new v9.p0[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (v9.p0 p0Var2 : (v9.p0[]) array) {
                    z9.a.IO.b(new ya.u(p0Var2, p2Var));
                }
                if (!(dVar2.A instanceof za.a) && !p2Var.f16761m.b()) {
                    if (p2Var instanceof n4 ? true : p2Var instanceof a2 ? true : p2Var instanceof f2 ? true : p2Var instanceof w4 ? true : p2Var instanceof f4 ? true : p2Var instanceof z3 ? true : p2Var instanceof w3 ? true : p2Var instanceof y1) {
                        z9.a.IO.b(new ya.w(p2Var, dVar2));
                    }
                }
            } catch (Throwable th) {
                d dVar3 = d.this;
                ?? r11 = dVar3.f18773p;
                n2 n2Var = new n2(d.this.f18763f, this.f18909i, th);
                v9.t tVar3 = v9.t.f16822a;
                v9.t.f16830i.a(new eb.b(n2Var));
                Object[] array2 = r11.toArray(new v9.p0[0]);
                p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (v9.p0 p0Var3 : (v9.p0[]) array2) {
                    z9.a.IO.b(new ya.r(p0Var3, n2Var));
                }
                if (!(dVar3.A instanceof za.a) && n2Var.f16728o.b()) {
                    if (n2Var instanceof m4 ? true : n2Var instanceof z1 ? true : n2Var instanceof u4 ? true : n2Var instanceof d4 ? true : n2Var instanceof x3 ? true : n2Var instanceof u3 ? true : n2Var instanceof w1) {
                        z9.a.IO.b(new ya.t(dVar3, n2Var));
                    }
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class p0 extends c<Boolean, Integer> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18910m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18911n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final int f18912o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final qd.a<fd.o> f18913p;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ v9.a f18915r;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18916h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ p0 f18917i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, p0 p0Var) {
                super(0);
                this.f18916h = dVar;
                this.f18917i = p0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18916h.A.b(this.f18917i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p0(v9.a aVar, ea.h.a aVar2) {
            super();
            this.f18915r = aVar;
            this.f18910m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tlaceSetPreset");
            this.f18911n = aVar;
            int i10 = aVar2.f6646j;
            if (i10 == 1) {
                i10 = 2;
            } else if (i10 == 100) {
                i10 = 98;
            }
            this.f18912o = i10;
            this.f18913p = new a(d.this, this);
        }

        @Override // nc.c
        public final Object getValue() {
            return Integer.valueOf(this.f18912o);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18911n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18913p;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18910m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            o4 o4Var = new o4(d.this.f18763f, this.f18915r, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(o4Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, o4Var));
            }
            if ((dVar.A instanceof za.a) || !o4Var.f16748o.b()) {
                return;
            }
            if (o4Var instanceof m4 ? true : o4Var instanceof z1 ? true : o4Var instanceof u4 ? true : o4Var instanceof d4 ? true : o4Var instanceof x3 ? true : o4Var instanceof u3 ? true : o4Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, o4Var));
            }
        }

        @Override // ya.h0
        public final void w(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            d dVar = d.this;
            d.e0(dVar, zBooleanValue, new q4(dVar.f18763f, this.f18915r), new o4(d.this.f18763f, this.f18915r, new y9.a(this.f18915r, this.f18910m)));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class q extends rd.o implements qd.a<fd.o> {
        public q() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.a
        public final fd.o invoke() {
            int i10;
            d.this.k0().b(d.this.f18763f);
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            f2 f2Var = new f2(dVar.f18763f, v9.e.NOT_CONNECTED);
            if ((f2Var instanceof p2) || (f2Var instanceof a1) || (f2Var instanceof v9.w0) || (f2Var instanceof e1) || (f2Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(f2Var instanceof f6)) {
                    if (!(f2Var instanceof x6) && !(f2Var instanceof m6) && !(f2Var instanceof j6) && !(f2Var instanceof t6) && !(f2Var instanceof q5) && !(f2Var instanceof x5) && !(f2Var instanceof a6) && !(f2Var instanceof t5)) {
                        if (!(f2Var instanceof u5)) {
                            if (!(f2Var instanceof c6)) {
                                if (!(f2Var instanceof q6) && !(f2Var instanceof o5) && !(f2Var instanceof g6) && !(f2Var instanceof p5)) {
                                    if (!(f2Var instanceof c1) && !(f2Var instanceof t4) && !(f2Var instanceof l4) && !(f2Var instanceof y1) && !(f2Var instanceof c4) && !(f2Var instanceof y4) && !(f2Var instanceof w4) && !(f2Var instanceof t3) && !(f2Var instanceof n5) && !(f2Var instanceof e5) && !(f2Var instanceof h5) && !(f2Var instanceof i4) && !(f2Var instanceof q4) && !(f2Var instanceof j5) && !(f2Var instanceof z3)) {
                                        boolean z10 = f2Var instanceof f4;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(f2Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(f2Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, f2Var));
            }
            if (!(dVar.A instanceof za.a) && !f2Var.f16560k.b()) {
                if (!(f2Var instanceof n4)) {
                    boolean z11 = f2Var instanceof a2;
                }
                z9.a.IO.b(new ya.w(f2Var, dVar));
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    @ld.e(c = "com.nike.android.adaptkit.repository.controller.AdaptKitControlsRepositoryImpl", f = "AdaptKitControlsRepositories.kt", l = {1691, 1692, 1693}, m = "slotCheck")
    public static final class q0 extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f18919h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f18920i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public fa.l.c f18921j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public /* synthetic */ Object f18922k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f18924m;

        public q0(jd.d<? super q0> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f18922k = obj;
            this.f18924m |= Integer.MIN_VALUE;
            return d.this.n0(null, this);
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class r extends rd.o implements qd.a<fd.o> {
        public r() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // qd.a
        public final fd.o invoke() {
            int i10;
            d.this.k0().b(d.this.f18763f);
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            f2 f2Var = new f2(dVar.f18763f, v9.e.NOT_CONNECTED);
            if ((f2Var instanceof p2) || (f2Var instanceof a1) || (f2Var instanceof v9.w0) || (f2Var instanceof e1) || (f2Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(f2Var instanceof f6)) {
                    if (!(f2Var instanceof x6) && !(f2Var instanceof m6) && !(f2Var instanceof j6) && !(f2Var instanceof t6) && !(f2Var instanceof q5) && !(f2Var instanceof x5) && !(f2Var instanceof a6) && !(f2Var instanceof t5)) {
                        if (!(f2Var instanceof u5)) {
                            if (!(f2Var instanceof c6)) {
                                if (!(f2Var instanceof q6) && !(f2Var instanceof o5) && !(f2Var instanceof g6) && !(f2Var instanceof p5)) {
                                    if (!(f2Var instanceof c1) && !(f2Var instanceof t4) && !(f2Var instanceof l4) && !(f2Var instanceof y1) && !(f2Var instanceof c4) && !(f2Var instanceof y4) && !(f2Var instanceof w4) && !(f2Var instanceof t3) && !(f2Var instanceof n5) && !(f2Var instanceof e5) && !(f2Var instanceof h5) && !(f2Var instanceof i4) && !(f2Var instanceof q4) && !(f2Var instanceof j5) && !(f2Var instanceof z3)) {
                                        boolean z10 = f2Var instanceof f4;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(f2Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(f2Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, f2Var));
            }
            if (!(dVar.A instanceof za.a) && !f2Var.f16560k.b()) {
                if (!(f2Var instanceof n4)) {
                    boolean z11 = f2Var instanceof a2;
                }
                z9.a.IO.b(new ya.w(f2Var, dVar));
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class r0 implements fa.o {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.l.d f18926h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final fa.l.a f18927i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final fa.l.b f18928j;

        public r0(fa.l.c cVar, fa.l.c cVar2, fa.l.c cVar3) {
            this.f18926h = new fa.l.d(cVar);
            this.f18927i = new fa.l.a(cVar2);
            this.f18928j = new fa.l.b(cVar3);
        }

        @Override // fa.o
        public final boolean A() {
            return fa.o.a.a(this);
        }

        @Override // fa.o
        public final fa.l.b o() {
            return this.f18928j;
        }

        @Override // fa.o
        public final fa.l.a p() {
            return this.f18927i;
        }

        @Override // fa.o
        public final fa.l.d y() {
            return this.f18926h;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class s extends b<mc.g0> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18929m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18930n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18931o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18933q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18934h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ s f18935i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, s sVar) {
                super(0);
                this.f18934h = dVar;
                this.f18935i = sVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18934h.A.N(this.f18935i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(v9.a aVar) {
            super();
            this.f18933q = aVar;
            this.f18929m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetAnimation");
            this.f18930n = aVar;
            this.f18931o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18930n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18931o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18929m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            v9.u0 u0Var = new v9.u0(d.this.f18763f, this.f18933q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(u0Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, u0Var));
            }
            if ((dVar.A instanceof za.a) || !u0Var.f16852o.b()) {
                return;
            }
            if (u0Var instanceof m4 ? true : u0Var instanceof z1 ? true : u0Var instanceof u4 ? true : u0Var instanceof d4 ? true : u0Var instanceof x3 ? true : u0Var instanceof u3 ? true : u0Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, u0Var));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            mc.g0 g0Var = (mc.g0) obj;
            p4.h.j(g0Var, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            v9.w0 w0Var = new v9.w0(dVar.f18763f, this.f18933q, ba.g.f3657l.b(g0Var));
            if (!(w0Var instanceof p2)) {
                boolean z10 = w0Var instanceof a1;
            }
            eb.c cVar = new eb.c(w0Var);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(cVar);
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(w0Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, w0Var));
            }
            if ((dVar.A instanceof za.a) || w0Var.f16891m.b()) {
                return;
            }
            if (w0Var instanceof n4 ? true : w0Var instanceof a2 ? true : w0Var instanceof f2 ? true : w0Var instanceof w4 ? true : w0Var instanceof f4 ? true : w0Var instanceof z3 ? true : w0Var instanceof w3 ? true : w0Var instanceof y1) {
                z9.a.IO.b(new ya.w(w0Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class s0 extends rd.o implements qd.a<ic.s> {
        public s0() {
            super(0);
        }

        @Override // qd.a
        public final ic.s invoke() {
            int i10 = ic.s.f9071a;
            return ic.g.f9016b;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class t extends b<mc.j> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18936m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18937n;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final /* synthetic */ v9.a f18939p;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18940h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ t f18941i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, t tVar) {
                super(0);
                this.f18940h = dVar;
                this.f18941i = tVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18940h.A.q(this.f18941i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(v9.a aVar) {
            super();
            this.f18939p = aVar;
            this.f18936m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetCustomAnimation");
            this.f18937n = aVar;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18937n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return new a(d.this, this);
        }

        @Override // ya.h0
        public final String p() {
            return this.f18936m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            v9.u0 u0Var = new v9.u0(d.this.f18763f, this.f18939p, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(u0Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, u0Var));
            }
            if ((dVar.A instanceof za.a) || !u0Var.f16852o.b()) {
                return;
            }
            if (u0Var instanceof m4 ? true : u0Var instanceof z1 ? true : u0Var instanceof u4 ? true : u0Var instanceof d4 ? true : u0Var instanceof x3 ? true : u0Var instanceof u3 ? true : u0Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, u0Var));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            mc.j jVar = (mc.j) obj;
            p4.h.j(jVar, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            v9.w0 w0Var = new v9.w0(dVar.f18763f, this.f18939p, ba.g.f3657l.a(jVar));
            if (!(w0Var instanceof p2)) {
                boolean z10 = w0Var instanceof a1;
            }
            eb.c cVar = new eb.c(w0Var);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(cVar);
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(w0Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, w0Var));
            }
            if ((dVar.A instanceof za.a) || w0Var.f16891m.b()) {
                return;
            }
            if (w0Var instanceof n4 ? true : w0Var instanceof a2 ? true : w0Var instanceof f2 ? true : w0Var instanceof w4 ? true : w0Var instanceof f4 ? true : w0Var instanceof z3 ? true : w0Var instanceof w3 ? true : w0Var instanceof y1) {
                z9.a.IO.b(new ya.w(w0Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class t0 extends b<Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18942m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18943n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18944o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18946q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18947h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ t0 f18948i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, t0 t0Var) {
                super(0);
                this.f18947h = dVar;
                this.f18948i = t0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18947h.A.B(this.f18948i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t0(v9.a aVar) {
            super();
            this.f18946q = aVar;
            this.f18942m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tstopAnimation");
            this.f18943n = aVar;
            this.f18944o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18943n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18944o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18942m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            b1 b1Var = new b1(d.this.f18763f, this.f18946q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(b1Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, b1Var));
            }
            if ((dVar.A instanceof za.a) || !b1Var.f16471o.b()) {
                return;
            }
            if (b1Var instanceof m4 ? true : b1Var instanceof z1 ? true : b1Var instanceof u4 ? true : b1Var instanceof d4 ? true : b1Var instanceof x3 ? true : b1Var instanceof u3 ? true : b1Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, b1Var));
            }
        }

        @Override // ya.h0
        public final void w(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            d dVar = d.this;
            d.e0(dVar, zBooleanValue, new e1(dVar.f18763f, this.f18946q), new b1(d.this.f18763f, this.f18946q, new y9.a(this.f18946q, "stopAnimation")));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class u extends b<mc.a> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f18949m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f18950n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final v9.a f18951o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18953q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18954h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ u f18955i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, u uVar) {
                super(0);
                this.f18954h = dVar;
                this.f18955i = uVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18954h.A.v(this.f18955i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(v9.a aVar) {
            super();
            this.f18953q = aVar;
            this.f18949m = new a(d.this, this);
            this.f18950n = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetAutoAdaptActivityState");
            this.f18951o = aVar;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18951o;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18949m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18950n;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            i1 i1Var = new i1(th, d.this.f18763f, this.f18953q);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(i1Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, i1Var));
            }
            if ((dVar.A instanceof za.a) || !i1Var.f16633p.b()) {
                return;
            }
            if (i1Var instanceof m4 ? true : i1Var instanceof z1 ? true : i1Var instanceof u4 ? true : i1Var instanceof d4 ? true : i1Var instanceof x3 ? true : i1Var instanceof u3 ? true : i1Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, i1Var));
            }
        }

        /* JADX WARN: Code duplicated, block: B:75:0x00ab  */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            mc.a aVar = (mc.a) obj;
            p4.h.j(aVar, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            int iOrdinal = aVar.ordinal();
            int i10 = 5;
            int i11 = 2;
            if (iOrdinal == 0) {
                i10 = 1;
            } else if (iOrdinal == 1) {
                i10 = 2;
            } else if (iOrdinal == 2) {
                i10 = 3;
            } else if (iOrdinal == 3) {
                i10 = 4;
            } else if (iOrdinal != 4) {
                if (iOrdinal != 5) {
                    throw new j2.a();
                }
                i10 = 6;
            }
            l1 l1Var = new l1(i10, d.this.f18763f, this.f18953q);
            if (!(l1Var instanceof p2) && !(l1Var instanceof a1) && !(l1Var instanceof v9.w0) && !(l1Var instanceof e1) && !(l1Var instanceof p6)) {
                if (l1Var instanceof f6) {
                    i11 = 1;
                } else if (!(l1Var instanceof x6) && !(l1Var instanceof m6) && !(l1Var instanceof j6) && !(l1Var instanceof t6) && !(l1Var instanceof q5) && !(l1Var instanceof x5) && !(l1Var instanceof a6) && !(l1Var instanceof t5)) {
                    if (l1Var instanceof u5) {
                        i11 = 1;
                    } else if (!(l1Var instanceof c6)) {
                        if ((l1Var instanceof q6) || (l1Var instanceof o5) || (l1Var instanceof g6) || (l1Var instanceof p5)) {
                            i11 = 1;
                        } else if (!(l1Var instanceof c1) && !(l1Var instanceof t4) && !(l1Var instanceof l4) && !(l1Var instanceof y1) && !(l1Var instanceof c4) && !(l1Var instanceof y4) && !(l1Var instanceof w4) && !(l1Var instanceof t3) && !(l1Var instanceof n5) && !(l1Var instanceof e5) && !(l1Var instanceof h5) && !(l1Var instanceof i4) && !(l1Var instanceof q4) && !(l1Var instanceof j5) && !(l1Var instanceof z3) && !(l1Var instanceof f4) && !(l1Var instanceof f2) && !(l1Var instanceof w3) && !(l1Var instanceof n4) && !(l1Var instanceof a2) && !(l1Var instanceof g1) && !(l1Var instanceof s2) && !(l1Var instanceof h1) && !(l1Var instanceof d3) && !(l1Var instanceof a3) && !(l1Var instanceof k5) && !(l1Var instanceof k2) && !(l1Var instanceof s1) && !(l1Var instanceof v1) && !(l1Var instanceof p1)) {
                            boolean z10 = l1Var instanceof n1;
                        }
                    }
                }
            }
            eb.c cVar = new eb.c(l1Var);
            int iA = q.g.a(i11);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(l1Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, l1Var));
            }
            if ((dVar.A instanceof za.a) || l1Var.f16696n.b()) {
                return;
            }
            if (l1Var instanceof n4 ? true : l1Var instanceof a2 ? true : l1Var instanceof f2 ? true : l1Var instanceof w4 ? true : l1Var instanceof f4 ? true : l1Var instanceof z3 ? true : l1Var instanceof w3 ? true : l1Var instanceof y1) {
                z9.a.IO.b(new ya.w(l1Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class u0 extends b<Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f18956m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f18957n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final v9.a f18958o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18960q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18961h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ u0 f18962i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, u0 u0Var) {
                super(0);
                this.f18961h = dVar;
                this.f18962i = u0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18961h.A.Q(this.f18962i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u0(v9.a aVar) {
            super();
            this.f18960q = aVar;
            this.f18956m = new a(d.this, this);
            this.f18957n = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tstopAutoAdaptSession");
            this.f18958o = aVar;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18958o;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18956m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18957n;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            t1 t1Var = new t1(th, d.this.f18763f, this.f18960q);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(t1Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, t1Var));
            }
            if ((dVar.A instanceof za.a) || !t1Var.f16837p.b()) {
                return;
            }
            if (t1Var instanceof m4 ? true : t1Var instanceof z1 ? true : t1Var instanceof u4 ? true : t1Var instanceof d4 ? true : t1Var instanceof x3 ? true : t1Var instanceof u3 ? true : t1Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, t1Var));
            }
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            int i11 = 0;
            if (!((Boolean) obj).booleanValue()) {
                d dVar = d.this;
                ?? r10 = dVar.f18773p;
                t1 t1Var = new t1(new Exception(), d.this.f18763f, this.f18960q);
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.a(new eb.b(t1Var));
                Object[] array = r10.toArray(new v9.p0[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                v9.p0[] p0VarArr = (v9.p0[]) array;
                int length = p0VarArr.length;
                while (i11 < length) {
                    z9.a.IO.b(new ya.r(p0VarArr[i11], t1Var));
                    i11++;
                }
                if ((dVar.A instanceof za.a) || !t1Var.f16837p.b()) {
                    return;
                }
                if (t1Var instanceof m4 ? true : t1Var instanceof z1 ? true : t1Var instanceof u4 ? true : t1Var instanceof d4 ? true : t1Var instanceof x3 ? true : t1Var instanceof u3 ? true : t1Var instanceof w1) {
                    z9.a.IO.b(new ya.t(dVar, t1Var));
                    return;
                }
                return;
            }
            d dVar2 = d.this;
            ?? r11 = dVar2.f18773p;
            v1 v1Var = new v1(dVar2.f18763f, this.f18960q);
            if ((v1Var instanceof p2) || (v1Var instanceof a1) || (v1Var instanceof v9.w0) || (v1Var instanceof e1) || (v1Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(v1Var instanceof f6)) {
                    if (!(v1Var instanceof x6) && !(v1Var instanceof m6) && !(v1Var instanceof j6) && !(v1Var instanceof t6) && !(v1Var instanceof q5) && !(v1Var instanceof x5) && !(v1Var instanceof a6) && !(v1Var instanceof t5)) {
                        if (!(v1Var instanceof u5)) {
                            if (!(v1Var instanceof c6)) {
                                if (!(v1Var instanceof q6) && !(v1Var instanceof o5) && !(v1Var instanceof g6) && !(v1Var instanceof p5)) {
                                    if (!(v1Var instanceof c1) && !(v1Var instanceof t4) && !(v1Var instanceof l4) && !(v1Var instanceof y1) && !(v1Var instanceof c4) && !(v1Var instanceof y4) && !(v1Var instanceof w4) && !(v1Var instanceof t3) && !(v1Var instanceof n5) && !(v1Var instanceof e5) && !(v1Var instanceof h5) && !(v1Var instanceof i4) && !(v1Var instanceof q4) && !(v1Var instanceof j5) && !(v1Var instanceof z3) && !(v1Var instanceof f4) && !(v1Var instanceof f2) && !(v1Var instanceof w3) && !(v1Var instanceof n4) && !(v1Var instanceof a2) && !(v1Var instanceof g1) && !(v1Var instanceof s2) && !(v1Var instanceof h1) && !(v1Var instanceof d3) && !(v1Var instanceof a3) && !(v1Var instanceof k5) && !(v1Var instanceof k2)) {
                                        boolean z10 = v1Var instanceof s1;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(v1Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar3 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar2.f18770m;
            if (p0Var != null) {
                p0Var.a(v1Var);
            }
            Object[] array2 = r11.toArray(new v9.p0[0]);
            p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            v9.p0[] p0VarArr2 = (v9.p0[]) array2;
            int length2 = p0VarArr2.length;
            while (i11 < length2) {
                z9.a.IO.b(new ya.u(p0VarArr2[i11], v1Var));
                i11++;
            }
            if ((dVar2.A instanceof za.a) || v1Var.f16875m.b()) {
                return;
            }
            if (v1Var instanceof n4 ? true : v1Var instanceof a2 ? true : v1Var instanceof f2 ? true : v1Var instanceof w4 ? true : v1Var instanceof f4 ? true : v1Var instanceof z3 ? true : v1Var instanceof w3 ? true : v1Var instanceof y1) {
                z9.a.IO.b(new ya.w(v1Var, dVar2));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class v extends b<mc.b> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f18963m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f18964n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final v9.a f18965o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18967q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18968h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ v f18969i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, v vVar) {
                super(0);
                this.f18968h = dVar;
                this.f18969i = vVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18968h.A.J(this.f18969i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(v9.a aVar) {
            super();
            this.f18967q = aVar;
            this.f18963m = new a(d.this, this);
            this.f18964n = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetAutoAdaptSessionState");
            this.f18965o = aVar;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18965o;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18963m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18964n;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            m1 m1Var = new m1(th, d.this.f18763f, this.f18967q);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(m1Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, m1Var));
            }
            if ((dVar.A instanceof za.a) || !m1Var.f16711p.b()) {
                return;
            }
            if (m1Var instanceof m4 ? true : m1Var instanceof z1 ? true : m1Var instanceof u4 ? true : m1Var instanceof d4 ? true : m1Var instanceof x3 ? true : m1Var instanceof u3 ? true : m1Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, m1Var));
            }
        }

        /* JADX WARN: Code duplicated, block: B:68:0x009a  */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            mc.b bVar = (mc.b) obj;
            p4.h.j(bVar, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            int iOrdinal = bVar.ordinal();
            int i11 = 2;
            if (iOrdinal == 0) {
                i10 = 2;
            } else {
                if (iOrdinal != 1) {
                    throw new j2.a();
                }
                i10 = 1;
            }
            p1 p1Var = new p1(i10, d.this.f18763f, this.f18967q);
            if (!(p1Var instanceof p2) && !(p1Var instanceof a1) && !(p1Var instanceof v9.w0) && !(p1Var instanceof e1) && !(p1Var instanceof p6)) {
                if (p1Var instanceof f6) {
                    i11 = 1;
                } else if (!(p1Var instanceof x6) && !(p1Var instanceof m6) && !(p1Var instanceof j6) && !(p1Var instanceof t6) && !(p1Var instanceof q5) && !(p1Var instanceof x5) && !(p1Var instanceof a6) && !(p1Var instanceof t5)) {
                    if (p1Var instanceof u5) {
                        i11 = 1;
                    } else if (!(p1Var instanceof c6)) {
                        if ((p1Var instanceof q6) || (p1Var instanceof o5) || (p1Var instanceof g6) || (p1Var instanceof p5)) {
                            i11 = 1;
                        } else if (!(p1Var instanceof c1) && !(p1Var instanceof t4) && !(p1Var instanceof l4) && !(p1Var instanceof y1) && !(p1Var instanceof c4) && !(p1Var instanceof y4) && !(p1Var instanceof w4) && !(p1Var instanceof t3) && !(p1Var instanceof n5) && !(p1Var instanceof e5) && !(p1Var instanceof h5) && !(p1Var instanceof i4) && !(p1Var instanceof q4) && !(p1Var instanceof j5) && !(p1Var instanceof z3) && !(p1Var instanceof f4) && !(p1Var instanceof f2) && !(p1Var instanceof w3) && !(p1Var instanceof n4) && !(p1Var instanceof a2) && !(p1Var instanceof g1) && !(p1Var instanceof s2) && !(p1Var instanceof h1) && !(p1Var instanceof d3) && !(p1Var instanceof a3) && !(p1Var instanceof k5) && !(p1Var instanceof k2) && !(p1Var instanceof s1)) {
                            boolean z10 = p1Var instanceof v1;
                        }
                    }
                }
            }
            eb.c cVar = new eb.c(p1Var);
            int iA = q.g.a(i11);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(p1Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, p1Var));
            }
            if ((dVar.A instanceof za.a) || p1Var.f16759n.b()) {
                return;
            }
            if (p1Var instanceof n4 ? true : p1Var instanceof a2 ? true : p1Var instanceof f2 ? true : p1Var instanceof w4 ? true : p1Var instanceof f4 ? true : p1Var instanceof z3 ? true : p1Var instanceof w3 ? true : p1Var instanceof y1) {
                z9.a.IO.b(new ya.w(p1Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class v0 extends b<Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18970m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18971n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18972o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18974q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18975h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ v0 f18976i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, v0 v0Var) {
                super(0);
                this.f18975h = dVar;
                this.f18976i = v0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18975h.A.i(this.f18976i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v0(v9.a aVar) {
            super();
            this.f18974q = aVar;
            this.f18970m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tlaceTighten");
            this.f18971n = aVar;
            this.f18972o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18971n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18972o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18970m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            r4 r4Var = new r4(d.this.f18763f, this.f18974q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(r4Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, r4Var));
            }
            if ((dVar.A instanceof za.a) || !r4Var.f16800o.b()) {
                return;
            }
            if (r4Var instanceof m4 ? true : r4Var instanceof z1 ? true : r4Var instanceof u4 ? true : r4Var instanceof d4 ? true : r4Var instanceof x3 ? true : r4Var instanceof u3 ? true : r4Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, r4Var));
            }
        }

        @Override // ya.h0
        public final void w(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            d dVar = d.this;
            d.e0(dVar, zBooleanValue, new t4(dVar.f18763f, this.f18974q), new r4(d.this.f18763f, this.f18974q, new y9.a(this.f18974q, this.f18970m)));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class w extends b<mc.e0> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18977m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18978n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18979o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18981q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18982h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ w f18983i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, w wVar) {
                super(0);
                this.f18982h = dVar;
                this.f18983i = wVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18982h.A.h(this.f18983i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(v9.a aVar) {
            super();
            this.f18981q = aVar;
            this.f18977m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tcolorCurrent");
            this.f18978n = aVar;
            this.f18979o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18978n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18979o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18977m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            u3 u3Var = new u3(d.this.f18763f, this.f18981q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(u3Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, u3Var));
            }
            if ((dVar.A instanceof za.a) || !u3Var.f16857o.b()) {
                return;
            }
            if (!(u3Var instanceof m4 ? true : u3Var instanceof z1 ? true : u3Var instanceof u4 ? true : u3Var instanceof d4)) {
                boolean z10 = u3Var instanceof x3;
            }
            z9.a.IO.b(new ya.t(dVar, u3Var));
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            int i11;
            mc.e0 e0Var = (mc.e0) obj;
            p4.h.j(e0Var, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            String str = dVar.f18763f;
            v9.a aVar = this.f18981q;
            int i12 = e0Var.f11007a;
            int i13 = e0Var.f11008b;
            int i14 = e0Var.f11009c;
            int i15 = e0Var.f11010d;
            int[] iArrB = q.g.b(5);
            int length = iArrB.length;
            int i16 = 0;
            while (true) {
                if (i16 >= length) {
                    i10 = 0;
                    break;
                }
                i10 = iArrB[i16];
                if (q.g.a(i10) == i15) {
                    break;
                } else {
                    i16++;
                }
            }
            w3 w3Var = new w3(str, aVar, new ea.d(i12, i13, i14, i10 == 0 ? 5 : i10));
            if ((w3Var instanceof p2) || (w3Var instanceof a1) || (w3Var instanceof v9.w0) || (w3Var instanceof e1) || (w3Var instanceof p6)) {
                i11 = 2;
            } else {
                if (!(w3Var instanceof f6)) {
                    if (!(w3Var instanceof x6) && !(w3Var instanceof m6) && !(w3Var instanceof j6) && !(w3Var instanceof t6) && !(w3Var instanceof q5) && !(w3Var instanceof x5) && !(w3Var instanceof a6) && !(w3Var instanceof t5)) {
                        if (!(w3Var instanceof u5)) {
                            if (!(w3Var instanceof c6)) {
                                if (!(w3Var instanceof q6) && !(w3Var instanceof o5) && !(w3Var instanceof g6) && !(w3Var instanceof p5)) {
                                    if (!(w3Var instanceof c1) && !(w3Var instanceof t4) && !(w3Var instanceof l4) && !(w3Var instanceof y1) && !(w3Var instanceof c4) && !(w3Var instanceof y4) && !(w3Var instanceof w4) && !(w3Var instanceof t3) && !(w3Var instanceof n5) && !(w3Var instanceof e5) && !(w3Var instanceof h5) && !(w3Var instanceof i4) && !(w3Var instanceof q4) && !(w3Var instanceof j5) && !(w3Var instanceof z3) && !(w3Var instanceof f4)) {
                                        boolean z10 = w3Var instanceof f2;
                                    }
                                }
                            }
                        }
                    }
                    i11 = 2;
                }
                i11 = 1;
            }
            eb.c cVar = new eb.c(w3Var);
            int iA = q.g.a(i11);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(w3Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, w3Var));
            }
            if ((dVar.A instanceof za.a) || w3Var.f16898m.b()) {
                return;
            }
            if (!(w3Var instanceof n4 ? true : w3Var instanceof a2 ? true : w3Var instanceof f2 ? true : w3Var instanceof w4 ? true : w3Var instanceof f4)) {
                boolean z11 = w3Var instanceof z3;
            }
            z9.a.IO.b(new ya.w(w3Var, dVar));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class w0 extends rd.o implements qd.l<Throwable, Boolean> {
        public w0() {
            super(1);
        }

        @Override // qd.l
        public final Boolean invoke(Throwable th) {
            Throwable th2 = th;
            p4.h.j(th2, "it");
            return Boolean.valueOf(d.this.h0(th2));
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class x extends b<List<? extends mc.n>> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f18985m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f18986n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final v9.a f18987o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f18989q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18990h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ x f18991i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, x xVar) {
                super(0);
                this.f18990h = dVar;
                this.f18991i = xVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18990h.A.z(this.f18991i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public x(v9.a aVar) {
            super();
            this.f18989q = aVar;
            this.f18985m = new a(d.this, this);
            this.f18986n = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetGestureConfiguration");
            this.f18987o = aVar;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18987o;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18985m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18986n;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            e3 e3Var = new e3(th, d.this.f18763f, this.f18989q);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(e3Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, e3Var));
            }
            if ((dVar.A instanceof za.a) || !e3Var.f16533p.b()) {
                return;
            }
            if (e3Var instanceof m4 ? true : e3Var instanceof z1 ? true : e3Var instanceof u4 ? true : e3Var instanceof d4 ? true : e3Var instanceof x3 ? true : e3Var instanceof u3 ? true : e3Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, e3Var));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            List list = (List) obj;
            p4.h.j(list, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            ArrayList arrayList = new ArrayList(gd.j.T(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ga.a.f7896j.a((mc.n) it.next()));
            }
            g3 g3Var = new g3(arrayList, d.this.f18763f, this.f18989q);
            if ((g3Var instanceof p2) || (g3Var instanceof a1) || (g3Var instanceof v9.w0) || (g3Var instanceof e1) || (g3Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(g3Var instanceof f6)) {
                    if (!(g3Var instanceof x6) && !(g3Var instanceof m6) && !(g3Var instanceof j6) && !(g3Var instanceof t6) && !(g3Var instanceof q5) && !(g3Var instanceof x5) && !(g3Var instanceof a6) && !(g3Var instanceof t5)) {
                        if (!(g3Var instanceof u5)) {
                            if (!(g3Var instanceof c6)) {
                                if (!(g3Var instanceof q6) && !(g3Var instanceof o5) && !(g3Var instanceof g6) && !(g3Var instanceof p5)) {
                                    if (!(g3Var instanceof c1) && !(g3Var instanceof t4) && !(g3Var instanceof l4) && !(g3Var instanceof y1) && !(g3Var instanceof c4) && !(g3Var instanceof y4) && !(g3Var instanceof w4) && !(g3Var instanceof t3) && !(g3Var instanceof n5) && !(g3Var instanceof e5) && !(g3Var instanceof h5) && !(g3Var instanceof i4) && !(g3Var instanceof q4) && !(g3Var instanceof j5) && !(g3Var instanceof z3) && !(g3Var instanceof f4) && !(g3Var instanceof f2) && !(g3Var instanceof w3) && !(g3Var instanceof n4) && !(g3Var instanceof a2) && !(g3Var instanceof g1) && !(g3Var instanceof s2) && !(g3Var instanceof h1) && !(g3Var instanceof d3) && !(g3Var instanceof a3) && !(g3Var instanceof k5) && !(g3Var instanceof k2) && !(g3Var instanceof s1) && !(g3Var instanceof v1) && !(g3Var instanceof p1) && !(g3Var instanceof n1) && !(g3Var instanceof l1)) {
                                        boolean z10 = g3Var instanceof j1;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(g3Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(g3Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, g3Var));
            }
            if ((dVar.A instanceof za.a) || g3Var.f16568n.b()) {
                return;
            }
            if (g3Var instanceof n4 ? true : g3Var instanceof a2 ? true : g3Var instanceof f2 ? true : g3Var instanceof w4 ? true : g3Var instanceof f4 ? true : g3Var instanceof z3 ? true : g3Var instanceof w3 ? true : g3Var instanceof y1) {
                z9.a.IO.b(new ya.w(g3Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class x0 extends b<Boolean> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18992m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f18993n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f18994o;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f18996h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ x0 f18997i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, x0 x0Var) {
                super(0);
                this.f18996h = dVar;
                this.f18997i = x0Var;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f18996h.A.E(this.f18997i);
                return fd.o.f7408a;
            }
        }

        public x0(v9.a aVar) {
            super();
            this.f18992m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tfirmwareUpdateFlash");
            this.f18993n = aVar;
            this.f18994o = new a(d.this, this);
        }

        @Override // ya.d.b, ya.h0
        public final boolean m(Throwable th) {
            p4.h.j(th, "throwable");
            if (!(th instanceof v9.t.a) && !(th instanceof e)) {
                return false;
            }
            d dVar = d.this;
            dVar.m0(fa.c.a(dVar.f18771n, null, null, fa.k.n.f7216h, 3));
            return true;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f18993n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18994o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18992m;
        }

        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            fa.c cVar = dVar.f18771n;
            String message = th.getMessage();
            if (message == null) {
                message = "Error occurred during firmware update";
            }
            dVar.m0(fa.c.a(cVar, null, null, new fa.k.x(message), 3));
        }

        @Override // ya.h0
        public final void w(Object obj) {
            ((Boolean) obj).booleanValue();
            d dVar = d.this;
            dVar.m0(fa.c.a(dVar.f18771n, null, null, fa.k.n.f7216h, 3));
            d dVar2 = d.this;
            da.a aVar = da.a.IDLE;
            Objects.requireNonNull(dVar2);
            dVar2.f18777t = aVar;
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class y extends b<mc.q> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f18998m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f18999n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final v9.a f19000o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f19002q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f19003h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ y f19004i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, y yVar) {
                super(0);
                this.f19003h = dVar;
                this.f19004i = yVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f19003h.A.D(this.f19004i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y(v9.a aVar) {
            super();
            this.f19002q = aVar;
            this.f18998m = new a(d.this, this);
            this.f18999n = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetGestureStatistics");
            this.f19000o = aVar;
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f19000o;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f18998m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f18999n;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            l3 l3Var = new l3(th, d.this.f18763f, this.f19002q);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(l3Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, l3Var));
            }
            if ((dVar.A instanceof za.a) || !l3Var.f16702p.b()) {
                return;
            }
            if (l3Var instanceof m4 ? true : l3Var instanceof z1 ? true : l3Var instanceof u4 ? true : l3Var instanceof d4 ? true : l3Var instanceof x3 ? true : l3Var instanceof u3 ? true : l3Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, l3Var));
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            mc.q qVar = (mc.q) obj;
            p4.h.j(qVar, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            n3 n3Var = new n3(new ga.d(qVar.f11086i, qVar.f11085h), dVar.f18763f, this.f19002q);
            if ((n3Var instanceof p2) || (n3Var instanceof a1) || (n3Var instanceof v9.w0) || (n3Var instanceof e1) || (n3Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(n3Var instanceof f6)) {
                    if (!(n3Var instanceof x6) && !(n3Var instanceof m6) && !(n3Var instanceof j6) && !(n3Var instanceof t6) && !(n3Var instanceof q5) && !(n3Var instanceof x5) && !(n3Var instanceof a6) && !(n3Var instanceof t5)) {
                        if (!(n3Var instanceof u5)) {
                            if (!(n3Var instanceof c6)) {
                                if (!(n3Var instanceof q6) && !(n3Var instanceof o5) && !(n3Var instanceof g6) && !(n3Var instanceof p5)) {
                                    if (!(n3Var instanceof c1) && !(n3Var instanceof t4) && !(n3Var instanceof l4) && !(n3Var instanceof y1) && !(n3Var instanceof c4) && !(n3Var instanceof y4) && !(n3Var instanceof w4) && !(n3Var instanceof t3) && !(n3Var instanceof n5) && !(n3Var instanceof e5) && !(n3Var instanceof h5) && !(n3Var instanceof i4) && !(n3Var instanceof q4) && !(n3Var instanceof j5) && !(n3Var instanceof z3) && !(n3Var instanceof f4) && !(n3Var instanceof f2) && !(n3Var instanceof w3) && !(n3Var instanceof n4) && !(n3Var instanceof a2) && !(n3Var instanceof g1) && !(n3Var instanceof s2) && !(n3Var instanceof h1) && !(n3Var instanceof d3) && !(n3Var instanceof a3) && !(n3Var instanceof k5) && !(n3Var instanceof k2) && !(n3Var instanceof s1) && !(n3Var instanceof v1) && !(n3Var instanceof p1) && !(n3Var instanceof n1) && !(n3Var instanceof l1) && !(n3Var instanceof j1) && !(n3Var instanceof g3)) {
                                        boolean z10 = n3Var instanceof j3;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(n3Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(n3Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, n3Var));
            }
            if ((dVar.A instanceof za.a) || n3Var.f16732n.b()) {
                return;
            }
            if (n3Var instanceof n4 ? true : n3Var instanceof a2 ? true : n3Var instanceof f2 ? true : n3Var instanceof w4 ? true : n3Var instanceof f4 ? true : n3Var instanceof z3 ? true : n3Var instanceof w3 ? true : n3Var instanceof y1) {
                z9.a.IO.b(new ya.w(n3Var, dVar));
            }
        }
    }

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class z extends b<mc.f> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f19005m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f19006n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final qd.a<fd.o> f19007o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ v9.a f19009q;

        /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
        public static final class a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f19010h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ z f19011i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, z zVar) {
                super(0);
                this.f19010h = dVar;
                this.f19011i = zVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f19010h.A.j(this.f19011i);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public z(v9.a aVar) {
            super();
            this.f19009q = aVar;
            this.f19005m = androidx.recyclerview.widget.d.c(d.this.f18763f, "\tgetLaceEngineStats");
            this.f19006n = aVar;
            this.f19007o = new a(d.this, this);
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f19006n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f19007o;
        }

        @Override // ya.h0
        public final String p() {
            return this.f19005m;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            a4 a4Var = new a4(d.this.f18763f, this.f19009q, th);
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(a4Var));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var : (v9.p0[]) array) {
                z9.a.IO.b(new ya.r(p0Var, a4Var));
            }
            if ((dVar.A instanceof za.a) || !a4Var.f16457o.b()) {
                return;
            }
            if (a4Var instanceof m4 ? true : a4Var instanceof z1 ? true : a4Var instanceof u4 ? true : a4Var instanceof d4 ? true : a4Var instanceof x3 ? true : a4Var instanceof u3 ? true : a4Var instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, a4Var));
            }
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
        @Override // ya.h0
        public final void w(Object obj) {
            int i10;
            mc.f fVar = (mc.f) obj;
            p4.h.j(fVar, "result");
            d dVar = d.this;
            ?? r10 = dVar.f18773p;
            String str = dVar.f18763f;
            v9.a aVar = this.f19009q;
            mc.d dVar2 = fVar.f11011h;
            ba.m mVar = new ba.m(dVar2.f10986h, dVar2.f10987i, dVar2.f10988j, dVar2.f10989k, dVar2.f10990l, dVar2.f10991m, dVar2.f10992n, dVar2.f10993o, dVar2.f10994p);
            mc.g gVar = fVar.f11012i;
            ba.n nVar = new ba.n(gVar.f11022h, gVar.f11023i);
            mc.i iVar = fVar.f11013j;
            ba.r rVar = new ba.r(iVar.f11031h, iVar.f11032i, iVar.f11033j, iVar.f11034k, iVar.f11035l, iVar.f11036m, iVar.f11037n, iVar.f11038o, iVar.f11039p);
            mc.u uVar = fVar.f11014k;
            ba.i0 i0Var = new ba.i0(uVar.f11089h, uVar.f11090i, uVar.f11091j, uVar.f11092k, uVar.f11093l, uVar.f11094m, uVar.f11095n, uVar.f11096o, uVar.f11097p);
            mc.f0 f0Var = fVar.f11015l;
            ba.k0 k0Var = new ba.k0(f0Var.f11018h, f0Var.f11019i, f0Var.f11020j, f0Var.f11021k);
            mc.i0 i0Var2 = fVar.f11016m;
            ba.o0 o0Var = new ba.o0(i0Var2.f11040h, i0Var2.f11041i, i0Var2.f11042j, i0Var2.f11043k);
            mc.q qVar = fVar.f11017n;
            c4 c4Var = new c4(str, aVar, new ba.i(mVar, nVar, rVar, i0Var, k0Var, o0Var, new ba.w(qVar.f11085h, qVar.f11086i)));
            if ((c4Var instanceof p2) || (c4Var instanceof a1) || (c4Var instanceof v9.w0) || (c4Var instanceof e1) || (c4Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(c4Var instanceof f6)) {
                    if (!(c4Var instanceof x6) && !(c4Var instanceof m6) && !(c4Var instanceof j6) && !(c4Var instanceof t6) && !(c4Var instanceof q5) && !(c4Var instanceof x5) && !(c4Var instanceof a6) && !(c4Var instanceof t5)) {
                        if (!(c4Var instanceof u5)) {
                            if (!(c4Var instanceof c6)) {
                                if (!(c4Var instanceof q6) && !(c4Var instanceof o5) && !(c4Var instanceof g6) && !(c4Var instanceof p5)) {
                                    if (!(c4Var instanceof c1) && !(c4Var instanceof t4) && !(c4Var instanceof l4)) {
                                        boolean z10 = c4Var instanceof y1;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(c4Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
            if (p0Var != null) {
                p0Var.a(c4Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, c4Var));
            }
            if ((dVar.A instanceof za.a) || c4Var.f16494m.b()) {
                return;
            }
            if (c4Var instanceof n4 ? true : c4Var instanceof a2 ? true : c4Var instanceof f2 ? true : c4Var instanceof w4 ? true : c4Var instanceof f4 ? true : c4Var instanceof z3 ? true : c4Var instanceof w3 ? true : c4Var instanceof y1) {
                z9.a.IO.b(new ya.w(c4Var, dVar));
            }
        }
    }

    public d(String str, ea.b bVar) {
        p4.h.j(str, "pairId");
        p4.h.j(bVar, "adaptKitDevice");
        this.f18758a = str;
        this.f18759b = bVar;
        this.f18762e = new fb.c("1.1.0");
        String str2 = this.f18759b.f6612j;
        this.f18763f = str2;
        this.f18766i = fb.a.C0140a.f7248a.a();
        fb.c cVar = this.f18762e;
        fb.c.a aVar = fb.c.f7253i;
        this.f18771n = new fa.c(cVar, new fa.n.c(fb.c.f7254j), fa.k.r.f7221h);
        this.f18772o = xa.b.f18116a;
        this.f18773p = new CopyOnWriteArrayList();
        this.f18774q = new Object();
        this.f18775r = new PriorityBlockingQueue<>(20, j5.e.f9303j);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        p4.h.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
        this.f18776s = executorServiceNewSingleThreadExecutor;
        this.f18777t = da.a.NONE;
        this.f18778u = new wa.c(str2, new k0());
        p0();
        this.f18782y = new m0();
        this.f18783z = (fd.h) androidx.lifecycle.o.x(new l());
        this.A = new hc.l(str2);
        this.B = androidx.lifecycle.o.w(1, new s0());
        this.C = new k();
        this.D = new w0();
    }

    public static final void Y(d dVar, ya.h0 h0Var) {
        String strP;
        Objects.requireNonNull(dVar);
        v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", a0.d.c("added ", h0Var.t(), " to queue"), null, 4, null);
        f8.b bVarA = dVar.k0().a(dVar.f18763f);
        Objects.requireNonNull(bVarA);
        boolean z10 = true;
        if ((bVarA instanceof ic.u) || (bVarA instanceof ic.b)) {
            try {
                if (yd.s.i0(h0Var.p(), "createAnimation")) {
                    ya.h0<?> h0Var2 = dVar.f18780w;
                    if (h0Var2 == null || (strP = h0Var2.p()) == null || !yd.s.i0(strP, "createAnimation")) {
                        z10 = false;
                    }
                    if (z10) {
                        hc.a aVar = dVar.f18760c;
                        if (aVar != null) {
                            aVar.a();
                        }
                        dVar.f18760c = null;
                    }
                    dVar.f18775r.removeIf(new Predicate() { // from class: ya.c
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return yd.s.i0(((h0) obj).p(), "createAnimation");
                        }
                    });
                }
                dVar.f18775r.add(h0Var);
                v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", "queue size:" + dVar.f18775r.size() + ", " + gd.n.d0(dVar.f18775r, null, "items: [", "]", ya.l.f19055h, 25), null, 4, null);
            } catch (Throwable th) {
                fb.e eVarJ = d3.e.j();
                String strValueOf = String.valueOf(th.getMessage());
                new z6(dVar.f18763f, h0Var.n(), th);
                eVarJ.b("QUEUE_BIGFOOT", strValueOf);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    public static final void e0(d dVar, boolean z10, v9.g gVar, v9.f fVar) {
        int i10;
        int i11 = 0;
        if (!z10) {
            ?? r10 = dVar.f18773p;
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(fVar));
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            v9.p0[] p0VarArr = (v9.p0[]) array;
            int length = p0VarArr.length;
            while (i11 < length) {
                z9.a.IO.b(new ya.r(p0VarArr[i11], fVar));
                i11++;
            }
            if ((dVar.A instanceof za.a) || !fVar.a().b()) {
                return;
            }
            if (fVar instanceof m4 ? true : fVar instanceof z1 ? true : fVar instanceof u4 ? true : fVar instanceof d4 ? true : fVar instanceof x3 ? true : fVar instanceof u3 ? true : fVar instanceof w1) {
                z9.a.IO.b(new ya.t(dVar, fVar));
                return;
            }
            return;
        }
        ?? r11 = dVar.f18773p;
        if ((gVar instanceof p2) || (gVar instanceof a1) || (gVar instanceof v9.w0) || (gVar instanceof e1) || (gVar instanceof p6)) {
            i10 = 2;
        } else {
            if (!(gVar instanceof f6)) {
                if (!(gVar instanceof x6) && !(gVar instanceof m6) && !(gVar instanceof j6) && !(gVar instanceof t6) && !(gVar instanceof q5) && !(gVar instanceof x5) && !(gVar instanceof a6) && !(gVar instanceof t5)) {
                    if (!(gVar instanceof u5)) {
                        if (!(gVar instanceof c6)) {
                            if (!(gVar instanceof q6) && !(gVar instanceof o5) && !(gVar instanceof g6) && !(gVar instanceof p5)) {
                                if (!(gVar instanceof c1) && !(gVar instanceof t4) && !(gVar instanceof l4) && !(gVar instanceof y1) && !(gVar instanceof c4) && !(gVar instanceof y4) && !(gVar instanceof w4) && !(gVar instanceof t3) && !(gVar instanceof n5) && !(gVar instanceof e5) && !(gVar instanceof h5) && !(gVar instanceof i4) && !(gVar instanceof q4) && !(gVar instanceof j5) && !(gVar instanceof z3) && !(gVar instanceof f4) && !(gVar instanceof f2) && !(gVar instanceof w3) && !(gVar instanceof n4) && !(gVar instanceof a2) && !(gVar instanceof g1) && !(gVar instanceof s2) && !(gVar instanceof h1) && !(gVar instanceof d3) && !(gVar instanceof a3) && !(gVar instanceof k5) && !(gVar instanceof k2) && !(gVar instanceof s1) && !(gVar instanceof v1) && !(gVar instanceof p1) && !(gVar instanceof n1) && !(gVar instanceof l1) && !(gVar instanceof j1) && !(gVar instanceof g3) && !(gVar instanceof j3) && !(gVar instanceof n3) && !(gVar instanceof q3) && !(gVar instanceof k3)) {
                                    if (!(gVar instanceof u2) && !(gVar instanceof y6)) {
                                        throw new j2.a();
                                    }
                                }
                            }
                        }
                    }
                }
                i10 = 2;
            }
            i10 = 1;
        }
        eb.c cVar = new eb.c(gVar);
        int iA = q.g.a(i10);
        if (iA == 0) {
            v9.t tVar2 = v9.t.f16822a;
            v9.t.f16830i.c(cVar);
        } else if (iA == 1) {
            v9.t tVar3 = v9.t.f16822a;
            v9.t.f16830i.a(cVar);
        }
        v9.p0<v9.g, v9.f> p0Var = dVar.f18770m;
        if (p0Var != null) {
            p0Var.a(gVar);
        }
        Object[] array2 = r11.toArray(new v9.p0[0]);
        p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        v9.p0[] p0VarArr2 = (v9.p0[]) array2;
        int length2 = p0VarArr2.length;
        while (i11 < length2) {
            z9.a.IO.b(new ya.u(p0VarArr2[i11], gVar));
            i11++;
        }
        if ((dVar.A instanceof za.a) || gVar.a().b()) {
            return;
        }
        if (gVar instanceof n4 ? true : gVar instanceof a2 ? true : gVar instanceof f2 ? true : gVar instanceof w4 ? true : gVar instanceof f4 ? true : gVar instanceof z3 ? true : gVar instanceof w3 ? true : gVar instanceof y1) {
            z9.a.IO.b(new ya.w(gVar, dVar));
        }
    }

    @Override // ya.b
    public final void A(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new n(aVar), this));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.b
    public final void B(v9.p0<v9.g, v9.f> p0Var) {
        p4.h.j(p0Var, "adaptKitResultListener");
        synchronized (this.f18774q) {
            boolean zAdd = this.f18773p.add(p0Var);
            v9.d.a.a(d3.e.j(), null, "Adding listener " + p0Var + " success: " + zAdd, null, 5, null);
        }
    }

    @Override // ya.b
    public final void C(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new v(aVar), this));
    }

    @Override // ya.b
    public final void D(v9.p0<v9.g, v9.f> p0Var) {
        this.f18770m = p0Var;
    }

    @Override // ya.b
    public final void E(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(null, "sessionId");
        throw null;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.b
    public final void F() {
        synchronized (this.f18774q) {
            this.f18773p.clear();
        }
    }

    @Override // ya.b
    public final void G(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(null, "sessionId");
        new CompletableFuture();
        System.currentTimeMillis();
        throw null;
    }

    @Override // ya.b
    public final void H(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new w(aVar), this));
    }

    @Override // ya.b
    public final void I(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new u0(aVar), this));
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "1.4.0")
    public final void J(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        fb.c cVar = new fb.c("1.4.0");
        fb.c cVar2 = this.f18762e;
        if (cVar2.compareTo(cVar) >= 0) {
            z9.a.IO.b(new v9.s0(new b0(aVar), this));
            return;
        }
        ?? r10 = this.f18773p;
        c5 c5Var = new c5(this.f18763f, aVar, new IllegalStateException("Could not invoke getProductInformation currentFirmwareVersion " + cVar2.f7257h + " is less than the required " + cVar.f7257h));
        v9.t tVar = v9.t.f16822a;
        v9.t.f16830i.a(new eb.b(c5Var));
        Object[] array = r10.toArray(new v9.p0[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        for (v9.p0 p0Var : (v9.p0[]) array) {
            z9.a.IO.b(new ya.r(p0Var, c5Var));
        }
        if ((this.A instanceof za.a) || !c5Var.f16497o.b()) {
            return;
        }
        if (c5Var instanceof m4 ? true : c5Var instanceof z1 ? true : c5Var instanceof u4 ? true : c5Var instanceof d4 ? true : c5Var instanceof x3 ? true : c5Var instanceof u3 ? true : c5Var instanceof w1) {
            z9.a.IO.b(new ya.t(this, c5Var));
        }
    }

    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "2.1.7")
    public final void K(v9.a aVar, ba.h hVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(hVar, "animation");
        z9.a.IO.b(new v9.s0(new ya.j(this, aVar, hVar), this));
    }

    @Override // ya.b
    public final fa.c L() {
        return fa.c.a(this.f18771n, null, null, null, 7);
    }

    @Override // ya.b
    public final void M(fa.k kVar, fa.n nVar, boolean z10) {
        p4.h.j(kVar, "state");
        p4.h.j(nVar, "version");
        fa.c cVarA = fa.c.a(this.f18771n, null, nVar, kVar, 1);
        if (z10) {
            m0(cVarA);
        } else {
            this.f18771n = cVarA;
        }
    }

    @Override // ya.b
    public final void N(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new y(aVar), this));
    }

    @Override // ya.b
    public final void O(v9.a aVar, ea.h.a aVar2) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(aVar2, "absolute");
        l0(aVar, aVar2, new g0(aVar), new h0(aVar));
    }

    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "1.5.0")
    public final void P(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new t0(aVar), this));
    }

    @Override // ya.b
    public final la.c Q() {
        la.c cVar = this.f18769l;
        if (cVar != null) {
            return la.c.a(cVar, 0, 63);
        }
        return null;
    }

    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "2.0.0")
    public final void R(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new ya.o(this, aVar, new e0(), new d0()), this));
    }

    @Override // ya.b
    public final void S(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new u(aVar), this));
    }

    @Override // ya.b
    public final void T(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        this.f18764g = false;
        z9.a.IO.b(new v9.s0(new o(aVar), this));
    }

    @Override // ya.b
    public final void U(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new x(aVar), this));
    }

    @Override // ya.b
    public final void V(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new c0(aVar), this));
    }

    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "2.0.0")
    public final void W(v9.a aVar) {
        p4.h.j(null, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        new CompletableFuture();
        System.currentTimeMillis();
        throw null;
    }

    @Override // ya.b
    public final void X(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(null, "sessionId");
        throw null;
    }

    @Override // ya.b
    public final fb.c a() {
        return new fb.c(this.A.a().f11006h);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // ya.b
    public final Object b(v9.a aVar, fa.g.b bVar, jd.d dVar) throws Throwable {
        ya.b0 b0Var;
        d dVar2;
        if (dVar instanceof ya.b0) {
            b0Var = (ya.b0) dVar;
            int i10 = b0Var.f18746m;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                b0Var.f18746m = i10 - Integer.MIN_VALUE;
            } else {
                b0Var = new ya.b0(this, dVar);
            }
        } else {
            b0Var = new ya.b0(this, dVar);
        }
        Object objN0 = b0Var.f18744k;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = b0Var.f18746m;
        if (i11 == 0) {
            d3.e.p(objN0);
            if (this.f18769l != null) {
                this.f18771n = fa.c.a(this.f18771n, null, null, new fa.k.x("An Active session is detected. Session needs to be stopped"), 3);
                return fd.o.f7408a;
            }
            b0Var.f18741h = this;
            b0Var.f18742i = aVar;
            b0Var.f18743j = bVar;
            b0Var.f18746m = 1;
            objN0 = n0(bVar, b0Var);
            if (objN0 == aVar2) {
                return aVar2;
            }
            dVar2 = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            bVar = b0Var.f18743j;
            aVar = b0Var.f18742i;
            dVar2 = b0Var.f18741h;
            d3.e.p(objN0);
        }
        fa.o oVar = (fa.o) objN0;
        if (oVar.A()) {
            dVar2.m0(fa.c.a(dVar2.f18771n, null, new fa.n.a(dVar2.f18762e), new fa.k.e(oVar.y(), oVar.p(), oVar.o()), 1));
            return fd.o.f7408a;
        }
        dVar2.m0(fa.c.a(dVar2.f18771n, null, null, new fa.k.f(oVar.y(), oVar.p(), oVar.o()), 3));
        z9.a.IO.b(new v9.s0(new ya.c0(dVar2, aVar, bVar), dVar2));
        return fd.o.f7408a;
    }

    @Override // ya.b
    public final void c(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new f(aVar), this));
    }

    @Override // ya.b
    public final void d(v9.a aVar, ea.d dVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(dVar, "adaptKitDeviceColor");
        z9.a.IO.b(new v9.s0(new h(aVar, dVar), this));
    }

    @Override // ya.b
    public final da.d e() {
        return g0();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.b
    public final void f(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f18764g = p4.h.c(v9.a.f16444l, aVar);
        if (!(this.A instanceof za.a)) {
            this.f18781x = false;
            z9.a.IO.b(new p(aVar));
            return;
        }
        ?? r10 = this.f18773p;
        n2 n2Var = new n2(this.f18763f, aVar, new Exception("Detected connection through other application. Disconnect is disabled"));
        v9.t tVar = v9.t.f16822a;
        v9.t.f16830i.a(new eb.b(n2Var));
        Object[] array = r10.toArray(new v9.p0[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        for (v9.p0 p0Var : (v9.p0[]) array) {
            z9.a.IO.b(new ya.r(p0Var, n2Var));
        }
        if ((this.A instanceof za.a) || !n2Var.f16728o.b()) {
            return;
        }
        if (n2Var instanceof m4 ? true : n2Var instanceof z1 ? true : n2Var instanceof u4 ? true : n2Var instanceof d4 ? true : n2Var instanceof x3 ? true : n2Var instanceof u3 ? true : n2Var instanceof w1) {
            z9.a.IO.b(new ya.t(this, n2Var));
        }
    }

    public final fb.r f0(la.b bVar) {
        q0();
        Application applicationD = v9.t.f16822a.d();
        String str = this.f18763f;
        hc.l0 l0Var = this.A;
        m mVar = new m();
        qd.l<Throwable, Boolean> lVar = this.D;
        m0 m0Var = this.f18782y;
        p4.h.j(str, "deviceId");
        p4.h.j(bVar, "sessionId");
        p4.h.j(l0Var, "device");
        p4.h.j(lVar, "onTimeout");
        p4.h.j(m0Var, "progressEmission");
        fb.s sVar = new fb.s(applicationD, str, bVar, l0Var, mVar, lVar, m0Var);
        this.f18768k = sVar;
        return sVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.b
    public final boolean g(v9.p0<v9.g, v9.f> p0Var) {
        boolean z10;
        p4.h.j(p0Var, "adaptKitResultListener");
        synchronized (this.f18774q) {
            Object[] array = this.f18773p.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            z10 = gd.i.t((v9.p0[]) array, p0Var) >= 0;
        }
        return z10;
    }

    public final da.d g0() {
        da.d dVar = da.d.NOT_INITIATED;
        v9.e eVar = this.f18779v;
        if (eVar != null) {
            switch (eVar) {
                case NOT_INITIATED:
                case NOT_CONNECTED:
                    return dVar;
                case CONNECTING:
                    return da.d.CONNECTING;
                case CONNECTED_AND_AUTHENTICATION_FAILURE:
                    return da.d.CONNECTED_AND_AUTHENTICATION_FAILURE;
                case USER_INTERVENTION_REQUIRED:
                    return da.d.USER_INTERVENTION_REQUIRED;
                case CONNECTED_AND_REQUIRES_AUTHENTICATION:
                    return da.d.CONNECTED_AND_REQUIRES_AUTHENTICATION;
                case CONNECTED_AND_AUTHENTICATED:
                    return da.d.CONNECTED_AND_AUTHENTICATED;
                case CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT:
                    return da.d.CONNECTED_AND_AUTHENTICATED_REMOTELY;
                case BOND_DIALOG_PRESENT:
                    return da.d.BONDING_REQUIRED_BY_USER;
                case BONDING_DID_NOT_COMPLETE:
                    return da.d.BONDING_FAILED;
                default:
                    throw new j2.a();
            }
        }
        boolean z10 = true;
        da.d dVarR0 = r0(k0().a(this.f18763f), true);
        switch (dVarR0) {
            case NOT_INITIATED:
            case CONNECTED_AND_AUTHENTICATION_FAILURE:
            case BONDING_FAILED:
            case DISCONNECTED:
            case CLOSED:
            case FORCED_CLOSE_BY_CORE_RF:
            case USER_INTERVENTION_REQUIRED:
            case USER_INTERVENTION_REQUIRED_BLE:
                this.f18760c = null;
                this.f18777t = da.a.NONE;
                break;
            case CONNECTION_STARTING:
            case CONNECTING:
            case CONNECTED_AND_STARTING_AUTHENTICATION_FLOW:
            case CONNECTED_AND_REQUIRES_AUTHENTICATION:
            case CONNECTED_AND_GETTING_INFORMATION:
            case BONDING_REQUIRED_BY_USER:
                this.f18777t = da.a.IDLE;
                break;
        }
        int iOrdinal = dVarR0.ordinal();
        if (iOrdinal != 1 && iOrdinal != 2) {
            z10 = false;
        }
        this.f18781x = z10;
        return dVarR0;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.b
    public final void h(v9.p0<v9.g, v9.f> p0Var) {
        p4.h.j(p0Var, "adaptKitResultListener");
        synchronized (this.f18774q) {
            boolean zRemove = this.f18773p.remove(p0Var);
            v9.d.a.a(d3.e.j(), null, "Removing listener " + p0Var + " success: " + zRemove, null, 5, null);
        }
    }

    public final boolean h0(Throwable th) {
        p4.h.j(th, "error");
        if (th instanceof TimeoutException) {
            z9.a.IO.b(new q());
            return true;
        }
        if (!(th instanceof kc.f)) {
            return false;
        }
        z9.a.IO.b(new r());
        return true;
    }

    @Override // ya.b
    public final void i(fa.k kVar) {
        m0(fa.c.a(this.f18771n, null, null, kVar, 3));
    }

    public final ea.b i0() {
        return this.f18759b;
    }

    @Override // ya.b
    public final void j(v9.a aVar, ea.h.a aVar2) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(aVar2, "absolute");
        int i10 = aVar2.f6646j;
        if (i10 >= 0 && i10 <= 100) {
            z9.a.IO.b(new v9.s0(new p0(aVar, aVar2), this));
        } else {
            Iterator it = gd.n.l0(this.f18773p).iterator();
            while (it.hasNext()) {
                ((v9.p0) it.next()).b(new o4(this.f18763f, aVar, new y9.b(aVar, aVar2)));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    public final boolean j0() {
        Application applicationD = v9.t.f16822a.d();
        List<String> list = aa.a.f549a;
        boolean z10 = true;
        if (aa.a.a()) {
            if (applicationD.checkSelfPermission("android.permission.BLUETOOTH_CONNECT") == 0) {
                if (!(applicationD.checkSelfPermission("android.permission.BLUETOOTH_SCAN") == 0)) {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
        }
        if (z10) {
            return this.f18764g;
        }
        return false;
    }

    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "1.5.0")
    public final void k(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        fb.c cVar = this.f18762e;
        fb.c.a aVar2 = fb.c.f7253i;
        if (cVar.compareTo(fb.c.f7256l) < 0) {
            z9.a.IO.b(new v9.s0(new s(aVar), this));
        } else {
            z9.a.IO.b(new v9.s0(new t(aVar), this));
        }
    }

    public final ic.s k0() {
        return (ic.s) this.B.getValue();
    }

    @Override // ya.b
    public final da.a l() {
        return this.f18777t;
    }

    public final void l0(v9.a aVar, ea.h.a aVar2, qd.l<? super Boolean, fd.o> lVar, qd.l<? super Throwable, fd.o> lVar2) {
        int i10 = aVar2.f6646j;
        if (i10 < 0 || i10 > 100) {
            z9.a.IO.b(new i0(aVar, aVar2));
        } else {
            z9.a.IO.b(new v9.s0(new j0(this, aVar, aVar2, lVar, lVar2), this));
        }
    }

    @Override // ya.b
    public final void m(v9.a aVar, boolean z10) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new n0(aVar, z10), this));
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    public final void m0(fa.c cVar) {
        boolean z10 = !p4.h.c(this.f18771n, cVar);
        this.f18771n = cVar;
        if (!z10 || cVar.f7136j.h() == fa.k.c0.NOT_STARTED) {
            return;
        }
        ?? r10 = this.f18773p;
        u2 u2Var = new u2(cVar, this.f18763f);
        int i10 = ((u2Var instanceof p2) || (u2Var instanceof a1) || (u2Var instanceof v9.w0) || (u2Var instanceof e1) || (u2Var instanceof p6) || (!(u2Var instanceof f6) && ((u2Var instanceof x6) || (u2Var instanceof m6) || (u2Var instanceof j6) || (u2Var instanceof t6) || (u2Var instanceof q5) || (u2Var instanceof x5) || (u2Var instanceof a6) || (u2Var instanceof t5) || (!(u2Var instanceof u5) && ((u2Var instanceof c6) || (!(u2Var instanceof q6) && !(u2Var instanceof o5) && !(u2Var instanceof g6) && !(u2Var instanceof p5) && ((u2Var instanceof c1) || (u2Var instanceof t4) || (u2Var instanceof l4) || (u2Var instanceof y1) || (u2Var instanceof c4) || (u2Var instanceof y4) || (u2Var instanceof w4) || (u2Var instanceof t3) || (u2Var instanceof n5) || (u2Var instanceof e5) || (u2Var instanceof h5) || (u2Var instanceof i4) || (u2Var instanceof q4) || (u2Var instanceof j5) || (u2Var instanceof z3) || (u2Var instanceof f4) || (u2Var instanceof f2) || (u2Var instanceof w3) || (u2Var instanceof n4) || (u2Var instanceof a2) || (u2Var instanceof g1) || (u2Var instanceof s2) || (u2Var instanceof h1) || (u2Var instanceof d3) || (u2Var instanceof a3) || (u2Var instanceof k5) || (u2Var instanceof k2) || (u2Var instanceof s1) || (u2Var instanceof v1) || (u2Var instanceof p1) || (u2Var instanceof n1) || (u2Var instanceof l1) || (u2Var instanceof j1) || (u2Var instanceof g3) || (u2Var instanceof j3) || (u2Var instanceof n3) || (u2Var instanceof q3) || (u2Var instanceof k3)))))))) ? 2 : 1;
        eb.c cVar2 = new eb.c(u2Var);
        int iA = q.g.a(i10);
        if (iA == 0) {
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.c(cVar2);
        } else if (iA == 1) {
            v9.t tVar2 = v9.t.f16822a;
            v9.t.f16830i.a(cVar2);
        }
        v9.p0<v9.g, v9.f> p0Var = this.f18770m;
        if (p0Var != null) {
            p0Var.a(u2Var);
        }
        Object[] array = r10.toArray(new v9.p0[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        for (v9.p0 p0Var2 : (v9.p0[]) array) {
            z9.a.IO.b(new ya.u(p0Var2, u2Var));
        }
        if ((this.A instanceof za.a) || u2Var.f16560k.b()) {
            return;
        }
        if (u2Var instanceof n4 ? true : u2Var instanceof a2 ? true : u2Var instanceof f2 ? true : u2Var instanceof w4 ? true : u2Var instanceof f4 ? true : u2Var instanceof z3 ? true : u2Var instanceof w3 ? true : u2Var instanceof y1) {
            z9.a.IO.b(new ya.w(u2Var, this));
        }
    }

    @Override // ya.b
    public final void n(v9.a aVar, List<? extends ga.a> list) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(list, "gestureConfigurations");
        z9.a.IO.b(new v9.s0(new o0(aVar, list), this));
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x0090  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n0(fa.g.b bVar, jd.d<? super fa.o> dVar) throws Throwable {
        q0 q0Var;
        d dVar2;
        fa.g.b bVar2;
        fa.l.c cVar;
        fa.l.c cVar2;
        Object objO0;
        fa.l.c cVar3;
        fa.l.c cVar4;
        if (dVar instanceof q0) {
            q0Var = (q0) dVar;
            int i10 = q0Var.f18924m;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                q0Var.f18924m = i10 - Integer.MIN_VALUE;
            } else {
                q0Var = new q0(dVar);
            }
        } else {
            q0Var = new q0(dVar);
        }
        Object objO1 = q0Var.f18922k;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = q0Var.f18924m;
        if (i11 != 0) {
            if (i11 == 1) {
                bVar = (fa.g.b) q0Var.f18920i;
                d dVar3 = (d) q0Var.f18919h;
                d3.e.p(objO1);
                dVar2 = dVar3;
            } else if (i11 == 2) {
                cVar = q0Var.f18921j;
                bVar2 = (fa.g.b) q0Var.f18920i;
                dVar2 = (d) q0Var.f18919h;
                d3.e.p(objO1);
                cVar2 = (fa.l.c) objO1;
                q0Var.f18919h = cVar;
                q0Var.f18920i = cVar2;
                q0Var.f18921j = null;
                q0Var.f18924m = 3;
                objO0 = dVar2.o0(3, bVar2, q0Var);
                if (objO0 == aVar) {
                    return aVar;
                }
                cVar3 = cVar;
                cVar4 = cVar2;
                objO1 = objO0;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                cVar4 = (fa.l.c) q0Var.f18920i;
                cVar3 = (fa.l.c) q0Var.f18919h;
                d3.e.p(objO1);
            }
            return new r0(cVar3, cVar4, (fa.l.c) objO1);
        }
        d3.e.p(objO1);
        q0Var.f18919h = this;
        q0Var.f18920i = bVar;
        q0Var.f18924m = 1;
        objO1 = o0(1, bVar, q0Var);
        if (objO1 == aVar) {
            return aVar;
        }
        dVar2 = this;
        fa.l.c cVar5 = (fa.l.c) objO1;
        q0Var.f18919h = dVar2;
        q0Var.f18920i = bVar;
        q0Var.f18921j = cVar5;
        q0Var.f18924m = 2;
        Object objO2 = dVar2.o0(2, bVar, q0Var);
        if (objO2 == aVar) {
            return aVar;
        }
        bVar2 = bVar;
        cVar = cVar5;
        objO1 = objO2;
        cVar2 = (fa.l.c) objO1;
        q0Var.f18919h = cVar;
        q0Var.f18920i = cVar2;
        q0Var.f18921j = null;
        q0Var.f18924m = 3;
        objO0 = dVar2.o0(3, bVar2, q0Var);
        if (objO0 == aVar) {
            return aVar;
        }
        cVar3 = cVar;
        cVar4 = cVar2;
        objO1 = objO0;
        return new r0(cVar3, cVar4, (fa.l.c) objO1);
    }

    @Override // ya.b
    public final void o(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new z(aVar), this));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/Object;Lfa/g$b;Ljd/d<-Lfa/l$c;>;)Ljava/lang/Object; */
    public final Object o0(int i10, fa.g.b bVar, jd.d dVar) throws Throwable {
        ya.x xVar;
        rc.b bVar2;
        Object objA;
        fa.g.b bVar3;
        rc.b bVar4;
        rc.b bVar5 = rc.b.CS_IMAGE_UPDATE;
        rc.b bVar6 = rc.b.BLE_IMAGE_UPDATE;
        rc.b bVar7 = rc.b.MCU_IMAGE_UPDATE;
        if (dVar instanceof ya.x) {
            xVar = (ya.x) dVar;
            int i11 = xVar.f19102l;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                xVar.f19102l = i11 - Integer.MIN_VALUE;
            } else {
                xVar = new ya.x(this, dVar);
            }
        } else {
            xVar = new ya.x(this, dVar);
        }
        Object obj = xVar.f19100j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i12 = xVar.f19102l;
        int i13 = 2;
        boolean z10 = true;
        if (i12 == 0) {
            d3.e.p(obj);
            if (i10 == 0) {
                throw null;
            }
            int i14 = i10 - 1;
            if (i14 == 0) {
                bVar2 = bVar7;
            } else if (i14 == 1) {
                bVar2 = bVar6;
            } else {
                if (i14 != 2) {
                    throw new j2.a();
                }
                bVar2 = bVar5;
            }
            xVar.f19098h = bVar;
            xVar.f19099i = bVar2;
            xVar.f19102l = 1;
            jd.i iVar = new jd.i(androidx.lifecycle.o.t(xVar));
            z9.a.IO.b(new v9.s0(new ya.q(i10, this, iVar), this));
            objA = iVar.a();
            if (objA == aVar) {
                return aVar;
            }
            bVar3 = bVar;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rc.b bVar8 = xVar.f19099i;
            bVar3 = xVar.f19098h;
            d3.e.p(obj);
            bVar2 = bVar8;
            objA = obj;
        }
        mc.k kVar = (mc.k) objA;
        byte[] bArr = bVar3.f7161b;
        HashMap map = new HashMap();
        if (rc.a.b(bArr)) {
            try {
                for (gc.c cVar : gc.a.E(Arrays.copyOfRange(bArr, 4, ((short) (bArr[2] | ((bArr[3] & 255) << 8))) + 4)).C()) {
                    int iA = cVar.F().a();
                    if (iA == 0) {
                        bVar4 = bVar7;
                    } else if (iA == 1) {
                        bVar4 = bVar6;
                    } else {
                        bVar4 = iA == i13 ? bVar5 : rc.b.UNKNOWN;
                    }
                    map.put(bVar4, Integer.valueOf(rc.a.a(bArr, cVar.D(), cVar.E())));
                    i13 = 2;
                }
            } catch (m7.z e10) {
                androidx.lifecycle.o.q().c("InvalidProtocolBufferException", e10, false, "FirmwareArchiveUtil");
            }
        }
        Integer num = (Integer) map.get(bVar2);
        fb.c cVar2 = new fb.c(kVar.f11057a);
        int i15 = kVar.f11060d;
        if (num == null || num.intValue() != i15) {
            return new fa.l.c.a(num != null ? num.intValue() : -1, kVar.f11060d);
        }
        int i16 = kVar.f11058b;
        if (i16 == 0) {
            throw null;
        }
        if (i16 != 5 && i16 != 6) {
            z10 = false;
        }
        if (!z10) {
            return new fa.l.c.d(fa.m.b(i16));
        }
        if (p4.h.c(bVar3.f7160a, cVar2)) {
            return kVar.f11062f == 0 ? fa.l.c.C0138c.f7237h : fa.l.c.f.f7241h;
        }
        return new fa.l.c.e(bVar3.f7160a, cVar2);
    }

    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "2.0.0")
    public final void p(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(null, "sessionId");
        throw null;
    }

    public final void p0() {
        try {
            this.f18776s.execute(new y0.t(this, 6));
        } catch (RejectedExecutionException e10) {
            v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", String.valueOf(e10.getMessage()), null, 4, null);
        }
    }

    @Override // ya.b
    public final void q(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new x0(aVar), this));
    }

    public final void q0() {
        fb.s sVar = this.f18768k;
        if (sVar != null) {
            sVar.j(g0() == da.d.CONNECTED_AND_AUTHENTICATED);
        }
        this.f18768k = null;
    }

    @Override // ya.b
    public final void r(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new v0(aVar), this));
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    public final da.d r0(f8.b bVar, boolean z10) {
        int i10;
        if (bVar instanceof ic.t) {
            return da.d.NOT_INITIATED;
        }
        if (bVar instanceof ic.n) {
            return da.d.CONNECTION_STARTING;
        }
        if (bVar instanceof ic.f) {
            return da.d.CONNECTING;
        }
        if (bVar instanceof ic.e) {
            return da.d.CONNECTED_AND_STARTING_AUTHENTICATION_FLOW;
        }
        if (bVar instanceof ic.c) {
            return da.d.CONNECTED_AND_AUTHENTICATION_FAILURE;
        }
        if (bVar instanceof ic.d) {
            return da.d.CONNECTED_AND_REQUIRES_AUTHENTICATION;
        }
        if (bVar instanceof ic.u) {
            return da.d.CONNECTED_AND_GETTING_INFORMATION;
        }
        if (!(bVar instanceof ic.b)) {
            if (bVar instanceof ic.r) {
                return da.d.DISCONNECTED;
            }
            if (bVar instanceof ic.v) {
                return da.d.USER_INTERVENTION_REQUIRED;
            }
            if (bVar instanceof ic.w) {
                return da.d.USER_INTERVENTION_REQUIRED_BLE;
            }
            if (bVar instanceof ic.x) {
                return da.d.BONDING_REQUIRED_BY_USER;
            }
            if (bVar instanceof ic.a) {
                return da.d.BONDING_FAILED;
            }
            throw new j2.a();
        }
        ic.b bVar2 = (ic.b) bVar;
        if (!p4.h.c(bVar2.f9011d, this.f18759b.f6614l) && !z10) {
            ?? r10 = this.f18773p;
            h1 h1Var = new h1(ea.b.a(this.f18759b, null, bVar2.f9011d, 0, false, 111));
            if ((h1Var instanceof p2) || (h1Var instanceof a1) || (h1Var instanceof v9.w0) || (h1Var instanceof e1) || (h1Var instanceof p6)) {
                i10 = 2;
            } else {
                if (!(h1Var instanceof f6)) {
                    if (!(h1Var instanceof x6) && !(h1Var instanceof m6) && !(h1Var instanceof j6) && !(h1Var instanceof t6) && !(h1Var instanceof q5) && !(h1Var instanceof x5) && !(h1Var instanceof a6) && !(h1Var instanceof t5)) {
                        if (!(h1Var instanceof u5)) {
                            if (!(h1Var instanceof c6)) {
                                if (!(h1Var instanceof q6) && !(h1Var instanceof o5) && !(h1Var instanceof g6) && !(h1Var instanceof p5)) {
                                    if (!(h1Var instanceof c1) && !(h1Var instanceof t4) && !(h1Var instanceof l4) && !(h1Var instanceof y1) && !(h1Var instanceof c4) && !(h1Var instanceof y4) && !(h1Var instanceof w4) && !(h1Var instanceof t3) && !(h1Var instanceof n5) && !(h1Var instanceof e5) && !(h1Var instanceof h5) && !(h1Var instanceof i4) && !(h1Var instanceof q4) && !(h1Var instanceof j5) && !(h1Var instanceof z3) && !(h1Var instanceof f4) && !(h1Var instanceof f2) && !(h1Var instanceof w3) && !(h1Var instanceof n4) && !(h1Var instanceof a2) && !(h1Var instanceof g1)) {
                                        boolean z11 = h1Var instanceof s2;
                                    }
                                }
                            }
                        }
                    }
                    i10 = 2;
                }
                i10 = 1;
            }
            eb.c cVar = new eb.c(h1Var);
            int iA = q.g.a(i10);
            if (iA == 0) {
                v9.t tVar = v9.t.f16822a;
                v9.t.f16830i.c(cVar);
            } else if (iA == 1) {
                v9.t tVar2 = v9.t.f16822a;
                v9.t.f16830i.a(cVar);
            }
            v9.p0<v9.g, v9.f> p0Var = this.f18770m;
            if (p0Var != null) {
                p0Var.a(h1Var);
            }
            Object[] array = r10.toArray(new v9.p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            for (v9.p0 p0Var2 : (v9.p0[]) array) {
                z9.a.IO.b(new ya.u(p0Var2, h1Var));
            }
            if (!(this.A instanceof za.a) && !h1Var.f16560k.b()) {
                if (h1Var instanceof n4 ? true : h1Var instanceof a2 ? true : h1Var instanceof f2 ? true : h1Var instanceof w4 ? true : h1Var instanceof f4 ? true : h1Var instanceof z3 ? true : h1Var instanceof w3 ? true : h1Var instanceof y1) {
                    z9.a.IO.b(new ya.w(h1Var, this));
                }
            }
        }
        this.f18762e = new fb.c(bVar2.f9010c);
        return da.d.CONNECTED_AND_AUTHENTICATED;
    }

    @Override // ya.b
    @SuppressLint({"MissingPermission"})
    public final void s(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        this.f18764g = true;
        String str = this.f18759b.f6613k;
        if (!this.f18766i.a(str)) {
            z9.a.IO.b(new i());
            return;
        }
        try {
            if (!this.f18765h) {
                v9.t tVar = v9.t.f16822a;
                w0.a aVarB = w0.a.b(tVar.d());
                BroadcastReceiver broadcastReceiver = (BroadcastReceiver) this.f18783z.getValue();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(hc.f0.f8480e);
                aVarB.c(broadcastReceiver, intentFilter);
                this.f18778u.d(tVar.d());
                this.f18765h = true;
            }
            this.f18772o.c(v9.t.f16822a.d(), this.f18763f, "com.nike.android.adaptkit.ACTION_ADAPT_KIT_CONNECTION_STATE", xa.a.f18115h, new j(aVar, str));
        } catch (Throwable unused) {
        }
    }

    @Override // ya.b
    public final void t(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new g(aVar), this));
    }

    @Override // ya.b
    @v9.n(minimumFirmwareVersion = "1.5.0")
    public final void u(v9.a aVar, ba.a aVar2) {
        int i10;
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(aVar2, "animation");
        fb.c cVar = this.f18762e;
        fb.c.a aVar3 = fb.c.f7253i;
        if (cVar.compareTo(fb.c.f7256l) < 0) {
            z9.a.IO.b(new v9.s0(new ya.k(this, aVar, aVar2), this));
            return;
        }
        ba.b bVar = new ba.b(new ba.g0(0), new ba.x(0), new ba.o(0));
        List listZ = androidx.lifecycle.o.z(bVar, bVar, bVar);
        ba.b bVar2 = aVar2.f3612l;
        int iRgb = Color.rgb(bVar2.f3614h.f3675h, bVar2.f3615i.f3744h, bVar2.f3616j.f3721h);
        ba.d dVar = aVar2.f3609i;
        ArrayList arrayList = new ArrayList();
        int i11 = (int) (1000.0d / ((double) 24.0f));
        ArgbEvaluator argbEvaluator = new ArgbEvaluator();
        int i12 = dVar.f3624h.f3656h;
        if (i12 > 0) {
            arrayList.add(new ba.c(i12, listZ));
        }
        int i13 = dVar.f3625i.f3738h;
        if (i13 > 0) {
            vd.c cVarR = androidx.activity.k.r(androidx.activity.k.w(0, i13), i11);
            int i14 = cVarR.f17021h;
            int i15 = cVarR.f17022i;
            int i16 = cVarR.f17023j;
            if ((i16 > 0 && i14 <= i15) || (i16 < 0 && i15 <= i14)) {
                while (true) {
                    ba.b bVarF = androidx.appcompat.widget.p.f(argbEvaluator, i14 / dVar.f3625i.f3738h, -16777216, iRgb);
                    arrayList.add(new ba.c(i11, androidx.lifecycle.o.z(bVarF, bVarF, bVarF)));
                    if (i14 == i15) {
                        break;
                    } else {
                        i14 += i16;
                    }
                }
            }
        }
        int i17 = dVar.f3626j.f3646h;
        if (i17 > 0) {
            i10 = 0;
            arrayList.add(new ba.c(i17, androidx.lifecycle.o.z(bVar2, bVar2, bVar2)));
        } else {
            i10 = 0;
        }
        int i18 = dVar.f3627k.f3739h;
        if (i18 > 0) {
            vd.c cVarR2 = androidx.activity.k.r(androidx.activity.k.w(i10, i18), i11);
            int i19 = cVarR2.f17021h;
            int i20 = cVarR2.f17022i;
            int i21 = cVarR2.f17023j;
            if ((i21 > 0 && i19 <= i20) || (i21 < 0 && i20 <= i19)) {
                while (true) {
                    ba.b bVarF2 = androidx.appcompat.widget.p.f(argbEvaluator, i19 / dVar.f3627k.f3739h, iRgb, -16777216);
                    arrayList.add(new ba.c(i11, androidx.lifecycle.o.z(bVarF2, bVarF2, bVarF2)));
                    if (i19 == i20) {
                        break;
                    } else {
                        i19 += i21;
                    }
                }
            }
        }
        int i22 = dVar.f3629m.f3682h;
        if (i22 > 0) {
            arrayList.add(new ba.c(i22, listZ));
        }
        int i23 = dVar.f3628l.f3630h;
        if (i23 > 0) {
            arrayList.add(new ba.c(i23, listZ));
        }
        int i24 = dVar.f3624h.f3656h + dVar.f3625i.f3738h + dVar.f3626j.f3646h + dVar.f3627k.f3739h + dVar.f3629m.f3682h + dVar.f3628l.f3630h;
        z9.a.IO.b(new v9.s0(new ya.j(this, aVar, new ba.h(aVar2.f3611k, i24 <= 0 ? -1 : (aVar2.f3610j.f3737h * 1000) / i24, arrayList, 0, true, true)), this));
    }

    @Override // ya.b
    public final void v(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new f0(aVar), this));
    }

    @Override // ya.b
    public final void w(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(null, "sessionId");
        new CompletableFuture();
        System.currentTimeMillis();
        throw null;
    }

    @Override // ya.b
    public final void x(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new l0(aVar), this));
    }

    @Override // ya.b
    public final void y(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        z9.a.IO.b(new v9.s0(new a0(aVar), this));
    }

    @Override // ya.b
    public final void z(v9.a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(null, "sessionId");
        throw null;
    }
}
