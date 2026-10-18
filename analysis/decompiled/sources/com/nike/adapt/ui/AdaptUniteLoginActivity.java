package com.nike.adapt.ui;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.k;
import androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import f.e;
import fd.f;
import fd.o;
import h8.c;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import jd.d;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import ld.i;
import o7.h;
import o7.u;
import o7.x;
import ob.g;
import qd.l;
import qd.p;
import s9.y;
import yd.s;

/* JADX INFO: compiled from: AdaptUniteLoginActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class AdaptUniteLoginActivity extends e implements h, TraceFieldInterface {
    public c A;

    /* JADX INFO: compiled from: AdaptUniteLoginActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.AdaptUniteLoginActivity$onCreate$1", f = "AdaptUniteLoginActivity.kt", l = {30}, m = "invokeSuspend")
    public static final class a extends i implements p<CoroutineScope, d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5710h;

        /* JADX INFO: renamed from: com.nike.adapt.ui.AdaptUniteLoginActivity$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptUniteLoginActivity.kt */
        @ld.e(c = "com.nike.adapt.ui.AdaptUniteLoginActivity$onCreate$1$1", f = "AdaptUniteLoginActivity.kt", l = {32}, m = "invokeSuspend")
        public static final class C0098a extends i implements p<CoroutineScope, d<? super o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f5712h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public /* synthetic */ Object f5713i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ AdaptUniteLoginActivity f5714j;

            /* JADX INFO: renamed from: com.nike.adapt.ui.AdaptUniteLoginActivity$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: AdaptUniteLoginActivity.kt */
            @ld.e(c = "com.nike.adapt.ui.AdaptUniteLoginActivity$onCreate$1$1$1$1", f = "AdaptUniteLoginActivity.kt", l = {32}, m = "invokeSuspend")
            public static final class C0099a extends i implements p<CoroutineScope, d<? super g>, Object> {

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public int f5715h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ AdaptUniteLoginActivity f5716i;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0099a(AdaptUniteLoginActivity adaptUniteLoginActivity, d<? super C0099a> dVar) {
                    super(2, dVar);
                    this.f5716i = adaptUniteLoginActivity;
                }

                @Override // ld.a
                public final d<o> create(Object obj, d<?> dVar) {
                    return new C0099a(this.f5716i, dVar);
                }

                @Override // qd.p
                public final Object invoke(CoroutineScope coroutineScope, d<? super g> dVar) {
                    return ((C0099a) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
                }

                @Override // ld.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                    int i10 = this.f5715h;
                    if (i10 == 0) {
                        d3.e.p(obj);
                        g8.a aVarC = BigfootApplication.f5638p.c();
                        AdaptUniteLoginActivity adaptUniteLoginActivity = this.f5716i;
                        this.f5715h = 1;
                        pb.b bVar = aVarC.f7856f;
                        Objects.requireNonNull(bVar);
                        obj = new pb.a(bVar).a(adaptUniteLoginActivity, this);
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

            /* JADX INFO: renamed from: com.nike.adapt.ui.AdaptUniteLoginActivity$a$a$b */
            /* JADX INFO: compiled from: AdaptUniteLoginActivity.kt */
            public static final class b extends rd.o implements l<androidx.appcompat.app.d, o> {

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ AdaptUniteLoginActivity f5717h;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public b(AdaptUniteLoginActivity adaptUniteLoginActivity) {
                    super(1);
                    this.f5717h = adaptUniteLoginActivity;
                }

                @Override // qd.l
                public final o invoke(androidx.appcompat.app.d dVar) {
                    androidx.appcompat.app.d dVar2 = dVar;
                    p4.h.j(dVar2, "dialog");
                    dVar2.dismiss();
                    this.f5717h.onBackPressed();
                    return o.f7408a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0098a(AdaptUniteLoginActivity adaptUniteLoginActivity, d<? super C0098a> dVar) {
                super(2, dVar);
                this.f5714j = adaptUniteLoginActivity;
            }

            @Override // ld.a
            public final d<o> create(Object obj, d<?> dVar) {
                C0098a c0098a = new C0098a(this.f5714j, dVar);
                c0098a.f5713i = obj;
                return c0098a;
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) {
                return ((C0098a) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objG;
                Object objWithContext;
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f5712h;
                try {
                    if (i10 == 0) {
                        d3.e.p(obj);
                        AdaptUniteLoginActivity adaptUniteLoginActivity = this.f5714j;
                        CoroutineDispatcher io = Dispatchers.getIO();
                        C0099a c0099a = new C0099a(adaptUniteLoginActivity, null);
                        this.f5712h = 1;
                        objWithContext = BuildersKt.withContext(io, c0099a, this);
                        if (objWithContext == aVar) {
                            return aVar;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        d3.e.p(obj);
                        objWithContext = obj;
                    }
                    objG = (g) objWithContext;
                } catch (Throwable th) {
                    objG = d3.e.g(th);
                }
                AdaptUniteLoginActivity adaptUniteLoginActivity2 = this.f5714j;
                if (!(objG instanceof f.a)) {
                    g gVar = (g) objG;
                    if (gVar instanceof g.b ? true : gVar instanceof g.a) {
                        c cVar = adaptUniteLoginActivity2.A;
                        if (cVar == null) {
                            p4.h.C("adaptPreferenceHelper");
                            throw null;
                        }
                        cVar.q0(true);
                        adaptUniteLoginActivity2.setResult(-1, new Intent());
                        adaptUniteLoginActivity2.finish();
                    }
                }
                AdaptUniteLoginActivity adaptUniteLoginActivity3 = this.f5714j;
                Throwable thA = f.a(objG);
                if (thA != null) {
                    c cVar2 = adaptUniteLoginActivity3.A;
                    if (cVar2 == null) {
                        p4.h.C("adaptPreferenceHelper");
                        throw null;
                    }
                    cVar2.q0(false);
                    if (thA instanceof ob.e) {
                        x xVar = x.f12420a;
                        String strValueOf = String.valueOf(thA.getMessage());
                        fd.e<String, String> eVarE = xVar.e("LoginException");
                        String str = eVarE.f7388h;
                        String str2 = eVarE.f7389i;
                        u uVar = u.ERROR;
                        Object[] array = s.B0(str2, new String[]{"|"}).toArray(new String[0]);
                        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        x.f12420a.h(str, strValueOf, (120 & 4) != 0 ? u.DEBUG : uVar, (120 & 8) != 0 ? null : (String[]) array, null, (120 & 32) != 0 ? null : thA, (120 & 64) != 0 ? false : false);
                        ob.e eVar = (ob.e) thA;
                        if (eVar instanceof ob.e.C0224e ? true : eVar instanceof ob.e.b ? true : eVar instanceof ob.e.g ? true : eVar instanceof ob.e.a ? true : eVar instanceof ob.e.c) {
                            adaptUniteLoginActivity3.onBackPressed();
                        } else {
                            if (eVar instanceof ob.e.f ? true : eVar instanceof ob.e.d) {
                                y.f15252a.i(adaptUniteLoginActivity3, new b(adaptUniteLoginActivity3));
                            }
                        }
                    } else if (thA instanceof CancellationException) {
                        throw thA;
                    }
                }
                return o.f7408a;
            }
        }

        public a(d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final d<o> create(Object obj, d<?> dVar) {
            return AdaptUniteLoginActivity.this.new a(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objCoroutineScope;
            Object obj2 = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5710h;
            if (i10 == 0) {
                d3.e.p(obj);
                AdaptUniteLoginActivity adaptUniteLoginActivity = AdaptUniteLoginActivity.this;
                androidx.lifecycle.i.c cVar = androidx.lifecycle.i.c.CREATED;
                C0098a c0098a = new C0098a(adaptUniteLoginActivity, null);
                this.f5710h = 1;
                androidx.lifecycle.i iVarA = adaptUniteLoginActivity.a();
                p4.h.i(iVarA, "lifecycle");
                if (iVarA.b() == androidx.lifecycle.i.c.DESTROYED || (objCoroutineScope = CoroutineScopeKt.coroutineScope(new RepeatOnLifecycleKt$repeatOnLifecycle$3(iVarA, cVar, c0098a, null), this)) != obj2) {
                    objCoroutineScope = o.f7408a;
                }
                if (objCoroutineScope != obj2) {
                    objCoroutineScope = o.f7408a;
                }
                if (objCoroutineScope == obj2) {
                    return obj2;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return o.f7408a;
        }
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        x.f12420a.b("AdaptUniteLoginActivity", d1.c.a("onActivityResult called requestCode: ", i10, " result code: ", i11));
        super.onActivityResult(i10, i11, intent);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        CoroutineScopeKt.cancel$default(k.m(this), null, 1, null);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        finish();
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AdaptUniteLoginActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "AdaptUniteLoginActivity#onCreate", null);
                super.onCreate(bundle);
                this.A = c.f8298b;
                BuildersKt__Builders_commonKt.launch$default(k.m(this), null, null, new a(null), 3, null);
                TraceMachine.exitMethod();
                return;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
