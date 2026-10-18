package j6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.f1;

/* JADX INFO: compiled from: MaterialResources.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static ColorStateList a(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (colorStateListA = g.a.a(context, resourceId)) == null) ? typedArray.getColorStateList(i10) : colorStateListA;
    }

    public static ColorStateList b(Context context, f1 f1Var, int i10) {
        int iL;
        ColorStateList colorStateListA;
        return (!f1Var.o(i10) || (iL = f1Var.l(i10, 0)) == 0 || (colorStateListA = g.a.a(context, iL)) == null) ? f1Var.c(i10) : colorStateListA;
    }

    public static Drawable c(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        Drawable drawableB;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (drawableB = g.a.b(context, resourceId)) == null) ? typedArray.getDrawable(i10) : drawableB;
    }

    public static boolean d(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }
}
