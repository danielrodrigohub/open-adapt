package g6;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: compiled from: CheckableImageButton.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CheckableImageButton f7708d;

    public c(CheckableImageButton checkableImageButton) {
        this.f7708d = checkableImageButton;
    }

    @Override // j0.a
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f7708d.isChecked());
    }

    @Override // j0.a
    public final void d(View view, k0.f fVar) {
        this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
        fVar.m(this.f7708d.f5353l);
        fVar.f9552a.setChecked(this.f7708d.isChecked());
    }
}
