package j6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.material.R;

/* JADX INFO: compiled from: TextAppearance.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f9445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f9448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f9450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f9451g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f9452h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f9453i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f9454j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f9455k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9456l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f9457m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Typeface f9458n;

    /* JADX INFO: compiled from: TextAppearance.java */
    public class a extends z.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f f9459a;

        public a(f fVar) {
            this.f9459a = fVar;
        }

        @Override // z.d.e
        public final void d(int i10) {
            d.this.f9457m = true;
            this.f9459a.a(i10);
        }

        @Override // z.d.e
        public final void e(Typeface typeface) {
            d dVar = d.this;
            dVar.f9458n = Typeface.create(typeface, dVar.f9447c);
            d dVar2 = d.this;
            dVar2.f9457m = true;
            this.f9459a.b(dVar2.f9458n, false);
        }
    }

    public d(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R.styleable.TextAppearance);
        this.f9455k = typedArrayObtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f);
        this.f9454j = c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColor);
        c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.f9447c = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.f9448d = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int i11 = R.styleable.TextAppearance_fontFamily;
        i11 = typedArrayObtainStyledAttributes.hasValue(i11) ? i11 : R.styleable.TextAppearance_android_fontFamily;
        this.f9456l = typedArrayObtainStyledAttributes.getResourceId(i11, 0);
        this.f9446b = typedArrayObtainStyledAttributes.getString(i11);
        typedArrayObtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.f9445a = c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.f9449e = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f9450f = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f9451g = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, R.styleable.MaterialTextAppearance);
        int i12 = R.styleable.MaterialTextAppearance_android_letterSpacing;
        this.f9452h = typedArrayObtainStyledAttributes2.hasValue(i12);
        this.f9453i = typedArrayObtainStyledAttributes2.getFloat(i12, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        if (this.f9458n == null && (str = this.f9446b) != null) {
            this.f9458n = Typeface.create(str, this.f9447c);
        }
        if (this.f9458n == null) {
            int i10 = this.f9448d;
            if (i10 == 1) {
                this.f9458n = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f9458n = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f9458n = Typeface.DEFAULT;
            } else {
                this.f9458n = Typeface.MONOSPACE;
            }
            this.f9458n = Typeface.create(this.f9458n, this.f9447c);
        }
    }

    public final Typeface b(Context context) {
        if (this.f9457m) {
            return this.f9458n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceA = z.d.a(context, this.f9456l);
                this.f9458n = typefaceA;
                if (typefaceA != null) {
                    this.f9458n = Typeface.create(typefaceA, this.f9447c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e10) {
                StringBuilder sbC = a0.b.c("Error loading font ");
                sbC.append(this.f9446b);
                Log.d("TextAppearance", sbC.toString(), e10);
            }
        }
        a();
        this.f9457m = true;
        return this.f9458n;
    }

    public final void c(Context context, f fVar) {
        if (d(context)) {
            b(context);
        } else {
            a();
        }
        int i10 = this.f9456l;
        if (i10 == 0) {
            this.f9457m = true;
        }
        if (this.f9457m) {
            fVar.b(this.f9458n, true);
            return;
        }
        try {
            a aVar = new a(fVar);
            ThreadLocal<TypedValue> threadLocal = z.d.f19223a;
            if (context.isRestricted()) {
                aVar.a(-4);
            } else {
                z.d.b(context, i10, new TypedValue(), 0, aVar, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f9457m = true;
            fVar.a(1);
        } catch (Exception e10) {
            StringBuilder sbC = a0.b.c("Error loading font ");
            sbC.append(this.f9446b);
            Log.d("TextAppearance", sbC.toString(), e10);
            this.f9457m = true;
            fVar.a(-3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    public final boolean d(Context context) {
        Typeface typefaceB;
        int i10 = this.f9456l;
        if (i10 != 0) {
            ThreadLocal<TypedValue> threadLocal = z.d.f19223a;
            if (context.isRestricted()) {
                typefaceB = null;
            } else {
                typefaceB = z.d.b(context, i10, new TypedValue(), 0, null, false, true);
            }
        } else {
            typefaceB = null;
        }
        return typefaceB != null;
    }

    public final void e(Context context, TextPaint textPaint, f fVar) {
        f(context, textPaint, fVar);
        ColorStateList colorStateList = this.f9454j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f10 = this.f9451g;
        float f11 = this.f9449e;
        float f12 = this.f9450f;
        ColorStateList colorStateList2 = this.f9445a;
        textPaint.setShadowLayer(f10, f11, f12, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void f(Context context, TextPaint textPaint, f fVar) {
        if (d(context)) {
            g(context, textPaint, b(context));
            return;
        }
        a();
        g(context, textPaint, this.f9458n);
        c(context, new e(this, context, textPaint, fVar));
    }

    public final void g(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceA = g.a(context.getResources().getConfiguration(), typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i10 = this.f9447c & (~typeface.getStyle());
        textPaint.setFakeBoldText((i10 & 1) != 0);
        textPaint.setTextSkewX((i10 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f9455k);
        if (this.f9452h) {
            textPaint.setLetterSpacing(this.f9453i);
        }
    }
}
