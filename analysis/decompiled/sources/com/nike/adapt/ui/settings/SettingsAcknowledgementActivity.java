package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.o;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import f.a;
import f.e;
import p4.h;

/* JADX INFO: compiled from: SettingsAcknowledgementActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsAcknowledgementActivity extends e implements TraceFieldInterface {
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsAcknowledgementActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsAcknowledgementActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        setContentView(R.layout.activity_settings_acknowledgement);
        int i10 = (4 & 4) != 0 ? R.id.bgf_toolbar : 0;
        String strR = o.r(R.string.adapt_settings_acknowledgement_label);
        View viewFindViewById = findViewById(i10);
        h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
        k0((Toolbar) viewFindViewById);
        a aVarI0 = i0();
        if (aVarI0 != null) {
            aVarI0.o(strR);
            aVarI0.m(true);
        }
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
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
