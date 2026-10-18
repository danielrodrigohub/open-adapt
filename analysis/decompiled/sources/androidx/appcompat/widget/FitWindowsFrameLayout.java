package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class FitWindowsFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public n0 f1039h;

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        n0 n0Var = this.f1039h;
        if (n0Var != null) {
            n0Var.a();
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(n0 n0Var) {
        this.f1039h = n0Var;
    }
}
