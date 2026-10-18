package k0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: compiled from: AccessibilityClickableSpanCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f9548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9549j;

    public a(int i10, f fVar, int i11) {
        this.f9547h = i10;
        this.f9548i = fVar;
        this.f9549j = i11;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f9547h);
        f fVar = this.f9548i;
        fVar.f9552a.performAction(this.f9549j, bundle);
    }
}
