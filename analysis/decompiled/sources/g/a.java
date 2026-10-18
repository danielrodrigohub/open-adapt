package g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.u0;
import java.util.WeakHashMap;
import z.b;
import z.d;

/* JADX INFO: compiled from: AppCompatResources.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedAPI"})
public final class a {
    public static ColorStateList a(Context context, int i10) {
        ColorStateList colorStateListA;
        ColorStateList colorStateList;
        d.c cVar;
        Object obj = y.a.f18143a;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        ThreadLocal<TypedValue> threadLocal = d.f19223a;
        d.C0330d c0330d = new d.C0330d(resources, theme);
        synchronized (d.f19225c) {
            SparseArray<d.c> sparseArray = d.f19224b.get(c0330d);
            colorStateListA = null;
            if (sparseArray == null || sparseArray.size() <= 0 || (cVar = sparseArray.get(i10)) == null) {
                colorStateList = null;
            } else if (!cVar.f19227b.equals(resources.getConfiguration()) || (!(theme == null && cVar.f19228c == 0) && (theme == null || cVar.f19228c != theme.hashCode()))) {
                sparseArray.remove(i10);
                colorStateList = null;
            } else {
                colorStateList = cVar.f19226a;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ThreadLocal<TypedValue> threadLocal2 = d.f19223a;
        TypedValue typedValue = threadLocal2.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal2.set(typedValue);
        }
        resources.getValue(i10, typedValue, true);
        int i11 = typedValue.type;
        if (!(i11 >= 28 && i11 <= 31)) {
            try {
                colorStateListA = b.a(resources, resources.getXml(i10), theme);
            } catch (Exception e10) {
                Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e10);
            }
        }
        if (colorStateListA == null) {
            return d.b.b(resources, i10, theme);
        }
        synchronized (d.f19225c) {
            WeakHashMap<d.C0330d, SparseArray<d.c>> weakHashMap = d.f19224b;
            SparseArray<d.c> sparseArray2 = weakHashMap.get(c0330d);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray<>();
                weakHashMap.put(c0330d, sparseArray2);
            }
            sparseArray2.append(i10, new d.c(colorStateListA, c0330d.f19229a.getConfiguration(), theme));
        }
        return colorStateListA;
    }

    public static Drawable b(Context context, int i10) {
        return u0.c().e(context, i10);
    }
}
