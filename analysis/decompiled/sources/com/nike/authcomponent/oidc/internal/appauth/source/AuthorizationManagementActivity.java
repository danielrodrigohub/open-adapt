package com.nike.authcomponent.oidc.internal.appauth.source;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.Objects;
import p4.h;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class AuthorizationManagementActivity extends Activity implements TraceFieldInterface {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f5927j = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5928h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Intent f5929i;

    public final void a(Bundle bundle) {
        if (bundle == null) {
            ub.a.a("No stored state - unable to handle response");
            finish();
        } else {
            this.f5929i = (Intent) bundle.getParcelable("authIntent");
            this.f5928h = bundle.getBoolean("authStarted", false);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AuthorizationManagementActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "AuthorizationManagementActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        if (bundle == null) {
            a(getIntent().getExtras());
        } else {
            a(bundle);
        }
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // android.app.Activity
    public final void onResume() {
        Intent intent;
        super.onResume();
        if (!this.f5928h) {
            try {
                startActivity(this.f5929i);
                this.f5928h = true;
                return;
            } catch (ActivityNotFoundException unused) {
                ub.a.Companion.a("Authorization flow canceled due to missing browser");
                a aVar = a.b.f5939b;
                setResult(0, new a(aVar.f5931h, aVar.f5932i, aVar.f5933j, aVar.f5934k, aVar.f5935l).d());
                finish();
            }
        }
        if (getIntent().getData() != null) {
            Uri data = getIntent().getData();
            if (data == null) {
                intent = null;
            } else if (data.getQueryParameterNames().contains("error")) {
                int i10 = a.f5930m;
                String queryParameter = data.getQueryParameter("error");
                String queryParameter2 = data.getQueryParameter("error_description");
                String queryParameter3 = data.getQueryParameter("error_uri");
                a aVar2 = a.C0103a.f5937b.get(queryParameter);
                if (aVar2 == null) {
                    aVar2 = a.C0103a.f5936a;
                }
                int i11 = aVar2.f5931h;
                int i12 = aVar2.f5932i;
                if (queryParameter2 == null) {
                    queryParameter2 = aVar2.f5934k;
                }
                intent = new a(i11, i12, queryParameter, queryParameter2, queryParameter3 != null ? Uri.parse(queryParameter3) : aVar2.f5935l).d();
            } else {
                intent = new Intent();
                intent.putExtra("com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationResponse", data);
            }
            if (intent == null) {
                ub.a.C0280a c0280a = ub.a.Companion;
                Objects.requireNonNull(c0280a);
                c0280a.a(h.B("error: ", "Failed to extract OAuth2 response from redirect"));
            } else {
                intent.setData(data);
                setResult(-1, intent);
            }
        } else {
            ub.a.Companion.a("Authorization flow canceled by user");
            a aVar3 = a.b.f5938a;
            setResult(0, new a(aVar3.f5931h, aVar3.f5932i, aVar3.f5933j, aVar3.f5934k, aVar3.f5935l).d());
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("authStarted", this.f5928h);
        bundle.putParcelable("authIntent", this.f5929i);
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
