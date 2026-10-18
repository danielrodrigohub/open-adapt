package com.nike.adapt.ui.dataoptin;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.a;
import androidx.fragment.app.m;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import f.e;
import s8.b;
import s8.c;
import s8.d;

/* JADX INFO: compiled from: DataOptInActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class DataOptInActivity extends e implements d, TraceFieldInterface {
    @Override // s8.d
    public final void M(c cVar) {
        int iOrdinal = cVar.ordinal();
        if (iOrdinal == 0) {
            a aVar = new a(d0());
            aVar.f(R.id.activity_data_opt_in_frag_holder, new b(), "Prompted");
            aVar.i();
        } else {
            if (iOrdinal != 1) {
                return;
            }
            a aVar2 = new a(d0());
            aVar2.f(R.id.activity_data_opt_in_frag_holder, new s8.a(), "Confirmed");
            aVar2.i();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        m mVarF = d0().F("Prompted");
        m mVarF2 = d0().F("Confirmed");
        if (mVarF == null) {
            if (mVarF2 != null) {
                TrackManager.INSTANCE.dataOptInConfirmationModalCloseSelected();
            }
        } else if (t8.a.f15561a.b()) {
            TrackManager.INSTANCE.dataOptInCloseSelected();
        } else {
            TrackManager.INSTANCE.dataOptInSecondaryCloseSelected();
        }
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("DataOptInActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "DataOptInActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_data_opt_in, (ViewGroup) null, false);
        if (((FrameLayout) g7.b.d(viewInflate, R.id.activity_data_opt_in_frag_holder)) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.activity_data_opt_in_frag_holder)));
        }
        setContentView((ConstraintLayout) viewInflate);
        if (t8.a.f15561a.b()) {
            TrackManager.INSTANCE.dataOptInModalPresented();
        } else {
            TrackManager.INSTANCE.dataOptInSecondaryModalPresented();
        }
        M(c.Prompted);
        TraceMachine.exitMethod();
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
