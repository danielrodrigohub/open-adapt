package r5;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.R;
import g6.l;
import g6.n;
import j0.a0;
import j0.g0;
import j6.d;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.WeakHashMap;
import m6.f;

/* JADX INFO: compiled from: BadgeDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Drawable implements l.b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f14611u = R.style.Widget_MaterialComponents_Badge;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f14612v = R.attr.badgeStyle;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final WeakReference<Context> f14613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f14614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l f14615j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Rect f14616k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b f14617l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f14618m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f14619n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14620o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f14621p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f14622q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f14623r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public WeakReference<View> f14624s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WeakReference<FrameLayout> f14625t;

    public a(Context context) {
        d dVar;
        Context context2;
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f14613h = weakReference;
        n.c(context, n.f7773b, "Theme.MaterialComponents");
        this.f14616k = new Rect();
        f fVar = new f();
        this.f14614i = fVar;
        l lVar = new l(this);
        this.f14615j = lVar;
        lVar.f7765a.setTextAlign(Paint.Align.CENTER);
        int i10 = R.style.TextAppearance_MaterialComponents_Badge;
        Context context3 = weakReference.get();
        if (context3 != null && lVar.f7770f != (dVar = new d(context3, i10)) && (context2 = weakReference.get()) != null) {
            lVar.b(dVar, context2);
            g();
        }
        b bVar = new b(context);
        this.f14617l = bVar;
        this.f14620o = ((int) Math.pow(10.0d, ((double) bVar.f14627b.f14636m) - 1.0d)) - 1;
        lVar.f7768d = true;
        g();
        invalidateSelf();
        lVar.f7768d = true;
        g();
        invalidateSelf();
        lVar.f7765a.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(bVar.f14627b.f14632i.intValue());
        if (fVar.f10495h.f10517c != colorStateListValueOf) {
            fVar.o(colorStateListValueOf);
            invalidateSelf();
        }
        lVar.f7765a.setColor(bVar.f14627b.f14633j.intValue());
        invalidateSelf();
        WeakReference<View> weakReference2 = this.f14624s;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = this.f14624s.get();
            WeakReference<FrameLayout> weakReference3 = this.f14625t;
            f(view, weakReference3 != null ? weakReference3.get() : null);
        }
        g();
        setVisible(bVar.f14627b.f14642s.booleanValue(), false);
    }

    @Override // g6.l.b
    public final void a() {
        invalidateSelf();
    }

    public final String b() {
        if (d() <= this.f14620o) {
            return NumberFormat.getInstance(this.f14617l.f14627b.f14637n).format(d());
        }
        Context context = this.f14613h.get();
        return context == null ? "" : String.format(this.f14617l.f14627b.f14637n, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f14620o), "+");
    }

    public final FrameLayout c() {
        WeakReference<FrameLayout> weakReference = this.f14625t;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final int d() {
        if (e()) {
            return this.f14617l.f14627b.f14635l;
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f14614i.draw(canvas);
        if (e()) {
            Rect rect = new Rect();
            String strB = b();
            this.f14615j.f7765a.getTextBounds(strB, 0, strB.length(), rect);
            canvas.drawText(strB, this.f14618m, this.f14619n + (rect.height() / 2), this.f14615j.f7765a);
        }
    }

    public final boolean e() {
        return this.f14617l.f14627b.f14635l != -1;
    }

    public final void f(View view, FrameLayout frameLayout) {
        this.f14624s = new WeakReference<>(view);
        this.f14625t = new WeakReference<>(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        g();
        invalidateSelf();
    }

    public final void g() {
        Context context = this.f14613h.get();
        WeakReference<View> weakReference = this.f14624s;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f14616k);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f14625t;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        int iIntValue = this.f14617l.f14627b.f14648y.intValue() + (e() ? this.f14617l.f14627b.f14646w.intValue() : this.f14617l.f14627b.f14644u.intValue());
        int iIntValue2 = this.f14617l.f14627b.f14641r.intValue();
        if (iIntValue2 == 8388691 || iIntValue2 == 8388693) {
            this.f14619n = rect2.bottom - iIntValue;
        } else {
            this.f14619n = rect2.top + iIntValue;
        }
        if (d() <= 9) {
            float f10 = !e() ? this.f14617l.f14628c : this.f14617l.f14629d;
            this.f14621p = f10;
            this.f14623r = f10;
            this.f14622q = f10;
        } else {
            float f11 = this.f14617l.f14629d;
            this.f14621p = f11;
            this.f14623r = f11;
            this.f14622q = (this.f14615j.a(b()) / 2.0f) + this.f14617l.f14630e;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(e() ? R.dimen.mtrl_badge_text_horizontal_edge_offset : R.dimen.mtrl_badge_horizontal_edge_offset);
        int iIntValue3 = this.f14617l.f14627b.f14647x.intValue() + (e() ? this.f14617l.f14627b.f14645v.intValue() : this.f14617l.f14627b.f14643t.intValue());
        int iIntValue4 = this.f14617l.f14627b.f14641r.intValue();
        if (iIntValue4 == 8388659 || iIntValue4 == 8388691) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            this.f14618m = a0.e.d(view) == 0 ? (rect2.left - this.f14622q) + dimensionPixelSize + iIntValue3 : ((rect2.right + this.f14622q) - dimensionPixelSize) - iIntValue3;
        } else {
            WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
            this.f14618m = a0.e.d(view) == 0 ? ((rect2.right + this.f14622q) - dimensionPixelSize) - iIntValue3 : (rect2.left - this.f14622q) + dimensionPixelSize + iIntValue3;
        }
        Rect rect3 = this.f14616k;
        float f12 = this.f14618m;
        float f13 = this.f14619n;
        float f14 = this.f14622q;
        float f15 = this.f14623r;
        rect3.set((int) (f12 - f14), (int) (f13 - f15), (int) (f12 + f14), (int) (f13 + f15));
        f fVar = this.f14614i;
        fVar.setShapeAppearanceModel(fVar.f10495h.f10515a.f(this.f14621p));
        if (rect.equals(this.f14616k)) {
            return;
        }
        this.f14614i.setBounds(this.f14616k);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f14617l.f14627b.f14634k;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f14616k.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f14616k.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, g6.l.b
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        b bVar = this.f14617l;
        bVar.f14626a.f14634k = i10;
        bVar.f14627b.f14634k = i10;
        this.f14615j.f7765a.setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
