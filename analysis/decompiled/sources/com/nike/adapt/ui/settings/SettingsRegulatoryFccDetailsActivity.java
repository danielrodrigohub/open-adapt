package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.o;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import f.e;
import g7.b;
import n9.a;
import n9.c;
import p4.h;
import q7.e2;
import q7.y;

/* JADX INFO: compiled from: SettingsRegulatoryFccDetailsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsRegulatoryFccDetailsActivity extends e implements TraceFieldInterface {
    public y A;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object obj;
        fd.e eVar;
        TraceMachine.startTracing("SettingsRegulatoryFccDetailsActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsRegulatoryFccDetailsActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_regulatory_fcc_details, (ViewGroup) null, false);
        int i10 = R.id.activity_settings_regulatory_text_us;
        TextView textView = (TextView) b.d(viewInflate, R.id.activity_settings_regulatory_text_us);
        if (textView != null) {
            i10 = R.id.view_toolbar;
            View viewD = b.d(viewInflate, R.id.view_toolbar);
            if (viewD != null) {
                e2.a(viewD);
                LinearLayout linearLayout = (LinearLayout) viewInflate;
                this.A = new y(linearLayout, textView);
                setContentView(linearLayout);
                if (bundle == null) {
                    obj = (n9.b) getIntent().getParcelableExtra("REGULATORY_COUNTRY");
                    if (obj == null) {
                        obj = c.f12029h;
                    }
                } else {
                    Parcelable parcelable = bundle.getParcelable("REGULATORY_COUNTRY");
                    h.h(parcelable, "null cannot be cast to non-null type com.nike.adapt.ui.settings.model.RegulatoryCountry");
                    obj = (n9.b) parcelable;
                }
                if (h.c(obj, c.f12029h)) {
                    eVar = new fd.e(o.r(R.string.adapt_regulatory_usa_text), Integer.valueOf(R.string.adapt_regulatory_fccid_label));
                } else {
                    if (!h.c(obj, a.f12028h)) {
                        j2.a aVar = new j2.a();
                        TraceMachine.exitMethod();
                        throw aVar;
                    }
                    eVar = new fd.e(o.r(R.string.adapt_regulatory_canada_text), Integer.valueOf(R.string.adapt_regulatory_canada_ic_label));
                }
                String str = (String) eVar.f7388h;
                int iIntValue = ((Number) eVar.f7389i).intValue();
                y yVar = this.A;
                if (yVar == null) {
                    h.C("binding");
                    throw null;
                }
                yVar.f14060a.setText(str);
                CharSequence charSequenceR = o.r(iIntValue);
                View viewFindViewById = findViewById(R.id.bgf_toolbar);
                h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                k0((Toolbar) viewFindViewById);
                f.a aVarI0 = i0();
                if (aVarI0 != null) {
                    aVarI0.o(charSequenceR);
                    aVarI0.m(true);
                }
                TraceMachine.exitMethod();
                return;
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
