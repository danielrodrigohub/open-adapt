package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: ConstraintHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends View {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f1591h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1592i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Context f1593j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public s.a f1594k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f1595l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f1596m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View[] f1597n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HashMap<Integer, String> f1598o;

    public b(Context context) {
        super(context);
        this.f1591h = new int[32];
        this.f1597n = null;
        this.f1598o = new HashMap<>();
        this.f1593j = context;
        i(null);
    }

    public final void c(String str) {
        if (str == null || str.length() == 0 || this.f1593j == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int identifier = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object objC = constraintLayout.c(strTrim);
            if (objC instanceof Integer) {
                identifier = ((Integer) objC).intValue();
            }
        }
        if (identifier == 0 && constraintLayout != null) {
            identifier = h(constraintLayout, strTrim);
        }
        if (identifier == 0) {
            try {
                identifier = R.id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (identifier == 0) {
            identifier = this.f1593j.getResources().getIdentifier(strTrim, "id", this.f1593j.getPackageName());
        }
        if (identifier != 0) {
            this.f1598o.put(Integer.valueOf(identifier), strTrim);
            d(identifier);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    public final void d(int i10) {
        if (i10 == getId()) {
            return;
        }
        int i11 = this.f1592i + 1;
        int[] iArr = this.f1591h;
        if (i11 > iArr.length) {
            this.f1591h = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1591h;
        int i12 = this.f1592i;
        iArr2[i12] = i10;
        this.f1592i = i12 + 1;
    }

    public final void e(String str) {
        if (str == null || str.length() == 0 || this.f1593j == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.a) && strTrim.equals(((ConstraintLayout.a) layoutParams).Y)) {
                if (childAt.getId() == -1) {
                    StringBuilder sbC = a0.b.c("to use ConstraintTag view ");
                    sbC.append(childAt.getClass().getSimpleName());
                    sbC.append(" must have an ID");
                    Log.w("ConstraintHelper", sbC.toString());
                } else {
                    d(childAt.getId());
                }
            }
        }
    }

    public final void f(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i10 = 0; i10 < this.f1592i; i10++) {
            View viewD = constraintLayout.d(this.f1591h[i10]);
            if (viewD != null) {
                viewD.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewD.setTranslationZ(viewD.getTranslationZ() + elevation);
                }
            }
        }
    }

    public void g(ConstraintLayout constraintLayout) {
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1591h, this.f1592i);
    }

    public final int h(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f1593j.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            if (childAt.getId() != -1) {
                String resourceEntryName = null;
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public void i(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1595l = string;
                    setIds(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f1596m = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void j(s.d dVar, boolean z10) {
    }

    public final void k() {
        if (this.f1594k == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.a) {
            ((ConstraintLayout.a) layoutParams).f1563q0 = this.f1594k;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1595l;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f1596m;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f1595l = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1592i = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                c(str.substring(i10));
                return;
            } else {
                c(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f1596m = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1592i = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                e(str.substring(i10));
                return;
            } else {
                e(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1595l = null;
        this.f1592i = 0;
        for (int i10 : iArr) {
            d(i10);
        }
    }

    @Override // android.view.View
    public final void setTag(int i10, Object obj) {
        super.setTag(i10, obj);
        if (obj == null && this.f1595l == null) {
            d(i10);
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1591h = new int[32];
        this.f1597n = null;
        this.f1598o = new HashMap<>();
        this.f1593j = context;
        i(attributeSet);
    }
}
