package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.R;

/* JADX INFO: compiled from: TooltipPopup.java */
/* JADX INFO: loaded from: classes.dex */
public final class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f1377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f1378c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final WindowManager.LayoutParams f1379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f1380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f1381f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f1382g;

    public m1(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1379d = layoutParams;
        this.f1380e = new Rect();
        this.f1381f = new int[2];
        this.f1382g = new int[2];
        this.f1376a = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f1377b = viewInflate;
        this.f1378c = (TextView) viewInflate.findViewById(R.id.message);
        layoutParams.setTitle(m1.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    public final void a() {
        if (this.f1377b.getParent() != null) {
            ((WindowManager) this.f1376a.getSystemService("window")).removeView(this.f1377b);
        }
    }
}
