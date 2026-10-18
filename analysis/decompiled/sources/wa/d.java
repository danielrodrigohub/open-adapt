package wa;

import android.content.Intent;
import android.os.Bundle;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import ea.m;
import fd.o;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import v9.e4;
import v9.l;
import v9.r;
import v9.s3;
import v9.t;
import v9.v3;
import v9.v4;
import v9.x1;
import v9.y3;
import w9.u1;

/* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends wa.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f17553h = new d();

    /* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u1 f17554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f17555b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17556c = false;

        public a(u1 u1Var) {
            this.f17554a = u1Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f17554a == aVar.f17554a && this.f17555b == aVar.f17555b && this.f17556c == aVar.f17556c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r0v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public final int hashCode() {
            int iHashCode = this.f17554a.hashCode() * 31;
            boolean z10 = this.f17555b;
            ?? r10 = z10;
            if (z10) {
                r10 = 1;
            }
            int i10 = (iHashCode + r10) * 31;
            boolean z11 = this.f17556c;
            return i10 + (z11 ? 1 : z11);
        }

        public final String toString() {
            return "Request(shoe=" + this.f17554a + ", leftHasResponse=" + this.f17555b + ", rightHasResponse=" + this.f17556c + ")";
        }
    }

    /* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bundle f17557a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final l f17558b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f17559c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final CompletableFuture<o> f17560d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final qd.l<v9.j, o> f17561e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final qd.l<r, o> f17562f;

        /* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ia.a<?, ?, ?> f17563a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final CompletableFuture<o> f17564b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final qd.l<v9.j, o> f17565c = new C0309b();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final qd.l<r, o> f17566d = new C0308a();

            /* JADX INFO: renamed from: wa.d$b$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
            public static final class C0308a extends rd.o implements qd.l<r, o> {
                public C0308a() {
                    super(1);
                }

                @Override // qd.l
                public final o invoke(r rVar) {
                    r rVar2 = rVar;
                    p4.h.j(rVar2, "$this$null");
                    a aVar = a.this;
                    aVar.f17563a.c(d.f17553h.b(), rVar2.f16793j);
                    CompletableFuture<o> completableFuture = aVar.f17564b;
                    o oVar = o.f7408a;
                    completableFuture.complete(oVar);
                    return oVar;
                }
            }

            /* JADX INFO: renamed from: wa.d$b$a$b, reason: collision with other inner class name */
            /* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
            public static final class C0309b extends rd.o implements qd.l<v9.j, o> {
                public C0309b() {
                    super(1);
                }

                @Override // qd.l
                public final o invoke(v9.j jVar) {
                    v9.j jVar2 = jVar;
                    p4.h.j(jVar2, "$this$null");
                    a aVar = a.this;
                    aVar.f17563a.c(d.f17553h.b(), jVar2.f16648k);
                    CompletableFuture<o> completableFuture = aVar.f17564b;
                    o oVar = o.f7408a;
                    completableFuture.complete(oVar);
                    return oVar;
                }
            }

            public a(ia.a<?, ?, ?> aVar, CompletableFuture<o> completableFuture) {
                this.f17563a = aVar;
                this.f17564b = completableFuture;
            }
        }

        public b(Bundle bundle, ia.a<?, ?, ?> aVar, l lVar, a aVar2, CompletableFuture<o> completableFuture) {
            this.f17557a = bundle;
            this.f17558b = lVar;
            this.f17559c = aVar2;
            this.f17560d = completableFuture;
            a aVar3 = new a(aVar, completableFuture);
            this.f17561e = aVar3.f17565c;
            this.f17562f = aVar3.f17566d;
        }
    }

    /* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
    public static final class c extends rd.o implements qd.l<v9.i, o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ia.a<?, ?, ?> f17569h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ b f17570i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ia.a<?, ?, ?> aVar, b bVar) {
            super(1);
            this.f17569h = aVar;
            this.f17570i = bVar;
        }

        @Override // qd.l
        public final o invoke(v9.i iVar) {
            v9.i iVar2 = iVar;
            p4.h.j(iVar2, "$this$deviceControllerListener");
            iVar2.f16598e = new f(this.f17569h, this.f17570i);
            iVar2.f16599f = new h(this.f17569h, this.f17570i);
            return o.f7408a;
        }
    }

    public static final void f(d dVar, b bVar) {
        Objects.requireNonNull(dVar);
        a aVar = bVar.f17559c;
        if (!((aVar.f17554a.b() && aVar.f17555b) || (((Boolean) aVar.f17554a.f17374h.getValue()).booleanValue() && aVar.f17556c)) || bVar.f17560d.isDone()) {
            return;
        }
        bVar.f17560d.complete(o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:? A[LOOP:1: B:33:0x007b->B:101:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    /* JADX WARN: Code duplicated, block: B:30:0x006b  */
    /* JADX WARN: Code duplicated, block: B:31:0x006e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0081  */
    /* JADX WARN: Code duplicated, block: B:40:0x009b A[ADDED_TO_REGION] */
    @Override // wa.a
    public final void c() {
        int i10;
        ia.a<?, ?, ?> aVar;
        ia.a<?, ?, ?> aVar2;
        u1 u1Var;
        u1 u1Var2;
        int i11;
        CompletableFuture completableFuture = new CompletableFuture();
        Intent intent = this.f17541c;
        Object obj = null;
        if (intent == null) {
            p4.h.C("intent");
            throw null;
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("param_remote_package_key");
            int[] iArrB = q.g.b(6);
            int length = iArrB.length;
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    i10 = 0;
                    break;
                }
                i10 = iArrB[i12];
                if (p4.h.c(com.nike.adapt.adk.model.a.a(i10), string)) {
                    break;
                } else {
                    i12++;
                }
            }
            switch (i10 == 0 ? -1 : ia.b.f8981a[q.g.a(i10)]) {
                case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                    aVar = null;
                    if (aVar != null) {
                        if (p4.h.c(extras.getString("param_shoe"), "l")) {
                            u1Var = u1.LEFT;
                        } else {
                            u1Var = u1.RIGHT;
                        }
                        u1Var2 = u1Var;
                        for (Object obj2 : t.f16822a.f()) {
                            if (p4.h.c(((m) obj2).f6664h, extras.getString("param_pair_id"))) {
                                obj = obj2;
                                m mVar = (m) obj;
                                if (u1Var2 != null || mVar == null) {
                                    return;
                                }
                                v9.a.C0295a c0295a = v9.a.f16441i;
                                l lVar = new l(mVar, v9.a.f16446n);
                                b bVar = new b(extras, aVar, lVar, new a(u1Var2), completableFuture);
                                if (aVar instanceof ia.a.d) {
                                    ia.a.d dVar = (ia.a.d) aVar;
                                    Integer numI = dVar.i(extras);
                                    if (numI != null) {
                                        g(lVar, bVar, dVar);
                                        androidx.activity.k.h(lVar, u1Var2, new v4(new ea.h.a(numI.intValue()), bVar.f17561e, bVar.f17562f));
                                    }
                                } else if (aVar instanceof ia.a.f) {
                                    ia.a.f fVar = (ia.a.f) aVar;
                                    oc.d dVarI = fVar.i(extras);
                                    if (dVarI != null) {
                                        g(lVar, bVar, fVar);
                                        int i13 = dVarI.f12552a;
                                        int i14 = dVarI.f12553b;
                                        int i15 = dVarI.f12554c;
                                        int iA = q.g.a(dVarI.f12555d);
                                        int[] iArrB2 = q.g.b(5);
                                        int length2 = iArrB2.length;
                                        int i16 = 0;
                                        while (true) {
                                            if (i16 < length2) {
                                                int i17 = iArrB2[i16];
                                                if (q.g.a(i17) == iA) {
                                                    i11 = i17;
                                                } else {
                                                    i16++;
                                                }
                                            } else {
                                                i11 = 0;
                                            }
                                        }
                                        androidx.activity.k.h(lVar, u1Var2, new y3(new ea.d(i13, i14, i15, i11 == 0 ? 5 : i11), bVar.f17561e));
                                    }
                                } else if (aVar instanceof ia.a.b) {
                                    ia.a.b bVar2 = (ia.a.b) aVar;
                                    if (bVar2.i(extras) != null) {
                                        g(lVar, bVar, bVar2);
                                        androidx.activity.k.h(lVar, u1Var2, new s3(bVar.f17561e));
                                    }
                                } else if (aVar instanceof ia.a.e) {
                                    ia.a.e eVar = (ia.a.e) aVar;
                                    if (eVar.i(extras) != null) {
                                        g(lVar, bVar, eVar);
                                        androidx.activity.k.h(lVar, u1Var2, new v3(bVar.f17561e));
                                    }
                                } else if (aVar instanceof ia.a.c) {
                                    ia.a.c cVar = (ia.a.c) aVar;
                                    if (cVar.i(extras) != null) {
                                        g(lVar, bVar, cVar);
                                        androidx.activity.k.h(lVar, u1Var2, new e4(bVar.f17561e));
                                    }
                                } else if (aVar instanceof ia.a.C0174a) {
                                    ia.a.C0174a c0174a = (ia.a.C0174a) aVar;
                                    if (c0174a.i(extras) != null) {
                                        g(lVar, bVar, c0174a);
                                        androidx.activity.k.h(lVar, u1Var2, new x1(bVar.f17561e));
                                    }
                                }
                                try {
                                    completableFuture.get(1000L, TimeUnit.MILLISECONDS);
                                    return;
                                } catch (Throwable th) {
                                    Bundle bundleB = b();
                                    String message = th.getMessage();
                                    if (message == null) {
                                        message = "No message supplied";
                                    }
                                    aVar.c(bundleB, message);
                                    return;
                                }
                            }
                        }
                        m mVar2 = (m) obj;
                        if (u1Var2 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                case 0:
                default:
                    throw new j2.a();
                case 1:
                    aVar2 = ia.a.d.f8977a;
                    aVar = aVar2;
                    if (aVar != null) {
                        if (p4.h.c(extras.getString("param_shoe"), "l")) {
                            u1Var = u1.LEFT;
                        } else {
                            u1Var = u1.RIGHT;
                        }
                        u1Var2 = u1Var;
                        while (r2.hasNext()) {
                            if (p4.h.c(((m) obj2).f6664h, extras.getString("param_pair_id"))) {
                                obj = obj2;
                                m mVar3 = (m) obj;
                                if (u1Var2 != null) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                        m mVar4 = (m) obj;
                        if (u1Var2 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                case 2:
                    aVar2 = ia.a.f.f8979a;
                    aVar = aVar2;
                    if (aVar != null) {
                        if (p4.h.c(extras.getString("param_shoe"), "l")) {
                            u1Var = u1.LEFT;
                        } else {
                            u1Var = u1.RIGHT;
                        }
                        u1Var2 = u1Var;
                        while (r2.hasNext()) {
                            if (p4.h.c(((m) obj2).f6664h, extras.getString("param_pair_id"))) {
                                obj = obj2;
                                m mVar5 = (m) obj;
                                if (u1Var2 != null) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                        m mVar6 = (m) obj;
                        if (u1Var2 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                case 3:
                    aVar2 = ia.a.b.f8975a;
                    aVar = aVar2;
                    if (aVar != null) {
                        if (p4.h.c(extras.getString("param_shoe"), "l")) {
                            u1Var = u1.LEFT;
                        } else {
                            u1Var = u1.RIGHT;
                        }
                        u1Var2 = u1Var;
                        while (r2.hasNext()) {
                            if (p4.h.c(((m) obj2).f6664h, extras.getString("param_pair_id"))) {
                                obj = obj2;
                                m mVar7 = (m) obj;
                                if (u1Var2 != null) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                        m mVar8 = (m) obj;
                        if (u1Var2 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                case 4:
                    aVar2 = ia.a.e.f8978a;
                    aVar = aVar2;
                    if (aVar != null) {
                        if (p4.h.c(extras.getString("param_shoe"), "l")) {
                            u1Var = u1.LEFT;
                        } else {
                            u1Var = u1.RIGHT;
                        }
                        u1Var2 = u1Var;
                        while (r2.hasNext()) {
                            if (p4.h.c(((m) obj2).f6664h, extras.getString("param_pair_id"))) {
                                obj = obj2;
                                m mVar9 = (m) obj;
                                if (u1Var2 != null) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                        m mVar10 = (m) obj;
                        if (u1Var2 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                case 5:
                    aVar2 = ia.a.c.f8976a;
                    aVar = aVar2;
                    if (aVar != null) {
                        if (p4.h.c(extras.getString("param_shoe"), "l")) {
                            u1Var = u1.LEFT;
                        } else {
                            u1Var = u1.RIGHT;
                        }
                        u1Var2 = u1Var;
                        while (r2.hasNext()) {
                            if (p4.h.c(((m) obj2).f6664h, extras.getString("param_pair_id"))) {
                                obj = obj2;
                                m mVar11 = (m) obj;
                                if (u1Var2 != null) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                        m mVar12 = (m) obj;
                        if (u1Var2 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                case 6:
                    aVar2 = ia.a.C0174a.f8974a;
                    aVar = aVar2;
                    if (aVar != null) {
                        if (p4.h.c(extras.getString("param_shoe"), "l")) {
                            u1Var = u1.LEFT;
                        } else {
                            u1Var = u1.RIGHT;
                        }
                        u1Var2 = u1Var;
                        while (r2.hasNext()) {
                            if (p4.h.c(((m) obj2).f6664h, extras.getString("param_pair_id"))) {
                                obj = obj2;
                                m mVar13 = (m) obj;
                                if (u1Var2 != null) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                        m mVar14 = (m) obj;
                        if (u1Var2 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
            }
        }
    }

    @Override // wa.a
    public final String e() {
        return this.f17543e;
    }

    public final void g(l lVar, b bVar, ia.a<?, ?, ?> aVar) {
        c cVar = new c(aVar, bVar);
        v9.i iVar = new v9.i(false);
        cVar.invoke(iVar);
        lVar.f(iVar);
    }
}
