package k0;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AccessibilityManagerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f9550a;

    public e(d dVar) {
        this.f9550a = dVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            return this.f9550a.equals(((e) obj).f9550a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9550a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z10) {
        AutoCompleteTextView autoCompleteTextView;
        com.google.android.material.textfield.b.h hVar = (com.google.android.material.textfield.b.h) this.f9550a;
        TextInputLayout textInputLayout = com.google.android.material.textfield.b.this.f13654a;
        if (textInputLayout == null || (autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText()) == null) {
            return;
        }
        if (autoCompleteTextView.getKeyListener() != null) {
            return;
        }
        CheckableImageButton checkableImageButton = com.google.android.material.textfield.b.this.f13656c;
        int i10 = z10 ? 2 : 1;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.s(checkableImageButton, i10);
    }
}
