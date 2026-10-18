package x8;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.newrelic.agent.android.instrumentation.Instrumented;

/* JADX INFO: compiled from: ViewHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class i1 {
    public static final void a(Context context, View view, int i10) {
        p4.h.j(context, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        p4.h.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.topMargin = b(context, i10) + marginLayoutParams.topMargin;
        view.requestLayout();
    }

    public static final int b(Context context, int i10) {
        p4.h.j(context, "<this>");
        return (int) (i10 * context.getResources().getDisplayMetrics().density);
    }

    public static final void c(ImageView imageView, int i10) {
        imageView.setImageTintList(ColorStateList.valueOf(i10));
    }

    public static final void d(ImageView imageView, int i10) {
        Context context = imageView.getContext();
        Object obj = y.a.f18143a;
        imageView.setImageTintList(ColorStateList.valueOf(y.a.c.a(context, i10)));
    }
}
