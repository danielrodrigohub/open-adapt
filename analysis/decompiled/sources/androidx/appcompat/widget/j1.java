package androidx.appcompat.widget;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;

/* JADX INFO: compiled from: TooltipCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class j1 {

    /* JADX INFO: compiled from: TooltipCompat.java */
    public static class a {
        public static void a(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    public static void a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            a.a(view, charSequence);
            return;
        }
        l1 l1Var = l1.f1343r;
        if (l1Var != null && l1Var.f1345h == view) {
            l1.b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new l1(view, charSequence);
            return;
        }
        l1 l1Var2 = l1.f1344s;
        if (l1Var2 != null && l1Var2.f1345h == view) {
            l1Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }
}
