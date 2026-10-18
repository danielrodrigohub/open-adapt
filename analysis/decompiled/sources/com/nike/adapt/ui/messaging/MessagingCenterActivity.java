package com.nike.adapt.ui.messaging;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.lifecycle.o;
import b9.c;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import f.e;
import java.util.Objects;
import p4.h;
import q7.n;
import v8.a;

/* JADX INFO: compiled from: MessagingCenterActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class MessagingCenterActivity extends e implements a, TraceFieldInterface {
    public n A;
    public c B;

    @Override // v8.a
    public final void T(b9.e eVar) {
        o.k(this, eVar);
    }

    @Override // v8.a
    public final void b(b9.e eVar) {
        h.j(eVar, "ctaAction");
        o.k(this, eVar);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        c cVar;
        TraceMachine.startTracing("MessagingCenterActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "MessagingCenterActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_messaging_center, (ViewGroup) null, false);
        Objects.requireNonNull(viewInflate, "rootView");
        FrameLayout frameLayout = (FrameLayout) viewInflate;
        this.A = new n(frameLayout, frameLayout);
        setContentView(frameLayout);
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("PARAM_MESSAGE_TYPE");
            h.h(parcelable, "null cannot be cast to non-null type com.nike.adapt.ui.model.BigfootMessageType");
            cVar = (c) parcelable;
        } else {
            Parcelable parcelableExtra = getIntent().getParcelableExtra("PARAM_MESSAGE_TYPE");
            h.g(parcelableExtra);
            cVar = (c) parcelableExtra;
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(d0());
            a9.a.C0011a c0011a = a9.a.f543h0;
            a9.a aVar2 = new a9.a();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("PARAM_BIGFOOT_MESSAGE_TYPE", cVar);
            aVar2.j0(bundle2);
            aVar.f(R.id.messaging_center_container, aVar2, null);
            aVar.c();
        }
        this.B = cVar;
        n nVar = this.A;
        if (nVar == null) {
            h.C("binding");
            throw null;
        }
        nVar.f13931a.setBackgroundColor(-1);
        TraceMachine.exitMethod();
    }

    @Override // androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        h.j(bundle, "outState");
        super.onSaveInstanceState(bundle);
        c cVar = this.B;
        if (cVar != null) {
            bundle.putParcelable("PARAM_MESSAGE_TYPE", cVar);
        } else {
            h.C("messageType");
            throw null;
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
