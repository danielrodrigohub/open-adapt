package com.nike.adapt.ui.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.x;
import androidx.lifecycle.o;
import androidx.preference.PreferenceScreen;
import androidx.preference.c;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import f.a;
import f.e;
import m9.w;
import o7.n;
import p4.h;

/* JADX INFO: compiled from: SettingsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsActivity extends e implements c.f, TraceFieldInterface {
    public String A;
    public boolean B = true;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, R.anim.fade_out);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        setContentView(R.layout.activity_settings);
        int i10 = (4 & 4) != 0 ? R.id.bgf_toolbar : 0;
        String strR = o.r(R.string.adapt_settings_title);
        View viewFindViewById = findViewById(i10);
        h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
        k0((Toolbar) viewFindViewById);
        a aVarI0 = i0();
        if (aVarI0 != null) {
            aVarI0.o(strR);
            aVarI0.m(true);
        }
        x xVarD0 = d0();
        h.i(xVarD0, "supportFragmentManager");
        Intent intent = getIntent();
        this.B = intent != null ? intent.getBooleanExtra("ADD_BACK_STACK", true) : true;
        Intent intent2 = getIntent();
        this.A = intent2 != null ? intent2.getStringExtra("DEEP_LINK_KEY") : null;
        if (bundle == null) {
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(xVarD0);
            int i11 = n.f12404a;
            String str = this.A;
            w.a aVar2 = w.K0;
            w wVar = new w();
            if (str != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("PREF_KEY", str);
                wVar.j0(bundle2);
            }
            aVar.f(R.id.activity_settings_shoe_prefs_frag_container, wVar, null);
            aVar.i();
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
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
        TrackManager.INSTANCE.isScreenViewed(TrackManager.Screen.SETTINGS);
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    @Override // androidx.preference.c.f
    public final void q(c cVar, PreferenceScreen preferenceScreen) {
        h.j(cVar, "caller");
        h.j(preferenceScreen, "preferenceScreen");
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(d0());
        aVar.f1889b = R.anim.slide_in_right;
        aVar.f1890c = R.anim.slide_out_left_fade;
        aVar.f1891d = R.anim.slide_in_left;
        aVar.f1892e = R.anim.slide_out_right_fade;
        w.a aVar2 = w.K0;
        w wVar = new w();
        Bundle bundle = new Bundle();
        bundle.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", preferenceScreen.f2282r);
        wVar.j0(bundle);
        aVar.f(R.id.activity_settings_shoe_prefs_frag_container, wVar, preferenceScreen.f2282r);
        if (this.B) {
            if (!aVar.f1895h) {
                throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
            }
            aVar.f1894g = true;
            aVar.f1896i = null;
        }
        aVar.i();
    }
}
