package com.nike.authcomponent.oidc.internal.appauth.source;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class RedirectUriReceiverActivity extends Activity implements TraceFieldInterface {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("RedirectUriReceiverActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "RedirectUriReceiverActivity#onCreate", null);
                super.onCreate(bundle);
                Uri data = getIntent().getData();
                Intent intent = new Intent(this, (Class<?>) AuthorizationManagementActivity.class);
                intent.setData(data);
                intent.addFlags(603979776);
                startActivity(intent);
                finish();
                TraceMachine.exitMethod();
                return;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
