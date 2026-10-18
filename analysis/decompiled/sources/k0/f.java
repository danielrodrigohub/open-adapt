package k0;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.http2.Http2;

/* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f9551d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo f9552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9553b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9554c = -1;

    /* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
    public static class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f9555e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final a f9556f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final a f9557g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f9558h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final a f9559i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final a f9560j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final a f9561k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final a f9562l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f9563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Class<? extends j.a> f9565c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final j f9566d;

        static {
            new a(1);
            new a(2);
            new a(4);
            new a(8);
            f9555e = new a(16);
            new a(32);
            new a(64);
            new a(128);
            new a(256, j.b.class);
            new a(512, j.b.class);
            new a(1024, j.c.class);
            new a(2048, j.c.class);
            f9556f = new a(AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
            f9557g = new a(8192);
            new a(Http2.INITIAL_MAX_FRAME_SIZE);
            new a(32768);
            new a(65536);
            new a(131072, j.g.class);
            f9558h = new a(262144);
            f9559i = new a(524288);
            f9560j = new a(1048576);
            new a(2097152, j.h.class);
            int i10 = Build.VERSION.SDK_INT;
            new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
            new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, j.e.class);
            f9561k = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
            new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
            f9562l = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
            new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
            new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
            new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress, null, null, j.f.class);
            new a(i10 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, j.d.class);
            new a(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            new a(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            new a(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            new a(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        }

        public a(int i10) {
            this(null, i10, null, null, null);
        }

        public final int a() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f9563a).getId();
        }

        public final CharSequence b() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f9563a).getLabel();
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.f9563a;
            if (obj2 == null) {
                return aVar.f9563a == null;
            }
            return obj2.equals(aVar.f9563a);
        }

        public final int hashCode() {
            Object obj = this.f9563a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public a(int i10, Class cls) {
            this(null, i10, null, null, cls);
        }

        public a(Object obj, int i10, CharSequence charSequence, j jVar, Class<? extends j.a> cls) {
            this.f9564b = i10;
            this.f9566d = jVar;
            if (obj == null) {
                this.f9563a = new AccessibilityNodeInfo.AccessibilityAction(i10, charSequence);
            } else {
                this.f9563a = obj;
            }
            this.f9565c = cls;
        }
    }

    /* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f9567a;

        public b(Object obj) {
            this.f9567a = obj;
        }

        public static b a(int i10, int i11, int i12) {
            return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, false, i12));
        }
    }

    /* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f9568a;

        public c(Object obj) {
            this.f9568a = obj;
        }

        public static c a(int i10, int i11, int i12, int i13, boolean z10) {
            return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, false, z10));
        }
    }

    public f(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f9552a = accessibilityNodeInfo;
    }

    public static String d(int i10) {
        if (i10 == 1) {
            return "ACTION_FOCUS";
        }
        if (i10 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i10) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH /* 4096 */:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case Http2.INITIAL_MAX_FRAME_SIZE /* 16384 */:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionImeEnter:
                return "ACTION_IME_ENTER";
            default:
                switch (i10) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i10) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    public static ClickableSpan[] f(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public final void A(View view) {
        this.f9552a.setTraversalAfter(view);
    }

    public final void a(int i10) {
        this.f9552a.addAction(i10);
    }

    public final void b(a aVar) {
        this.f9552a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f9563a);
    }

    public final List<Integer> c(String str) {
        ArrayList<Integer> integerArrayList = this.f9552a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f9552a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    @Deprecated
    public final void e(Rect rect) {
        this.f9552a.getBoundsInParent(rect);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f9552a;
        if (accessibilityNodeInfo == null) {
            if (fVar.f9552a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(fVar.f9552a)) {
            return false;
        }
        return this.f9554c == fVar.f9554c && this.f9553b == fVar.f9553b;
    }

    public final CharSequence g() {
        return this.f9552a.getContentDescription();
    }

    public final Bundle h() {
        return this.f9552a.getExtras();
    }

    public final int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f9552a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public final CharSequence i() {
        if (!(!c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty())) {
            return this.f9552a.getText();
        }
        List<Integer> listC = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> listC2 = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> listC3 = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> listC4 = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f9552a.getText(), 0, this.f9552a.getText().length()));
        for (int i10 = 0; i10 < listC.size(); i10++) {
            spannableString.setSpan(new k0.a(listC4.get(i10).intValue(), this, h().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), listC.get(i10).intValue(), listC2.get(i10).intValue(), listC3.get(i10).intValue());
        }
        return spannableString;
    }

    public final boolean j() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f9552a.isShowingHintText();
        }
        Bundle bundleH = h();
        return bundleH != null && (bundleH.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & 4) == 4;
    }

    public final void k(int i10, boolean z10) {
        Bundle bundleH = h();
        if (bundleH != null) {
            int i11 = bundleH.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (~i10);
            if (!z10) {
                i10 = 0;
            }
            bundleH.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i10 | i11);
        }
    }

    @Deprecated
    public final void l(Rect rect) {
        this.f9552a.setBoundsInParent(rect);
    }

    public final void m(boolean z10) {
        this.f9552a.setCheckable(z10);
    }

    public final void n(CharSequence charSequence) {
        this.f9552a.setClassName(charSequence);
    }

    public final void o(boolean z10) {
        this.f9552a.setClickable(z10);
    }

    public final void p(Object obj) {
        this.f9552a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f9567a);
    }

    public final void q(Object obj) {
        this.f9552a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).f9568a);
    }

    public final void r(CharSequence charSequence) {
        this.f9552a.setContentDescription(charSequence);
    }

    public final void s(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f9552a.setHeading(z10);
        } else {
            k(2, z10);
        }
    }

    public final void t(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f9552a.setHintText(charSequence);
        } else {
            this.f9552a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList] */
    public final String toString() {
        ?? EmptyList;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        Rect rect = new Rect();
        e(rect);
        sb2.append("; boundsInParent: " + rect);
        this.f9552a.getBoundsInScreen(rect);
        sb2.append("; boundsInScreen: " + rect);
        sb2.append("; packageName: ");
        sb2.append(this.f9552a.getPackageName());
        sb2.append("; className: ");
        sb2.append(this.f9552a.getClassName());
        sb2.append("; text: ");
        sb2.append(i());
        sb2.append("; contentDescription: ");
        sb2.append(g());
        sb2.append("; viewId: ");
        sb2.append(this.f9552a.getViewIdResourceName());
        sb2.append("; checkable: ");
        sb2.append(this.f9552a.isCheckable());
        sb2.append("; checked: ");
        sb2.append(this.f9552a.isChecked());
        sb2.append("; focusable: ");
        sb2.append(this.f9552a.isFocusable());
        sb2.append("; focused: ");
        sb2.append(this.f9552a.isFocused());
        sb2.append("; selected: ");
        sb2.append(this.f9552a.isSelected());
        sb2.append("; clickable: ");
        sb2.append(this.f9552a.isClickable());
        sb2.append("; longClickable: ");
        sb2.append(this.f9552a.isLongClickable());
        sb2.append("; enabled: ");
        sb2.append(this.f9552a.isEnabled());
        sb2.append("; password: ");
        sb2.append(this.f9552a.isPassword());
        sb2.append("; scrollable: " + this.f9552a.isScrollable());
        sb2.append("; [");
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f9552a.getActionList();
        if (actionList != null) {
            EmptyList = new ArrayList();
            int size = actionList.size();
            for (int i10 = 0; i10 < size; i10++) {
                EmptyList.add(new a(actionList.get(i10), 0, null, null, null));
            }
        } else {
            EmptyList = Collections.emptyList();
        }
        for (int i11 = 0; i11 < EmptyList.size(); i11++) {
            a aVar = (a) EmptyList.get(i11);
            String strD = d(aVar.a());
            if (strD.equals("ACTION_UNKNOWN") && aVar.b() != null) {
                strD = aVar.b().toString();
            }
            sb2.append(strD);
            if (i11 != EmptyList.size() - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public final void u(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f9552a.setPaneTitle(charSequence);
        } else {
            this.f9552a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public final void v(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f9552a.setScreenReaderFocusable(z10);
        } else {
            k(1, z10);
        }
    }

    public final void w(boolean z10) {
        this.f9552a.setScrollable(z10);
    }

    public final void x(boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f9552a.setShowingHintText(z10);
        } else {
            k(4, z10);
        }
    }

    public final void y(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f9552a.setStateDescription(charSequence);
        } else {
            this.f9552a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    public final void z(CharSequence charSequence) {
        this.f9552a.setText(charSequence);
    }
}
