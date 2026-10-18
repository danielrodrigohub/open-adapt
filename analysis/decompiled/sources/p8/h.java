package p8;

import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: compiled from: BreadCrumbFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class h extends androidx.fragment.app.m implements TraceFieldInterface {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Trace f13330a0;

    @Override // androidx.fragment.app.m
    public void H(Bundle bundle) {
        TraceMachine.startTracing("BreadCrumbFragment");
        try {
            TraceMachine.enterMethod(this.f13330a0, "BreadCrumbFragment#onCreate", null);
        } catch (NoSuchFieldError unused) {
            TraceMachine.enterMethod(null, "BreadCrumbFragment#onCreate", null);
        }
        super.H(bundle);
        o7.x.f12420a.a(p0() + " onCreate()");
        TraceMachine.exitMethod();
    }

    @Override // androidx.fragment.app.m
    public final void J() {
        a1.d.d(p0(), " onDestroy()", o7.x.f12420a);
        this.K = true;
    }

    @Override // androidx.fragment.app.m
    public void O() {
        a1.d.d(p0(), " onPause()", o7.x.f12420a);
        this.K = true;
    }

    @Override // androidx.fragment.app.m
    public void Q() {
        this.K = true;
        a1.d.d(p0(), " onResume()", o7.x.f12420a);
    }

    @Override // androidx.fragment.app.m
    public void S() {
        this.K = true;
        a1.d.d(p0(), " onStart()", o7.x.f12420a);
    }

    @Override // androidx.fragment.app.m
    public void T() {
        a1.d.d(p0(), " onStop()", o7.x.f12420a);
        this.K = true;
    }

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public final void _nr_setTrace(Trace trace) {
        try {
            this.f13330a0 = trace;
        } catch (Exception unused) {
        }
    }

    public abstract String p0();
}
