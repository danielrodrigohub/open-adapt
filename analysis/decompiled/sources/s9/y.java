package s9;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.k0;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.AppIconsActivity;
import java.util.Objects;

/* JADX INFO: compiled from: ShowDialogUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f15252a = new y();

    /* JADX INFO: compiled from: ShowDialogUtil.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15253a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15255c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f15256d;

        public a(String str, String str2, String str3, int i10) {
            str2 = (i10 & 2) != 0 ? "" : str2;
            str3 = (i10 & 4) != 0 ? "" : str3;
            String str4 = (i10 & 8) == 0 ? null : "";
            p4.h.j(str3, "crumbLeftButton");
            p4.h.j(str4, "crumbRightButton");
            this.f15253a = str;
            this.f15254b = str2;
            this.f15255c = str3;
            this.f15256d = str4;
        }
    }

    public static androidx.appcompat.app.d c(y yVar, Activity activity, int i10, int i11, final qd.l lVar, final a aVar) {
        Objects.requireNonNull(yVar);
        o7.x.f12420a.a("DialogShowing " + aVar.f15253a);
        b6.b bVar = new b6.b(activity, R.style.MyThemeOverlay_MaterialComponents_MaterialAlertDialog);
        bVar.f793a.f771k = false;
        bVar.g(R.layout.dialog_single_button);
        final androidx.appcompat.app.d dVarCreate = bVar.create();
        if (!activity.isFinishing()) {
            dVarCreate.show();
        }
        TextView textView = (TextView) dVarCreate.findViewById(R.id.single_button_dialog_button_title);
        if (textView != null) {
            textView.setText(androidx.lifecycle.o.r(i10));
        }
        if (yd.o.b0("")) {
            TextView textView2 = (TextView) dVarCreate.findViewById(R.id.single_button_dialog_button_description);
            if (textView2 != null) {
                textView2.setText(androidx.lifecycle.o.r(i11));
            }
        } else {
            k0.l(activity, (TextView) dVarCreate.findViewById(R.id.single_button_dialog_button_description), androidx.lifecycle.o.r(i11), "", "", v7.m.PRIVACY_POLICY, null, 64);
        }
        TextView textView3 = (TextView) dVarCreate.findViewById(R.id.single_button_dialog_button);
        if (textView3 != null) {
            textView3.setText(androidx.lifecycle.o.r(R.string.adapt_ok_cta_button));
        }
        TextView textView4 = (TextView) dVarCreate.findViewById(R.id.single_button_dialog_button);
        if (textView4 != null) {
            textView4.setOnClickListener(new View.OnClickListener() { // from class: s9.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    y.a aVar2 = aVar;
                    qd.l lVar2 = lVar;
                    androidx.appcompat.app.d dVar = dVarCreate;
                    p4.h.j(aVar2, "$crumb");
                    p4.h.j(lVar2, "$action");
                    p4.h.j(dVar, "$dialog");
                    o7.x.f12420a.a("Pressed:  Single Button " + aVar2.f15253a + ">" + aVar2.f15254b);
                    lVar2.invoke(dVar);
                }
            });
        }
        return dVarCreate;
    }

    public static androidx.appcompat.app.d d(y yVar, Activity activity, int i10, String str, int i11, int i12, int i13, int i14, boolean z10, final qd.l lVar, final qd.l lVar2, final a aVar, int i15) {
        int i16 = (i15 & 2) != 0 ? -1 : i10;
        String strR = (i15 & 4) != 0 ? "" : str;
        int i17 = (i15 & 16) != 0 ? -1 : i12;
        boolean z11 = (i15 & 128) != 0 ? false : z10;
        Objects.requireNonNull(yVar);
        o7.x.f12420a.a("DialogShowing " + aVar.f15253a);
        b6.b bVar = new b6.b(activity, R.style.MyThemeOverlay_MaterialComponents_MaterialAlertDialog);
        bVar.f793a.f771k = z11;
        bVar.g(R.layout.dialog_connection_error);
        final androidx.appcompat.app.d dVarCreate = bVar.create();
        if (!activity.isFinishing()) {
            dVarCreate.show();
        }
        TextView textView = (TextView) dVarCreate.findViewById(R.id.dialog_connection_error_title);
        if (textView != null) {
            if (i16 != -1) {
                strR = androidx.lifecycle.o.r(i16);
            }
            textView.setText(strR);
        }
        TextView textView2 = (TextView) dVarCreate.findViewById(R.id.dialog_connection_error_message);
        if (textView2 != null) {
            textView2.setText(androidx.lifecycle.o.r(i11));
        }
        TextView textView3 = (TextView) dVarCreate.findViewById(R.id.dialog_connection_error_left_button);
        if (textView3 != null) {
            textView3.setText(androidx.lifecycle.o.r(i13));
        }
        TextView textView4 = (TextView) dVarCreate.findViewById(R.id.dialog_connection_error_right_button);
        if (textView4 != null) {
            textView4.setText(androidx.lifecycle.o.r(i14));
        }
        if (i17 != -1) {
            TextView textView5 = (TextView) dVarCreate.findViewById(R.id.dialog_connection_disclaimer_message);
            if (textView5 != null) {
                textView5.setVisibility(0);
            }
            if (textView5 != null) {
                textView5.setText(androidx.lifecycle.o.r(i17));
            }
        }
        TextView textView6 = (TextView) dVarCreate.findViewById(R.id.dialog_connection_error_left_button);
        if (textView6 != null) {
            textView6.setOnClickListener(new View.OnClickListener() { // from class: s9.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    y.a aVar2 = aVar;
                    qd.l lVar3 = lVar;
                    androidx.appcompat.app.d dVar = dVarCreate;
                    p4.h.j(aVar2, "$crumb");
                    p4.h.j(lVar3, "$cancel");
                    p4.h.j(dVar, "$dialog");
                    o7.x.f12420a.a("Pressed: Left Button " + aVar2.f15253a + ">" + aVar2.f15255c);
                    lVar3.invoke(dVar);
                }
            });
        }
        TextView textView7 = (TextView) dVarCreate.findViewById(R.id.dialog_connection_error_right_button);
        if (textView7 != null) {
            textView7.setOnClickListener(new View.OnClickListener() { // from class: s9.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    y.a aVar2 = aVar;
                    qd.l lVar3 = lVar2;
                    androidx.appcompat.app.d dVar = dVarCreate;
                    p4.h.j(aVar2, "$crumb");
                    p4.h.j(lVar3, "$action");
                    p4.h.j(dVar, "$dialog");
                    o7.x.f12420a.a("Pressed: Right Button " + aVar2.f15253a + ">" + aVar2.f15256d);
                    lVar3.invoke(dVar);
                }
            });
        }
        return dVarCreate;
    }

    public static androidx.appcompat.app.d e(Activity activity, boolean z10, qd.l lVar, qd.l lVar2, int i10) {
        y yVar = f15252a;
        boolean z11 = (i10 & 2) != 0 ? false : z10;
        qd.l lVar3 = (i10 & 8) != 0 ? null : lVar2;
        p4.h.j(activity, "activity");
        p4.h.j(lVar, "okayOption");
        int i11 = z11 ? R.string.adapt_gesture_disable_failure_title : R.string.adapt_gesture_enable_failure_title;
        int i12 = z11 ? R.string.adapt_gesture_disable_failure_body : R.string.adapt_gesture_enable_battery_failure_body;
        if (lVar3 != null) {
            return d(yVar, activity, i11, null, i12, 0, R.string.adapt_ok_cta_button, R.string.adapt_settings_title, false, lVar, lVar3, new a("GESTURES_LOW_BATTERY", "OK", "SETTINGS", 8), 148);
        }
        return c(yVar, activity, i11, R.string.adapt_gesture_enable_battery_failure_body, lVar, new a("GESTURES_LOW_BATTERY", "OK", null, 12));
    }

    public static androidx.appcompat.app.d f(Activity activity, boolean z10, qd.l lVar, qd.l lVar2, int i10) {
        y yVar = f15252a;
        boolean z11 = (i10 & 2) != 0 ? false : z10;
        qd.l lVar3 = (i10 & 8) != 0 ? null : lVar2;
        p4.h.j(activity, "activity");
        p4.h.j(lVar, "okayOption");
        int i11 = z11 ? R.string.adapt_gesture_disable_failure_title : R.string.adapt_gesture_enable_failure_title;
        int i12 = z11 ? R.string.adapt_gesture_disable_failure_body : R.string.adapt_gesture_enable_failure_body;
        if (lVar3 != null) {
            return d(yVar, activity, i11, null, i12, 0, R.string.adapt_ok_cta_button, R.string.adapt_settings_title, false, lVar, lVar3, new a("GESTURES_ERROR", "OK", "SETTINGS", 8), 148);
        }
        return c(yVar, activity, i11, i12, lVar, new a("GESTURES_ERROR", "OK", null, 12));
    }

    public final androidx.appcompat.app.d a(Activity activity, AppIconsActivity.a aVar, final qd.l<? super androidx.appcompat.app.d, fd.o> lVar) {
        p4.h.j(activity, "activity");
        int i10 = aVar == AppIconsActivity.a.Jordan ? R.drawable.ic_adapt_jordan_outline : R.drawable.ic_adapt_shoes_outline;
        final a aVar2 = new a("APP_ICON_UPDATED_DIALOG", "OK", null, 12);
        o7.x.f12420a.a("DialogShowing " + aVar2.f15253a);
        b6.b bVar = new b6.b(activity, R.style.MyThemeOverlay_MaterialComponents_MaterialAlertDialog);
        bVar.f793a.f771k = false;
        bVar.g(R.layout.dialog_icon_message);
        final androidx.appcompat.app.d dVarCreate = bVar.create();
        if (!activity.isFinishing()) {
            dVarCreate.show();
        }
        ImageView imageView = (ImageView) dVarCreate.findViewById(R.id.common_dialog_icon);
        if (imageView != null) {
            Object obj = y.a.f18143a;
            imageView.setImageDrawable(y.a.b.b(activity, i10));
        }
        TextView textView = (TextView) dVarCreate.findViewById(R.id.common_dialog_icon_message);
        if (textView != null) {
            textView.setText(androidx.lifecycle.o.r(R.string.adapt_app_icon_changed_alert_aos));
        }
        TextView textView2 = (TextView) dVarCreate.findViewById(R.id.common_dialog_icon_button);
        if (textView2 != null) {
            textView2.setText(androidx.lifecycle.o.r(R.string.adapt_ok_cta_button));
        }
        TextView textView3 = (TextView) dVarCreate.findViewById(R.id.common_dialog_icon_button);
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: s9.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    y.a aVar3 = aVar2;
                    qd.l lVar2 = lVar;
                    androidx.appcompat.app.d dVar = dVarCreate;
                    p4.h.j(aVar3, "$crumb");
                    p4.h.j(lVar2, "$action");
                    p4.h.j(dVar, "$dialog");
                    o7.x.f12420a.a("Pressed:  Single Button " + aVar3.f15253a + ">" + aVar3.f15254b);
                    lVar2.invoke(dVar);
                }
            });
        }
        return dVarCreate;
    }

    public final androidx.appcompat.app.d b(Activity activity, qd.l<? super androidx.appcompat.app.d, fd.o> lVar, qd.l<? super androidx.appcompat.app.d, fd.o> lVar2) {
        p4.h.j(activity, "activity");
        p4.h.j(lVar2, "cancel");
        return d(this, activity, R.string.data_opt_in_network_error_title, null, R.string.data_opt_in_network_error_description, 0, R.string.data_opt_in_network_error_try_later, R.string.adapt_try_again_button_title, false, lVar2, lVar, new a("DATA_OPT_IN_NO_NETWORK", "TRY_AGAIN", "TRY_LATER", 8), 148);
    }

    public final androidx.appcompat.app.d g(Activity activity, qd.l<? super androidx.appcompat.app.d, fd.o> lVar) {
        p4.h.j(activity, "activity");
        p4.h.j(lVar, "action");
        h8.c.f8298b.n0(true);
        return c(this, activity, R.string.adapt_lighting_effects_failed_dialog_title, R.string.adapt_pulsing_lights_failed_low_battery_dialog_body, lVar, new a("LIGHTING_EFFECTS_LOW_BATTERY", "OK", null, 12));
    }

    public final androidx.appcompat.app.d h(Activity activity, qd.l<? super androidx.appcompat.app.d, fd.o> lVar, qd.l<? super androidx.appcompat.app.d, fd.o> lVar2) {
        p4.h.j(lVar, "cancel");
        p4.h.j(lVar2, "action");
        return d(this, activity, R.string.adapt_logout_confirmation_title, null, R.string.adapt_logout_confirmation_body, 0, R.string.adapt_dismiss_button_title, R.string.adapt_logout_title, false, lVar, lVar2, new a("LOGOUT_DIALOG", "DISMISS", "LOGOUT", 8), 148);
    }

    public final androidx.appcompat.app.d i(Activity activity, qd.l<? super androidx.appcompat.app.d, fd.o> lVar) {
        p4.h.j(activity, "activity");
        return c(this, activity, R.string.adapt_network_error_title, R.string.adapt_network_error_body, lVar, new a("NO_INTERNET_DIALOG", "OK", null, 12));
    }

    public final androidx.appcompat.app.d j(Activity activity, int i10, int i11, String str, qd.l<? super androidx.appcompat.app.d, fd.o> lVar) {
        p4.h.j(activity, "activity");
        p4.h.j(lVar, "action");
        return c(this, activity, i10, i11, lVar, new a(str, "OK", null, 12));
    }
}
