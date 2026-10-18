package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatPopupWindow.java */
/* JADX INFO: loaded from: classes.dex */
public final class u extends PopupWindow {
    public u(Context context, AttributeSet attributeSet, int i10, int i11) {
        int resourceId;
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PopupWindow, i10, i11);
        int i12 = R.styleable.PopupWindow_overlapAnchor;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            n0.j.c(this, typedArrayObtainStyledAttributes.getBoolean(i12, false));
        }
        int i13 = R.styleable.PopupWindow_android_popupBackground;
        setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(i13) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i13, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(i13) : g.a.b(context, resourceId));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i10, int i11) {
        super.showAsDropDown(view, i10, i11);
    }

    @Override // android.widget.PopupWindow
    public final void update(View view, int i10, int i11, int i12, int i13) {
        super.update(view, i10, i11, i12, i13);
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i10, int i11, int i12) {
        super.showAsDropDown(view, i10, i11, i12);
    }
}
