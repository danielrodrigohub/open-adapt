package p6;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: FadeTabIndicatorInterpolator.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends com.google.android.material.tabs.a {
    @Override // com.google.android.material.tabs.a
    public final void b(TabLayout tabLayout, View view, View view2, float f10, Drawable drawable) {
        if (f10 >= 0.5f) {
            view = view2;
        }
        RectF rectFA = com.google.android.material.tabs.a.a(tabLayout, view);
        float fA = f10 < 0.5f ? p5.a.a(1.0f, 0.0f, 0.0f, 0.5f, f10) : p5.a.a(0.0f, 1.0f, 0.5f, 1.0f, f10);
        drawable.setBounds((int) rectFA.left, drawable.getBounds().top, (int) rectFA.right, drawable.getBounds().bottom);
        drawable.setAlpha((int) (fA * 255.0f));
    }
}
