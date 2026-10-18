package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

/* JADX INFO: compiled from: TintTypedArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypedArray f1253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f1254c;

    public f1(Context context, TypedArray typedArray) {
        this.f1252a = context;
        this.f1253b = typedArray;
    }

    public static f1 p(Context context, AttributeSet attributeSet, int[] iArr) {
        return new f1(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static f1 q(Context context, AttributeSet attributeSet, int[] iArr, int i10) {
        return new f1(context, context.obtainStyledAttributes(attributeSet, iArr, i10, 0));
    }

    public final boolean a(int i10, boolean z10) {
        return this.f1253b.getBoolean(i10, z10);
    }

    public final int b(int i10) {
        return this.f1253b.getColor(i10, 0);
    }

    public final ColorStateList c(int i10) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!this.f1253b.hasValue(i10) || (resourceId = this.f1253b.getResourceId(i10, 0)) == 0 || (colorStateListA = g.a.a(this.f1252a, resourceId)) == null) ? this.f1253b.getColorStateList(i10) : colorStateListA;
    }

    public final float d(int i10) {
        return this.f1253b.getDimension(i10, -1.0f);
    }

    public final int e(int i10, int i11) {
        return this.f1253b.getDimensionPixelOffset(i10, i11);
    }

    public final int f(int i10, int i11) {
        return this.f1253b.getDimensionPixelSize(i10, i11);
    }

    public final Drawable g(int i10) {
        int resourceId;
        return (!this.f1253b.hasValue(i10) || (resourceId = this.f1253b.getResourceId(i10, 0)) == 0) ? this.f1253b.getDrawable(i10) : g.a.b(this.f1252a, resourceId);
    }

    public final Drawable h(int i10) {
        int resourceId;
        Drawable drawableF;
        if (!this.f1253b.hasValue(i10) || (resourceId = this.f1253b.getResourceId(i10, 0)) == 0) {
            return null;
        }
        k kVarA = k.a();
        Context context = this.f1252a;
        synchronized (kVarA) {
            drawableF = kVarA.f1320a.f(context, resourceId, true);
        }
        return drawableF;
    }

    public final Typeface i(int i10, int i11, z.d.e eVar) {
        int resourceId = this.f1253b.getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1254c == null) {
            this.f1254c = new TypedValue();
        }
        Context context = this.f1252a;
        TypedValue typedValue = this.f1254c;
        ThreadLocal<TypedValue> threadLocal = z.d.f19223a;
        if (context.isRestricted()) {
            return null;
        }
        return z.d.b(context, resourceId, typedValue, i11, eVar, true, false);
    }

    public final int j(int i10, int i11) {
        return this.f1253b.getInt(i10, i11);
    }

    public final int k(int i10, int i11) {
        return this.f1253b.getLayoutDimension(i10, i11);
    }

    public final int l(int i10, int i11) {
        return this.f1253b.getResourceId(i10, i11);
    }

    public final String m(int i10) {
        return this.f1253b.getString(i10);
    }

    public final CharSequence n(int i10) {
        return this.f1253b.getText(i10);
    }

    public final boolean o(int i10) {
        return this.f1253b.hasValue(i10);
    }

    public final void r() {
        this.f1253b.recycle();
    }
}
