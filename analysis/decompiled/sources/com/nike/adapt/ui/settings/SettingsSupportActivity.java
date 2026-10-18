package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import f.a;
import f.e;
import g7.b;
import p4.h;
import q7.e2;
import q7.q1;
import q7.z;
import w8.c;
import x8.p;
import z8.f;

/* JADX INFO: compiled from: SettingsSupportActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsSupportActivity extends e implements TraceFieldInterface {
    public static final /* synthetic */ int B = 0;
    public z A;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsSupportActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsSupportActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_support, (ViewGroup) null, false);
        int i10 = R.id.browse_faqs;
        View viewD = b.d(viewInflate, R.id.browse_faqs);
        if (viewD != null) {
            q1 q1VarA = q1.a(viewD);
            i10 = R.id.call_us;
            View viewD2 = b.d(viewInflate, R.id.call_us);
            if (viewD2 != null) {
                q1 q1VarA2 = q1.a(viewD2);
                i10 = R.id.delete_account;
                View viewD3 = b.d(viewInflate, R.id.delete_account);
                if (viewD3 != null) {
                    q1 q1VarA3 = q1.a(viewD3);
                    i10 = R.id.preferences_container;
                    if (((LinearLayout) b.d(viewInflate, R.id.preferences_container)) != null) {
                        i10 = R.id.tips;
                        View viewD4 = b.d(viewInflate, R.id.tips);
                        if (viewD4 != null) {
                            q1 q1VarA4 = q1.a(viewD4);
                            i10 = R.id.view_toolbar;
                            View viewD5 = b.d(viewInflate, R.id.view_toolbar);
                            if (viewD5 != null) {
                                e2.a(viewD5);
                                ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                this.A = new z(constraintLayout, q1VarA, q1VarA2, q1VarA3, q1VarA4);
                                setContentView(constraintLayout);
                                CharSequence charSequenceR = o.r(R.string.adapt_support_title);
                                View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                k0((Toolbar) viewFindViewById);
                                a aVarI0 = i0();
                                if (aVarI0 != null) {
                                    aVarI0.o(charSequenceR);
                                    aVarI0.m(true);
                                }
                                z zVar = this.A;
                                if (zVar == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar.f14070d.f13981b.setText(o.r(R.string.adapt_support_tips_title));
                                z zVar2 = this.A;
                                if (zVar2 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar2.f14067a.f13981b.setText(o.r(R.string.adapt_support_browse_faqs_title));
                                z zVar3 = this.A;
                                if (zVar3 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar3.f14068b.f13981b.setText(o.r(R.string.adapt_support_call_nike_title));
                                z zVar4 = this.A;
                                if (zVar4 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar4.f14069c.f13981b.setText(o.r(R.string.adapt_support_delete_account_title));
                                z zVar5 = this.A;
                                if (zVar5 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar5.f14070d.f13980a.setOnClickListener(new c(this, 5));
                                z zVar6 = this.A;
                                if (zVar6 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar6.f14067a.f13980a.setOnClickListener(new p(this, 4));
                                z zVar7 = this.A;
                                if (zVar7 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar7.f14068b.f13980a.setOnClickListener(new f(this, 3));
                                z zVar8 = this.A;
                                if (zVar8 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                zVar8.f14069c.f13980a.setOnClickListener(new z8.e(this, 2));
                                TraceMachine.exitMethod();
                                return;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
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
