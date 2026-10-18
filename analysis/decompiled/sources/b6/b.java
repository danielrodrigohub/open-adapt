package b6;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.d;
import com.google.android.material.R;
import g6.n;
import j.c;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;
import m6.f;

/* JADX INFO: compiled from: MaterialAlertDialogBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends d.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f3347e = R.attr.alertDialogStyle;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f3348f = R.style.MaterialAlertDialog_MaterialComponents;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f3349g = R.attr.materialAlertDialogTheme;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f f3350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f3351d;

    /* JADX WARN: Illegal instructions before constructor call */
    public b(Context context, int i10) {
        int i11 = f3349g;
        TypedValue typedValueA = j6.b.a(context, i11);
        int i12 = typedValueA == null ? 0 : typedValueA.data;
        int i13 = f3347e;
        int i14 = f3348f;
        Context contextA = r6.a.a(context, null, i13, i14);
        contextA = i12 != 0 ? new c(contextA, i12) : contextA;
        if (i10 == 0) {
            TypedValue typedValueA2 = j6.b.a(context, i11);
            i10 = typedValueA2 == null ? 0 : typedValueA2.data;
        }
        super(contextA, i10);
        Context context2 = getContext();
        Resources.Theme theme = context2.getTheme();
        TypedArray typedArrayD = n.d(context2, null, R.styleable.MaterialAlertDialog, i13, i14, new int[0]);
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetStart, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_start));
        int dimensionPixelSize2 = typedArrayD.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetTop, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_top));
        int dimensionPixelSize3 = typedArrayD.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetEnd, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_end));
        int dimensionPixelSize4 = typedArrayD.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetBottom, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_bottom));
        typedArrayD.recycle();
        if (context2.getResources().getConfiguration().getLayoutDirection() == 1) {
            dimensionPixelSize3 = dimensionPixelSize;
            dimensionPixelSize = dimensionPixelSize3;
        }
        this.f3351d = new Rect(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
        int iB = j6.b.b(context2, R.attr.colorSurface, b.class.getCanonicalName());
        f fVar = new f(context2, null, i13, i14);
        fVar.m(context2);
        fVar.o(ColorStateList.valueOf(iB));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                fVar.setShapeAppearanceModel(fVar.f10495h.f10515a.f(dimension));
            }
        }
        this.f3350c = fVar;
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a a(Drawable drawable) {
        this.f793a.f763c = drawable;
        return this;
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a b(CharSequence charSequence) {
        this.f793a.f766f = charSequence;
        return this;
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a c(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        AlertController.b bVar = this.f793a;
        bVar.f774n = charSequenceArr;
        bVar.f783w = onMultiChoiceClickListener;
        bVar.f779s = zArr;
        bVar.f780t = true;
        return this;
    }

    @Override // androidx.appcompat.app.d.a
    public final d create() {
        d dVarCreate = super.create();
        Window window = dVarCreate.getWindow();
        View decorView = window.getDecorView();
        f fVar = this.f3350c;
        if (fVar instanceof f) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            fVar.n(a0.i.i(decorView));
        }
        f fVar2 = this.f3350c;
        Rect rect = this.f3351d;
        window.setBackgroundDrawable(new InsetDrawable((Drawable) fVar2, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new a(dVarCreate, this.f3351d));
        return dVarCreate;
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a d(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.f793a;
        bVar.f769i = charSequence;
        bVar.f770j = onClickListener;
        return this;
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a e(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.e(charSequence, onClickListener);
        return this;
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a f(CharSequence[] charSequenceArr, int i10, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.f793a;
        bVar.f774n = charSequenceArr;
        bVar.f776p = onClickListener;
        bVar.f782v = i10;
        bVar.f781u = true;
        return this;
    }

    public final b g(int i10) {
        AlertController.b bVar = this.f793a;
        bVar.f778r = null;
        bVar.f777q = i10;
        return this;
    }

    public final b h(View view) {
        return (b) super.setView(view);
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNegativeButton(i10, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
        return (b) super.setPositiveButton(i10, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a setTitle(CharSequence charSequence) {
        return (b) super.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.d.a
    public final d.a setView(View view) {
        return (b) super.setView(view);
    }
}
