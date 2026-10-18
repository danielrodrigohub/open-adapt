package com.nike.adapt.ui;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.JordanLauncherAlias;
import com.nike.adapt.R;
import com.nike.adapt.SplashScreenActivity;
import com.nike.adapt.coroutine.MainCoroutineScope;
import f.e;
import fd.o;
import jd.d;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import ld.i;
import o7.n;
import o7.x;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: AdaptRestartActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class AdaptRestartActivity extends e implements TraceFieldInterface {
    public static final a A = new a();

    /* JADX INFO: compiled from: AdaptRestartActivity.kt */
    public static final class a {
        public final void a(boolean z10, long j10) {
            x.f12420a.a("PROCESS KILL AND RESTART");
            BigfootApplication.e eVar = BigfootApplication.f5638p;
            Intent intent = new Intent(eVar.a(), (Class<?>) AdaptRestartActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("SHOW_SPLASH_SCREEN", z10);
            intent.putExtra("PARAM_DELAY_TIME", j10);
            eVar.a().startActivity(intent);
            Runtime.getRuntime().exit(0);
        }
    }

    /* JADX INFO: compiled from: AdaptRestartActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.AdaptRestartActivity$onCreate$1", f = "AdaptRestartActivity.kt", l = {36}, m = "invokeSuspend")
    public static final class b extends i implements p<CoroutineScope, d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5704h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ boolean f5706j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ long f5707k;

        /* JADX INFO: compiled from: AdaptRestartActivity.kt */
        @ld.e(c = "com.nike.adapt.ui.AdaptRestartActivity$onCreate$1$1", f = "AdaptRestartActivity.kt", l = {37}, m = "invokeSuspend")
        public static final class a extends i implements p<CoroutineScope, d<? super o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f5708h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ long f5709i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(long j10, d<? super a> dVar) {
                super(2, dVar);
                this.f5709i = j10;
            }

            @Override // ld.a
            public final d<o> create(Object obj, d<?> dVar) {
                return new a(this.f5709i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f5708h;
                if (i10 == 0) {
                    d3.e.p(obj);
                    long j10 = this.f5709i;
                    this.f5708h = 1;
                    if (DelayKt.delay(j10, this) == aVar) {
                        return aVar;
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z10, long j10, d<? super b> dVar) {
            super(2, dVar);
            this.f5706j = z10;
            this.f5707k = j10;
        }

        @Override // ld.a
        public final d<o> create(Object obj, d<?> dVar) {
            return AdaptRestartActivity.this.new b(this.f5706j, this.f5707k, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5704h;
            if (i10 == 0) {
                d3.e.p(obj);
                CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
                a aVar2 = new a(this.f5707k, null);
                this.f5704h = 1;
                if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            AdaptRestartActivity adaptRestartActivity = AdaptRestartActivity.this;
            int i11 = n.f12404a;
            boolean z10 = this.f5706j;
            BigfootApplication bigfootApplicationB = BigfootApplication.f5638p.b();
            PackageManager packageManager = bigfootApplicationB.getPackageManager();
            Intent intent = new Intent(bigfootApplicationB, (Class<?>) SplashScreenActivity.class);
            Intent intent2 = new Intent(bigfootApplicationB, (Class<?>) JordanLauncherAlias.class);
            Intent intent3 = new Intent(bigfootApplicationB, (Class<?>) LoginActivity.class);
            if (packageManager.getComponentEnabledSetting(new ComponentName(bigfootApplicationB, (Class<?>) SplashScreenActivity.class)) != 1 && packageManager.getComponentEnabledSetting(new ComponentName(bigfootApplicationB, (Class<?>) SplashScreenActivity.class)) != 0) {
                intent = packageManager.getComponentEnabledSetting(new ComponentName(bigfootApplicationB, (Class<?>) JordanLauncherAlias.class)) == 1 ? intent2 : intent3;
            }
            Intent intentPutExtra = intent.putExtra("PARAM_SPLASH_SCREEN_SHOW", z10);
            h.i(intentPutExtra, "if (packageManager.getCo…_SCREEN_SHOW, showSplash)");
            adaptRestartActivity.startActivity(intentPutExtra);
            AdaptRestartActivity.this.finish();
            Runtime.getRuntime().exit(0);
            return o.f7408a;
        }
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AdaptRestartActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "AdaptRestartActivity#onCreate", null);
                super.onCreate(bundle);
                setContentView(R.layout.adapt_restart_activity);
                BuildersKt__Builders_commonKt.launch$default(new MainCoroutineScope(), null, null, new b(getIntent().getBooleanExtra("SHOW_SPLASH_SCREEN", true), getIntent().getLongExtra("PARAM_DELAY_TIME", 2000L), null), 3, null);
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
