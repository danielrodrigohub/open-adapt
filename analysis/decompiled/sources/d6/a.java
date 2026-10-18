package d6;

import android.content.Context;
import android.util.TypedValue;
import com.google.android.material.R;
import j6.b;

/* JADX INFO: compiled from: ElevationOverlayProvider.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f6046f = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f6051e;

    public a(Context context) {
        TypedValue typedValueA = b.a(context, R.attr.elevationOverlayEnabled);
        boolean z10 = (typedValueA == null || typedValueA.type != 18 || typedValueA.data == 0) ? false : true;
        int iA = a6.a.a(context, R.attr.elevationOverlayColor, 0);
        int iA2 = a6.a.a(context, R.attr.elevationOverlayAccentColor, 0);
        int iA3 = a6.a.a(context, R.attr.colorSurface, 0);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f6047a = z10;
        this.f6048b = iA;
        this.f6049c = iA2;
        this.f6050d = iA3;
        this.f6051e = f10;
    }
}
