package k5;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.util.Objects;

/* JADX INFO: compiled from: SubtitlePainter.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {
    public int A;
    public int B;
    public int C;
    public int D;
    public StaticLayout E;
    public StaticLayout F;
    public int G;
    public int H;
    public int I;
    public Rect J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f9699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f9700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f9701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f9702d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextPaint f9704f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f9705g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f9706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f9707i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Layout.Alignment f9708j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Bitmap f9709k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f9710l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9711m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9712n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f9713o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9714p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f9715q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f9716r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f9717s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f9718t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f9719u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f9720v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f9721w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f9722x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f9723y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f9724z;

    public d(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f9703e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f9702d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f9699a = fRound;
        this.f9700b = fRound;
        this.f9701c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f9704f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f9705g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f9706h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    public final void a(Canvas canvas, boolean z10) {
        if (!z10) {
            Objects.requireNonNull(this.J);
            Objects.requireNonNull(this.f9709k);
            canvas.drawBitmap(this.f9709k, (Rect) null, this.J, this.f9706h);
            return;
        }
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.f9719u) > 0) {
            this.f9705g.setColor(this.f9719u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f9705g);
        }
        int i10 = this.f9721w;
        if (i10 == 1) {
            this.f9704f.setStrokeJoin(Paint.Join.ROUND);
            this.f9704f.setStrokeWidth(this.f9699a);
            this.f9704f.setColor(this.f9720v);
            this.f9704f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i10 == 2) {
            TextPaint textPaint = this.f9704f;
            float f10 = this.f9700b;
            float f11 = this.f9701c;
            textPaint.setShadowLayer(f10, f11, f11, this.f9720v);
        } else if (i10 == 3 || i10 == 4) {
            boolean z11 = i10 == 3;
            int i11 = z11 ? -1 : this.f9720v;
            int i12 = z11 ? this.f9720v : -1;
            float f12 = this.f9700b / 2.0f;
            this.f9704f.setColor(this.f9717s);
            this.f9704f.setStyle(Paint.Style.FILL);
            float f13 = -f12;
            this.f9704f.setShadowLayer(this.f9700b, f13, f13, i11);
            staticLayout2.draw(canvas);
            this.f9704f.setShadowLayer(this.f9700b, f12, f12, i12);
        }
        this.f9704f.setColor(this.f9717s);
        this.f9704f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f9704f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }
}
