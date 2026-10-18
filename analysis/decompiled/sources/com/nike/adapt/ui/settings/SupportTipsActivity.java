package com.nike.adapt.ui.settings;

import a1.f;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.s;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import f.e;
import g7.b;
import java.util.List;
import m9.c0;
import p4.h;
import q7.a0;
import q7.e2;

/* JADX INFO: compiled from: SupportTipsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SupportTipsActivity extends e implements TraceFieldInterface {
    public a0 A;

    /* JADX INFO: compiled from: SupportTipsActivity.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f5869a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f5870b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f5871c;

        public a(String str, String str2, int i10) {
            this.f5869a = str;
            this.f5870b = str2;
            this.f5871c = i10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return h.c(this.f5869a, aVar.f5869a) && h.c(this.f5870b, aVar.f5870b) && this.f5871c == aVar.f5871c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f5871c) + f.c(this.f5870b, this.f5869a.hashCode() * 31, 31);
        }

        public final String toString() {
            String str = this.f5869a;
            String str2 = this.f5870b;
            return s.a(k1.a.a("Tips(tipHeading=", str, ", tipBody=", str2, ", tipsIcon="), this.f5871c, ")");
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SupportTipsActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SupportTipsActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_tips, (ViewGroup) null, false);
        int i10 = R.id.activity_settings_recycle_view;
        RecyclerView recyclerView = (RecyclerView) b.d(viewInflate, R.id.activity_settings_recycle_view);
        if (recyclerView != null) {
            i10 = R.id.view_toolbar;
            View viewD = b.d(viewInflate, R.id.view_toolbar);
            if (viewD != null) {
                e2.a(viewD);
                LinearLayout linearLayout = (LinearLayout) viewInflate;
                this.A = new a0(linearLayout, recyclerView);
                setContentView(linearLayout);
                CharSequence charSequenceR = o.r(R.string.adapt_support_tips_title);
                View viewFindViewById = findViewById(R.id.bgf_toolbar);
                h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                k0((Toolbar) viewFindViewById);
                f.a aVarI0 = i0();
                if (aVarI0 != null) {
                    aVarI0.o(charSequenceR);
                    aVarI0.m(true);
                }
                List listZ = o.z(new a(o.r(R.string.adapt_tips_lacing_title), o.r(R.string.adapt_tips_lacing_body), R.drawable.ic_tips_lacing), new a(o.r(R.string.adapt_tips_lockdown_title), o.r(R.string.adapt_tips_lockdown_body), R.drawable.ic_tips_lockdown), new a(o.r(R.string.adapt_tips_modes_title), o.r(R.string.adapt_tips_modes_body), R.drawable.ic_tips_mode_presets), new a(o.r(R.string.adapt_tips_lighting_title), o.r(R.string.adapt_tips_lighting_body), R.drawable.ic_tips_lighting), new a(o.r(R.string.adapt_tips_battery_title), o.r(R.string.adapt_tips_battery_body), R.drawable.ic_tips_battery), new a(o.r(R.string.adapt_tips_release_title), o.r(R.string.adapt_tips_release_body), R.drawable.ic_tips_release));
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                a0 a0Var = this.A;
                if (a0Var == null) {
                    h.C("binding");
                    throw null;
                }
                a0Var.f13703a.setLayoutManager(linearLayoutManager);
                a0 a0Var2 = this.A;
                if (a0Var2 == null) {
                    h.C("binding");
                    throw null;
                }
                a0Var2.f13703a.setAdapter(new c0(listZ));
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
