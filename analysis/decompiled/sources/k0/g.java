package k0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f9569a;

    /* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
    public static class a extends AccessibilityNodeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g f9570a;

        public a(g gVar) {
            this.f9570a = gVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
            f fVarA = this.f9570a.a(i10);
            if (fVarA == null) {
                return null;
            }
            return fVarA.f9552a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i10) {
            Objects.requireNonNull(this.f9570a);
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final boolean performAction(int i10, int i11, Bundle bundle) {
            return this.f9570a.c(i10, i11, bundle);
        }
    }

    /* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
    public static class b extends a {
        public b(g gVar) {
            super(gVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo findFocus(int i10) {
            f fVarB = this.f9570a.b(i10);
            if (fVarB == null) {
                return null;
            }
            return fVarB.f9552a;
        }
    }

    /* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
    public static class c extends b {
        public c(g gVar) {
            super(gVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final void addExtraDataToAccessibilityNodeInfo(int i10, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            Objects.requireNonNull(this.f9570a);
        }
    }

    public g() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f9569a = new c(this);
        } else {
            this.f9569a = new b(this);
        }
    }

    public f a(int i10) {
        return null;
    }

    public f b(int i10) {
        return null;
    }

    public boolean c(int i10, int i11, Bundle bundle) {
        return false;
    }

    public g(Object obj) {
        this.f9569a = obj;
    }
}
