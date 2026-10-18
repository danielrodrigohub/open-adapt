package w8;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.ui.gestures.GesturesActivity;

/* JADX INFO: compiled from: GesturesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends View.AccessibilityDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GesturesActivity f17250a;

    public i(GesturesActivity gesturesActivity) {
        this.f17250a = gesturesActivity;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        p4.h.j(view, "host");
        p4.h.j(accessibilityNodeInfo, "info");
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        accessibilityNodeInfo.setText(this.f17250a.O ? o.r(R.string.adapt_accessibility_my_shoes_gestures_heel_tap_to_unlace_switch_turn_off) : o.r(R.string.adapt_accessibility_my_shoes_gestures_heel_tap_to_unlace_switch_turn_on));
    }
}
