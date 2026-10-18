package androidx.recyclerview.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import java.util.Objects;

/* JADX INFO: compiled from: DividerItemDecoration.java */
/* JADX INFO: loaded from: classes.dex */
public final class p extends RecyclerView.l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f2722d = {R.attr.listDivider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Drawable f2723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f2725c = new Rect();

    public p(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f2722d);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f2723a = drawable;
        if (drawable == null) {
            Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f2724b = 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void f(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y yVar) {
        Drawable drawable = this.f2723a;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f2724b == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void g(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int paddingTop;
        int width;
        int paddingLeft;
        if (recyclerView.getLayoutManager() == null || this.f2723a == null) {
            return;
        }
        int i10 = 0;
        if (this.f2724b == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                paddingLeft = recyclerView.getPaddingLeft();
                width = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                width = recyclerView.getWidth();
                paddingLeft = 0;
            }
            int childCount = recyclerView.getChildCount();
            while (i10 < childCount) {
                View childAt = recyclerView.getChildAt(i10);
                RecyclerView.L(childAt, this.f2725c);
                int iRound = Math.round(childAt.getTranslationY()) + this.f2725c.bottom;
                this.f2723a.setBounds(paddingLeft, iRound - this.f2723a.getIntrinsicHeight(), width, iRound);
                this.f2723a.draw(canvas);
                i10++;
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingTop = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            paddingTop = 0;
        }
        int childCount2 = recyclerView.getChildCount();
        while (i10 < childCount2) {
            View childAt2 = recyclerView.getChildAt(i10);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            Rect rect = this.f2725c;
            Objects.requireNonNull(layoutManager);
            RecyclerView.L(childAt2, rect);
            int iRound2 = Math.round(childAt2.getTranslationX()) + this.f2725c.right;
            this.f2723a.setBounds(iRound2 - this.f2723a.getIntrinsicWidth(), paddingTop, iRound2, height);
            this.f2723a.draw(canvas);
            i10++;
        }
        canvas.restore();
    }
}
