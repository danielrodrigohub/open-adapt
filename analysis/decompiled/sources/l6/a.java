package l6;

import android.graphics.Paint;
import android.graphics.Path;

/* JADX INFO: compiled from: ShadowRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f10155i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f10156j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f10157k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f10158l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f10160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f10161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10163e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10164f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Path f10165g = new Path();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Paint f10166h = new Paint();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f10159a = new Paint();

    public a() {
        a(-16777216);
        this.f10166h.setColor(0);
        Paint paint = new Paint(4);
        this.f10160b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f10161c = new Paint(paint);
    }

    public final void a(int i10) {
        this.f10162d = a0.a.e(i10, 68);
        this.f10163e = a0.a.e(i10, 20);
        this.f10164f = a0.a.e(i10, 0);
        this.f10159a.setColor(this.f10162d);
    }
}
