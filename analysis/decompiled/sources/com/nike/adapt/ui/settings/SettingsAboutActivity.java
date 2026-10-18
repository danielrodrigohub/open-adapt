package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
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
import q7.u;
import x8.p;
import z8.f;

/* JADX INFO: compiled from: SettingsAboutActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsAboutActivity extends e implements TraceFieldInterface {
    public static final /* synthetic */ int B = 0;
    public u A;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsAboutActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsAboutActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_about, (ViewGroup) null, false);
        int i10 = R.id.about_this_version;
        View viewD = b.d(viewInflate, R.id.about_this_version);
        if (viewD != null) {
            q1 q1VarA = q1.a(viewD);
            i10 = R.id.acknowledgements;
            View viewD2 = b.d(viewInflate, R.id.acknowledgements);
            if (viewD2 != null) {
                q1 q1VarA2 = q1.a(viewD2);
                i10 = R.id.list_container;
                if (((ScrollView) b.d(viewInflate, R.id.list_container)) != null) {
                    i10 = R.id.preferences_container;
                    if (((LinearLayout) b.d(viewInflate, R.id.preferences_container)) != null) {
                        i10 = R.id.privacy_policy;
                        View viewD3 = b.d(viewInflate, R.id.privacy_policy);
                        if (viewD3 != null) {
                            q1 q1VarA3 = q1.a(viewD3);
                            i10 = R.id.regulatory;
                            View viewD4 = b.d(viewInflate, R.id.regulatory);
                            if (viewD4 != null) {
                                q1 q1VarA4 = q1.a(viewD4);
                                i10 = R.id.submit_feedback;
                                View viewD5 = b.d(viewInflate, R.id.submit_feedback);
                                if (viewD5 != null) {
                                    q1 q1VarA5 = q1.a(viewD5);
                                    i10 = R.id.terms_of_use;
                                    View viewD6 = b.d(viewInflate, R.id.terms_of_use);
                                    if (viewD6 != null) {
                                        q1 q1VarA6 = q1.a(viewD6);
                                        i10 = R.id.view_toolbar;
                                        View viewD7 = b.d(viewInflate, R.id.view_toolbar);
                                        if (viewD7 != null) {
                                            e2.a(viewD7);
                                            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                            this.A = new u(constraintLayout, q1VarA, q1VarA2, q1VarA3, q1VarA4, q1VarA5, q1VarA6);
                                            setContentView(constraintLayout);
                                            CharSequence charSequenceR = o.r(R.string.adapt_about_title);
                                            View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                            h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                            k0((Toolbar) viewFindViewById);
                                            a aVarI0 = i0();
                                            int i11 = 1;
                                            if (aVarI0 != null) {
                                                aVarI0.o(charSequenceR);
                                                aVarI0.m(true);
                                            }
                                            u uVar = this.A;
                                            if (uVar == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            q1 q1Var = uVar.f14019e;
                                            q1Var.f13981b.setText(o.r(R.string.adapt_submit_feedback_title));
                                            q1Var.f13980a.setOnClickListener(new p(this, 3));
                                            u uVar2 = this.A;
                                            if (uVar2 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            q1 q1Var2 = uVar2.f14015a;
                                            q1Var2.f13981b.setText(o.r(R.string.adapt_settings_about_version_title));
                                            int i12 = 2;
                                            q1Var2.f13980a.setOnClickListener(new f(this, i12));
                                            u uVar3 = this.A;
                                            if (uVar3 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            q1 q1Var3 = uVar3.f14017c;
                                            q1Var3.f13981b.setText(o.r(R.string.adapt_privacy_policy_title));
                                            q1Var3.f13980a.setOnClickListener(new z8.e(this, i11));
                                            u uVar4 = this.A;
                                            if (uVar4 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            q1 q1Var4 = uVar4.f14020f;
                                            q1Var4.f13981b.setText(o.r(R.string.adapt_terms_of_use_title));
                                            q1Var4.f13980a.setOnClickListener(new g9.a(this, i11));
                                            u uVar5 = this.A;
                                            if (uVar5 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            q1 q1Var5 = uVar5.f14018d;
                                            q1Var5.f13981b.setText(o.r(R.string.adapt_regulatory_label));
                                            q1Var5.f13980a.setOnClickListener(new e9.f(this, i12));
                                            u uVar6 = this.A;
                                            if (uVar6 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            q1 q1Var6 = uVar6.f14016b;
                                            q1Var6.f13981b.setText(o.r(R.string.adapt_settings_acknowledgement_label));
                                            q1Var6.f13980a.setOnClickListener(new o8.e(this, 4));
                                            TraceMachine.exitMethod();
                                            return;
                                        }
                                    }
                                }
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
