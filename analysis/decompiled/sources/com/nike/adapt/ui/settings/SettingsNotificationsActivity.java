package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.k0;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.settings.SettingsNotificationsActivity;
import f.e;
import g7.b;
import h8.c;
import o7.l;
import p4.h;
import q7.e2;
import q7.w;
import rd.o;

/* JADX INFO: compiled from: SettingsNotificationsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsNotificationsActivity extends e implements TraceFieldInterface {
    public static final /* synthetic */ int C = 0;
    public w A;
    public final c B = c.f8298b;

    /* JADX INFO: compiled from: SettingsNotificationsActivity.kt */
    public static final class a extends o implements qd.a<fd.o> {
        public a() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            l.f12400a.b(SettingsNotificationsActivity.this);
            return fd.o.f7408a;
        }
    }

    public final w l0() {
        w wVar = this.A;
        if (wVar != null) {
            return wVar;
        }
        h.C("binding");
        throw null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsNotificationsActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsNotificationsActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_notifications, (ViewGroup) null, false);
        int i10 = R.id.notifications_battery_reminders_description;
        if (((TextView) b.d(viewInflate, R.id.notifications_battery_reminders_description)) != null) {
            i10 = R.id.notifications_battery_reminders_divider;
            if (b.d(viewInflate, R.id.notifications_battery_reminders_divider) != null) {
                i10 = R.id.notifications_battery_reminders_toggle;
                SwitchCompat switchCompat = (SwitchCompat) b.d(viewInflate, R.id.notifications_battery_reminders_toggle);
                if (switchCompat != null) {
                    i10 = R.id.notifications_phone_settings_disclaimer;
                    TextView textView = (TextView) b.d(viewInflate, R.id.notifications_phone_settings_disclaimer);
                    if (textView != null) {
                        i10 = R.id.view_toolbar;
                        View viewD = b.d(viewInflate, R.id.view_toolbar);
                        if (viewD != null) {
                            e2.a(viewD);
                            this.A = new w((ConstraintLayout) viewInflate, switchCompat, textView);
                            setContentView(l0().f14042a);
                            String strR = androidx.lifecycle.o.r(R.string.adapt_notifications_title);
                            View viewFindViewById = findViewById(R.id.bgf_toolbar);
                            h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                            k0((Toolbar) viewFindViewById);
                            f.a aVarI0 = i0();
                            if (aVarI0 != null) {
                                aVarI0.o(strR);
                                aVarI0.m(true);
                            }
                            l0().f14043b.setChecked(this.B.m0().getBoolean("PREF_IS_BATTERY_REMINDERS_ENABLED", true));
                            l0().f14043b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: m9.z
                                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                                    SettingsNotificationsActivity settingsNotificationsActivity = this.f10951h;
                                    int i11 = SettingsNotificationsActivity.C;
                                    p4.h.j(settingsNotificationsActivity, "this$0");
                                    boolean zC = o7.l.f12400a.c(o7.l.f12402c);
                                    settingsNotificationsActivity.B.o0(z10);
                                    if (zC) {
                                        TrackManager.INSTANCE.batteryReminderNotificationToggleUpdated(z10);
                                    }
                                    if (!z10) {
                                        s9.c.f15180a.f(settingsNotificationsActivity);
                                        return;
                                    }
                                    if (z10 && zC) {
                                        s9.c.d(s9.c.f15180a, settingsNotificationsActivity);
                                        return;
                                    }
                                    if (!z10 || zC) {
                                        return;
                                    }
                                    SwitchCompat switchCompat2 = settingsNotificationsActivity.l0().f14043b;
                                    p4.h.i(switchCompat2, "binding.notificationsBatteryRemindersToggle");
                                    TrackManager.INSTANCE.allowNotificationsDialogPresented();
                                    s9.y.d(s9.y.f15252a, settingsNotificationsActivity, R.string.adapt_notifications_disabled_dialog_title, null, R.string.adapt_notifications_disabled_dialog_description, 0, R.string.adapt_notifications_disabled_dialog_later, R.string.adapt_notifications_disabled_dialog_settings, false, new a0(switchCompat2), new b0(switchCompat2, settingsNotificationsActivity), new s9.y.a("ALLOW_ADAPT_NOTIFICATIONS", "SETTINGS", "TRY_LATER", 8), 148);
                                }
                            });
                            k0.l(this, l0().f14044c, androidx.lifecycle.o.r(R.string.adapt_notifications_manage_permissions_description), androidx.lifecycle.o.r(R.string.adapt_notifications_manage_permissions_description_hyperlink), null, null, new a(), 48);
                            TraceMachine.exitMethod();
                            return;
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
