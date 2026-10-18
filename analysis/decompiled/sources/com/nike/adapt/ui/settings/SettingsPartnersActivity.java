package com.nike.adapt.ui.settings;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import f.a;
import f.e;
import g7.b;
import j0.a0;
import o8.j;
import p4.h;
import q7.e2;
import q7.x;
import x8.j0;

/* JADX INFO: compiled from: SettingsPartnersActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsPartnersActivity extends e implements View.OnClickListener, TraceFieldInterface {
    public static final /* synthetic */ int D = 0;
    public x A;
    public final String B = "com.nike.ntc";
    public final String C = "com.nike.plusgps";

    public final void l0(String str) {
        boolean z10;
        TrackManager.INSTANCE.settingsPartnersAppSelected(str);
        try {
            startActivity(getPackageManager().getLaunchIntentForPackage(str));
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        if (z10) {
            return;
        }
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)));
        } catch (Throwable unused2) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsPartnersActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsPartnersActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_partners, (ViewGroup) null, false);
        int i10 = R.id.divider_1;
        if (b.d(viewInflate, R.id.divider_1) != null) {
            i10 = R.id.divider_2;
            if (b.d(viewInflate, R.id.divider_2) != null) {
                i10 = R.id.divider_3;
                if (b.d(viewInflate, R.id.divider_3) != null) {
                    i10 = R.id.nrc_button_image;
                    if (((ImageView) b.d(viewInflate, R.id.nrc_button_image)) != null) {
                        i10 = R.id.nrc_button_label;
                        if (((TextView) b.d(viewInflate, R.id.nrc_button_label)) != null) {
                            i10 = R.id.ntc_button_image;
                            if (((ImageView) b.d(viewInflate, R.id.ntc_button_image)) != null) {
                                i10 = R.id.ntc_button_label;
                                if (((TextView) b.d(viewInflate, R.id.ntc_button_label)) != null) {
                                    i10 = R.id.partners_nike_apps_header;
                                    TextView textView = (TextView) b.d(viewInflate, R.id.partners_nike_apps_header);
                                    if (textView != null) {
                                        i10 = R.id.partners_nrc_button;
                                        Button button = (Button) b.d(viewInflate, R.id.partners_nrc_button);
                                        if (button != null) {
                                            i10 = R.id.partners_ntc_button;
                                            Button button2 = (Button) b.d(viewInflate, R.id.partners_ntc_button);
                                            if (button2 != null) {
                                                i10 = R.id.view_toolbar;
                                                View viewD = b.d(viewInflate, R.id.view_toolbar);
                                                if (viewD != null) {
                                                    e2.a(viewD);
                                                    ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                                    this.A = new x(constraintLayout, textView, button, button2);
                                                    setContentView(constraintLayout);
                                                    CharSequence charSequence = o.r(R.string.adapt_settings_partners_title) + " ";
                                                    h.j(charSequence, "toolbarTitle");
                                                    View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                    h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                    k0((Toolbar) viewFindViewById);
                                                    a aVarI0 = i0();
                                                    int i11 = 1;
                                                    if (aVarI0 != null) {
                                                        aVarI0.o(charSequence);
                                                        aVarI0.m(true);
                                                    }
                                                    x xVar = this.A;
                                                    if (xVar == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    a0.q(xVar.f14050a, true);
                                                    x xVar2 = this.A;
                                                    if (xVar2 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    xVar2.f14052c.setOnClickListener(new j0(this, 6));
                                                    x xVar3 = this.A;
                                                    if (xVar3 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    xVar3.f14051b.setOnClickListener(new j(this, i11));
                                                    TrackManager.INSTANCE.settingsPartnersPageViewed();
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
