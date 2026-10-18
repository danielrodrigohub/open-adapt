package j0;

import android.os.Build;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.R;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AccessibilityDelegateCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f9143c = new View.AccessibilityDelegate();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f9144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0178a f9145b;

    /* JADX INFO: renamed from: j0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AccessibilityDelegateCompat.java */
    public static final class C0178a extends View.AccessibilityDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f9146a;

        public C0178a(a aVar) {
            this.f9146a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f9146a.a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            k0.g gVarB = this.f9146a.b(view);
            if (gVarB != null) {
                return (AccessibilityNodeProvider) gVarB.f9569a;
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f9146a.c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            Object tag;
            Object objValueOf;
            int iKeyAt;
            k0.f fVar = new k0.f(accessibilityNodeInfo);
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            int i10 = R.id.tag_screen_reader_focusable;
            int i11 = Build.VERSION.SDK_INT;
            Object objA = null;
            if (i11 >= 28) {
                tag = Boolean.valueOf(a0.m.d(view));
            } else {
                tag = view.getTag(i10);
                if (!Boolean.class.isInstance(tag)) {
                    tag = null;
                }
            }
            Boolean bool = (Boolean) tag;
            fVar.v(bool != null && bool.booleanValue());
            int i12 = R.id.tag_accessibility_heading;
            if (i11 >= 28) {
                objValueOf = Boolean.valueOf(a0.m.c(view));
            } else {
                Object tag2 = view.getTag(i12);
                objValueOf = Boolean.class.isInstance(tag2) ? tag2 : null;
            }
            Boolean bool2 = (Boolean) objValueOf;
            fVar.s(bool2 != null && bool2.booleanValue());
            fVar.u(a0.g(view));
            int i13 = R.id.tag_state_description;
            if (i11 >= 30) {
                objA = a0.o.a(view);
            } else {
                Object tag3 = view.getTag(i13);
                if (CharSequence.class.isInstance(tag3)) {
                    objA = tag3;
                }
            }
            fVar.y((CharSequence) objA);
            this.f9146a.d(view, fVar);
            CharSequence text = accessibilityNodeInfo.getText();
            if (i11 < 26) {
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
                if (sparseArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i14 = 0; i14 < sparseArray.size(); i14++) {
                        if (((WeakReference) sparseArray.valueAt(i14)).get() == null) {
                            arrayList.add(Integer.valueOf(i14));
                        }
                    }
                    for (int i15 = 0; i15 < arrayList.size(); i15++) {
                        sparseArray.remove(((Integer) arrayList.get(i15)).intValue());
                    }
                }
                ClickableSpan[] clickableSpanArrF = k0.f.f(text);
                if (clickableSpanArrF != null && clickableSpanArrF.length > 0) {
                    fVar.h().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R.id.accessibility_action_clickable_span);
                    int i16 = R.id.tag_accessibility_clickable_spans;
                    SparseArray sparseArray2 = (SparseArray) view.getTag(i16);
                    if (sparseArray2 == null) {
                        sparseArray2 = new SparseArray();
                        view.setTag(i16, sparseArray2);
                    }
                    for (int i17 = 0; i17 < clickableSpanArrF.length; i17++) {
                        ClickableSpan clickableSpan = clickableSpanArrF[i17];
                        int i18 = 0;
                        while (true) {
                            if (i18 >= sparseArray2.size()) {
                                iKeyAt = k0.f.f9551d;
                                k0.f.f9551d = iKeyAt + 1;
                                break;
                            } else {
                                if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i18)).get())) {
                                    iKeyAt = sparseArray2.keyAt(i18);
                                    break;
                                }
                                i18++;
                            }
                        }
                        sparseArray2.put(iKeyAt, new WeakReference(clickableSpanArrF[i17]));
                        ClickableSpan clickableSpan2 = clickableSpanArrF[i17];
                        Spanned spanned = (Spanned) text;
                        fVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        fVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        fVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        fVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(iKeyAt));
                    }
                }
            }
            List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
            if (listEmptyList == null) {
                listEmptyList = Collections.emptyList();
            }
            for (int i19 = 0; i19 < listEmptyList.size(); i19++) {
                fVar.b((k0.f.a) listEmptyList.get(i19));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f9146a.e(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f9146a.f(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            return this.f9146a.g(view, i10, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEvent(View view, int i10) {
            this.f9146a.h(view, i10);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f9146a.i(view, accessibilityEvent);
        }
    }

    /* JADX INFO: compiled from: AccessibilityDelegateCompat.java */
    public static class b {
        public static AccessibilityNodeProvider a(View.AccessibilityDelegate accessibilityDelegate, View view) {
            return accessibilityDelegate.getAccessibilityNodeProvider(view);
        }

        public static boolean b(View.AccessibilityDelegate accessibilityDelegate, View view, int i10, Bundle bundle) {
            return accessibilityDelegate.performAccessibilityAction(view, i10, bundle);
        }
    }

    public a() {
        this.f9144a = f9143c;
        this.f9145b = new C0178a(this);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f9144a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public k0.g b(View view) {
        AccessibilityNodeProvider accessibilityNodeProviderA = b.a(this.f9144a, view);
        if (accessibilityNodeProviderA != null) {
            return new k0.g(accessibilityNodeProviderA);
        }
        return null;
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f9144a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, k0.f fVar) {
        this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
    }

    public void e(View view, AccessibilityEvent accessibilityEvent) {
        this.f9144a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f9144a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean g(View view, int i10, Bundle bundle) {
        boolean zB;
        WeakReference weakReference;
        boolean z10;
        List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        boolean z11 = false;
        int i11 = 0;
        while (true) {
            if (i11 < listEmptyList.size()) {
                k0.f.a aVar = (k0.f.a) listEmptyList.get(i11);
                if (aVar.a() != i10) {
                    i11++;
                } else if (aVar.f9566d != null) {
                    Class<? extends k0.j.a> cls = aVar.f9565c;
                    if (cls != null) {
                        try {
                            Objects.requireNonNull(cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                        } catch (Exception e10) {
                            Class<? extends k0.j.a> cls2 = aVar.f9565c;
                            Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? SafeJsonPrimitive.NULL_STRING : cls2.getName()), e10);
                        }
                    }
                    zB = aVar.f9566d.a(view);
                    break;
                }
            }
            zB = false;
            break;
        }
        if (!zB) {
            zB = b.b(this.f9144a, view, i10, bundle);
        }
        if (zB || i10 != R.id.accessibility_action_clickable_span || bundle == null) {
            return zB;
        }
        int i12 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i12)) != null) {
            ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
            if (clickableSpan == null) {
                z10 = false;
                break;
            }
            ClickableSpan[] clickableSpanArrF = k0.f.f(view.createAccessibilityNodeInfo().getText());
            int i13 = 0;
            while (true) {
                if (clickableSpanArrF == null || i13 >= clickableSpanArrF.length) {
                    z10 = false;
                    break;
                }
                if (clickableSpan.equals(clickableSpanArrF[i13])) {
                    z10 = true;
                    break;
                }
                i13++;
            }
            if (z10) {
                clickableSpan.onClick(view);
                z11 = true;
            }
        }
        return z11;
    }

    public void h(View view, int i10) {
        this.f9144a.sendAccessibilityEvent(view, i10);
    }

    public void i(View view, AccessibilityEvent accessibilityEvent) {
        this.f9144a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f9144a = accessibilityDelegate;
        this.f9145b = new C0178a(this);
    }
}
