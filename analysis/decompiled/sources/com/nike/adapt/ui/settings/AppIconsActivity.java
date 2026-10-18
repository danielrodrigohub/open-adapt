package com.nike.adapt.ui.settings;

import android.content.ComponentName;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.app.d;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.JordanLauncherAlias;
import com.nike.adapt.R;
import com.nike.adapt.SplashScreenActivity;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.AdaptRestartActivity;
import f.e;
import h8.c;
import j0.a0;
import p4.h;
import q7.e2;
import qd.l;
import rd.o;
import s9.y;

/* JADX INFO: compiled from: AppIconsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class AppIconsActivity extends e implements View.OnClickListener, TraceFieldInterface {
    public q7.a A;
    public d B;
    public final c C = c.f8298b;

    /* JADX INFO: compiled from: AppIconsActivity.kt */
    public enum a {
        Adapt,
        Jordan
    }

    /* JADX INFO: compiled from: AppIconsActivity.kt */
    public static final class b extends o implements l<d, fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f5834i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ int f5835j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i10, int i11) {
            super(1);
            this.f5834i = i10;
            this.f5835j = i11;
        }

        @Override // qd.l
        public final fd.o invoke(d dVar) {
            d dVar2 = dVar;
            h.j(dVar2, "it");
            AppIconsActivity.this.getPackageManager().setComponentEnabledSetting(new ComponentName(AppIconsActivity.this, (Class<?>) SplashScreenActivity.class), this.f5834i, 1);
            AppIconsActivity.this.getPackageManager().setComponentEnabledSetting(new ComponentName(AppIconsActivity.this, (Class<?>) JordanLauncherAlias.class), this.f5835j, 1);
            AdaptRestartActivity.A.a(false, 2000L);
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    public final void l0(a aVar) {
        if (aVar == this.C.Q()) {
            return;
        }
        q7.a aVar2 = this.A;
        if (aVar2 == null) {
            h.C("binding");
            throw null;
        }
        aVar2.f13699b.setOnClickListener(null);
        q7.a aVar3 = this.A;
        if (aVar3 == null) {
            h.C("binding");
            throw null;
        }
        aVar3.f13702e.setOnClickListener(null);
        TrackManager.INSTANCE.appIconSelected(aVar);
        this.C.L(aVar);
        q7.a aVar4 = this.A;
        if (aVar4 == null) {
            h.C("binding");
            throw null;
        }
        RadioButton radioButton = aVar4.f13698a;
        a aVar5 = a.Adapt;
        radioButton.setChecked(aVar == aVar5);
        q7.a aVar6 = this.A;
        if (aVar6 == null) {
            h.C("binding");
            throw null;
        }
        RadioButton radioButton2 = aVar6.f13701d;
        a aVar7 = a.Jordan;
        radioButton2.setChecked(aVar == aVar7);
        this.B = y.f15252a.a(this, aVar, new b(aVar == aVar5 ? 1 : 2, aVar != aVar7 ? 2 : 1));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        TrackManager.INSTANCE.multipairShoePreferenceBackSelected();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        h.j(view, TracePayload.VERSION_KEY);
        int id2 = view.getId();
        if (id2 == R.id.app_icons_adapt_select_button) {
            l0(a.Adapt);
        } else {
            if (id2 != R.id.app_icons_jordan_select_button) {
                return;
            }
            l0(a.Jordan);
        }
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AppIconsActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "AppIconsActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_app_icons, (ViewGroup) null, false);
        int i10 = R.id.app_icons_adapt_radio;
        RadioButton radioButton = (RadioButton) g7.b.d(viewInflate, R.id.app_icons_adapt_radio);
        if (radioButton != null) {
            i10 = R.id.app_icons_adapt_select_button;
            Button button = (Button) g7.b.d(viewInflate, R.id.app_icons_adapt_select_button);
            if (button != null) {
                i10 = R.id.app_icons_adapt_selection;
                if (((ImageView) g7.b.d(viewInflate, R.id.app_icons_adapt_selection)) != null) {
                    i10 = R.id.app_icons_adapt_text;
                    if (((TextView) g7.b.d(viewInflate, R.id.app_icons_adapt_text)) != null) {
                        i10 = R.id.app_icons_choose_your_shoes;
                        TextView textView = (TextView) g7.b.d(viewInflate, R.id.app_icons_choose_your_shoes);
                        if (textView != null) {
                            i10 = R.id.app_icons_divider_1;
                            if (g7.b.d(viewInflate, R.id.app_icons_divider_1) != null) {
                                i10 = R.id.app_icons_divider_2;
                                if (g7.b.d(viewInflate, R.id.app_icons_divider_2) != null) {
                                    i10 = R.id.app_icons_jordan_radio;
                                    RadioButton radioButton2 = (RadioButton) g7.b.d(viewInflate, R.id.app_icons_jordan_radio);
                                    if (radioButton2 != null) {
                                        i10 = R.id.app_icons_jordan_select_button;
                                        Button button2 = (Button) g7.b.d(viewInflate, R.id.app_icons_jordan_select_button);
                                        if (button2 != null) {
                                            i10 = R.id.app_icons_jordan_selection;
                                            if (((ImageView) g7.b.d(viewInflate, R.id.app_icons_jordan_selection)) != null) {
                                                i10 = R.id.app_icons_jordan_text;
                                                if (((TextView) g7.b.d(viewInflate, R.id.app_icons_jordan_text)) != null) {
                                                    i10 = R.id.view_toolbar;
                                                    View viewD = g7.b.d(viewInflate, R.id.view_toolbar);
                                                    if (viewD != null) {
                                                        e2.a(viewD);
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                                        this.A = new q7.a(constraintLayout, radioButton, button, textView, radioButton2, button2);
                                                        setContentView(constraintLayout);
                                                        CharSequence charSequenceR = androidx.lifecycle.o.r(R.string.adapt_settings_app_icon);
                                                        View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                        h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                        k0((Toolbar) viewFindViewById);
                                                        f.a aVarI0 = i0();
                                                        if (aVarI0 != null) {
                                                            aVarI0.o(charSequenceR);
                                                            aVarI0.m(true);
                                                        }
                                                        TrackManager.INSTANCE.appIconScreenSelected();
                                                        this.C.i(false);
                                                        a aVarQ = this.C.Q();
                                                        q7.a aVar = this.A;
                                                        if (aVar == null) {
                                                            h.C("binding");
                                                            throw null;
                                                        }
                                                        aVar.f13698a.setChecked(aVarQ == a.Adapt);
                                                        q7.a aVar2 = this.A;
                                                        if (aVar2 == null) {
                                                            h.C("binding");
                                                            throw null;
                                                        }
                                                        aVar2.f13701d.setChecked(aVarQ == a.Jordan);
                                                        q7.a aVar3 = this.A;
                                                        if (aVar3 == null) {
                                                            h.C("binding");
                                                            throw null;
                                                        }
                                                        aVar3.f13699b.setOnClickListener(this);
                                                        q7.a aVar4 = this.A;
                                                        if (aVar4 == null) {
                                                            h.C("binding");
                                                            throw null;
                                                        }
                                                        aVar4.f13702e.setOnClickListener(this);
                                                        q7.a aVar5 = this.A;
                                                        if (aVar5 == null) {
                                                            h.C("binding");
                                                            throw null;
                                                        }
                                                        a0.q(aVar5.f13700c, true);
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
        ApplicationStateMonitor.getInstance().activityStopped();
        d dVar = this.B;
        if (dVar != null) {
            dVar.dismiss();
        }
        super.onStop();
    }
}
