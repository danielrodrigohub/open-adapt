package m6;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.lifecycle.k0;
import androidx.lifecycle.o;
import com.google.android.material.R;

/* JADX INFO: compiled from: ShapeAppearanceModel.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final g f10537m = new g(0.5f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k0 f10538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k0 f10539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k0 f10540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public k0 f10541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f10542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c f10543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f10544g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f10545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f10546i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e f10547j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public e f10548k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e f10549l;

    public i(a aVar) {
        this.f10538a = aVar.f10550a;
        this.f10539b = aVar.f10551b;
        this.f10540c = aVar.f10552c;
        this.f10541d = aVar.f10553d;
        this.f10542e = aVar.f10554e;
        this.f10543f = aVar.f10555f;
        this.f10544g = aVar.f10556g;
        this.f10545h = aVar.f10557h;
        this.f10546i = aVar.f10558i;
        this.f10547j = aVar.f10559j;
        this.f10548k = aVar.f10560k;
        this.f10549l = aVar.f10561l;
    }

    public static a a(Context context, int i10, int i11, c cVar) {
        if (i11 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
            i10 = i11;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R.styleable.ShapeAppearance);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamily, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopLeft, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopRight, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomRight, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i12);
            c cVarD = d(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, cVar);
            c cVarD2 = d(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopLeft, cVarD);
            c cVarD3 = d(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopRight, cVarD);
            c cVarD4 = d(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomRight, cVarD);
            c cVarD5 = d(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomLeft, cVarD);
            a aVar = new a();
            k0 k0VarI = o.i(i13);
            aVar.f10550a = k0VarI;
            a.b(k0VarI);
            aVar.f10554e = cVarD2;
            k0 k0VarI2 = o.i(i14);
            aVar.f10551b = k0VarI2;
            a.b(k0VarI2);
            aVar.f10555f = cVarD3;
            k0 k0VarI3 = o.i(i15);
            aVar.f10552c = k0VarI3;
            a.b(k0VarI3);
            aVar.f10556g = cVarD4;
            k0 k0VarI4 = o.i(i16);
            aVar.f10553d = k0VarI4;
            a.b(k0VarI4);
            aVar.f10557h = cVarD5;
            return aVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static a b(Context context, AttributeSet attributeSet, int i10, int i11) {
        return c(context, attributeSet, i10, i11, new m6.a(0));
    }

    public static a c(Context context, AttributeSet attributeSet, int i10, int i11, c cVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, cVar);
    }

    public static c d(TypedArray typedArray, int i10, c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i11 = typedValuePeekValue.type;
        if (i11 == 5) {
            return new m6.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        return i11 == 6 ? new g(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public final boolean e(RectF rectF) {
        boolean z10 = this.f10549l.getClass().equals(e.class) && this.f10547j.getClass().equals(e.class) && this.f10546i.getClass().equals(e.class) && this.f10548k.getClass().equals(e.class);
        float fA = this.f10542e.a(rectF);
        return z10 && ((this.f10543f.a(rectF) > fA ? 1 : (this.f10543f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10545h.a(rectF) > fA ? 1 : (this.f10545h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10544g.a(rectF) > fA ? 1 : (this.f10544g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f10539b instanceof h) && (this.f10538a instanceof h) && (this.f10540c instanceof h) && (this.f10541d instanceof h));
    }

    public final i f(float f10) {
        a aVar = new a(this);
        aVar.e(f10);
        aVar.f(f10);
        aVar.d(f10);
        aVar.c(f10);
        return aVar.a();
    }

    /* JADX INFO: compiled from: ShapeAppearanceModel.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public k0 f10550a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public k0 f10551b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public k0 f10552c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public k0 f10553d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c f10554e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public c f10555f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public c f10556g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c f10557h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public e f10558i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public e f10559j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public e f10560k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public e f10561l;

        public a() {
            this.f10550a = new h();
            this.f10551b = new h();
            this.f10552c = new h();
            this.f10553d = new h();
            this.f10554e = new m6.a(0.0f);
            this.f10555f = new m6.a(0.0f);
            this.f10556g = new m6.a(0.0f);
            this.f10557h = new m6.a(0.0f);
            this.f10558i = new e();
            this.f10559j = new e();
            this.f10560k = new e();
            this.f10561l = new e();
        }

        public static void b(k0 k0Var) {
            if (k0Var instanceof h) {
            } else if (k0Var instanceof d) {
            }
        }

        public final i a() {
            return new i(this);
        }

        public final a c(float f10) {
            this.f10557h = new m6.a(f10);
            return this;
        }

        public final a d(float f10) {
            this.f10556g = new m6.a(f10);
            return this;
        }

        public final a e(float f10) {
            this.f10554e = new m6.a(f10);
            return this;
        }

        public final a f(float f10) {
            this.f10555f = new m6.a(f10);
            return this;
        }

        public a(i iVar) {
            this.f10550a = new h();
            this.f10551b = new h();
            this.f10552c = new h();
            this.f10553d = new h();
            this.f10554e = new m6.a(0.0f);
            this.f10555f = new m6.a(0.0f);
            this.f10556g = new m6.a(0.0f);
            this.f10557h = new m6.a(0.0f);
            this.f10558i = new e();
            this.f10559j = new e();
            this.f10560k = new e();
            this.f10561l = new e();
            this.f10550a = iVar.f10538a;
            this.f10551b = iVar.f10539b;
            this.f10552c = iVar.f10540c;
            this.f10553d = iVar.f10541d;
            this.f10554e = iVar.f10542e;
            this.f10555f = iVar.f10543f;
            this.f10556g = iVar.f10544g;
            this.f10557h = iVar.f10545h;
            this.f10558i = iVar.f10546i;
            this.f10559j = iVar.f10547j;
            this.f10560k = iVar.f10548k;
            this.f10561l = iVar.f10549l;
        }
    }

    public i() {
        this.f10538a = new h();
        this.f10539b = new h();
        this.f10540c = new h();
        this.f10541d = new h();
        this.f10542e = new m6.a(0.0f);
        this.f10543f = new m6.a(0.0f);
        this.f10544g = new m6.a(0.0f);
        this.f10545h = new m6.a(0.0f);
        this.f10546i = new e();
        this.f10547j = new e();
        this.f10548k = new e();
        this.f10549l = new e();
    }
}
