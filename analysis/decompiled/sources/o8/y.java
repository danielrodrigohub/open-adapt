package o8;

import android.content.Intent;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.Trace;

/* JADX INFO: compiled from: UniteOnResultActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class y extends f.e implements o7.h, TraceFieldInterface {
    public final h8.e A = h8.e.f8306b;

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public final void _nr_setTrace(Trace trace) {
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (intent != null && i11 == -1 && i10 == 23) {
            this.A.h(v7.g.FETCH_PROFILE);
            h9.i.f8334c.e(this);
            finish();
        }
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
