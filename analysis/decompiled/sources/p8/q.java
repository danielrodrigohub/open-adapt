package p8;

import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.coroutine.MainCoroutineScope;
import com.nike.adapt.ui.PairingActivity;
import java.util.UUID;

/* JADX INFO: compiled from: EventBasedActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class q extends f.e implements s7.a, TraceFieldInterface {
    public final MainCoroutineScope A = new MainCoroutineScope();
    public final i8.d B;
    public boolean C;
    public Trace D;

    public q() {
        String simpleName = getClass().getSimpleName();
        UUID uuidRandomUUID = UUID.randomUUID();
        p4.h.i(uuidRandomUUID, "randomUUID()");
        this.B = new i8.d(simpleName, uuidRandomUUID);
    }

    private final void l0() {
        if (this.C) {
            return;
        }
        this.C = true;
        s7.b.f15149a.b(this);
        m0();
    }

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public final void _nr_setTrace(Trace trace) {
        try {
            this.D = trace;
        } catch (Exception unused) {
        }
    }

    public void m0() {
    }

    public void n0() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, R.anim.fade_out);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("EventBasedActivity");
        try {
            TraceMachine.enterMethod(this.D, "EventBasedActivity#onCreate", null);
        } catch (NoSuchFieldError unused) {
            TraceMachine.enterMethod(null, "EventBasedActivity#onCreate", null);
        }
        super.onCreate(bundle);
        this.f662k.a(this.A);
        l0();
        TraceMachine.exitMethod();
    }

    @Override // androidx.fragment.app.p, android.app.Activity
    public void onPause() {
        if (this instanceof PairingActivity) {
            super.onPause();
            return;
        }
        if (this.C) {
            this.C = false;
            s7.b.f15149a.c(this);
            n0();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.p, android.app.Activity
    public void onResume() {
        super.onResume();
        l0();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public void onStart() {
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
        l0();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public void onStop() {
        ApplicationStateMonitor.getInstance().activityStopped();
        if (this.C) {
            this.C = false;
            s7.b.f15149a.c(this);
            n0();
        }
        super.onStop();
    }
}
