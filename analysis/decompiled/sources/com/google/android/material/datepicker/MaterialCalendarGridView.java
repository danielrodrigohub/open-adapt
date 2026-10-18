package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.google.android.material.R;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class MaterialCalendarGridView extends GridView {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5170h;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        b0.e(null);
        if (o.u0(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.f5170h = o.v0(getContext(), R.attr.nestedScrollable);
        j0.a0.p(this, new n());
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final u getAdapter() {
        return (u) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        u adapter = getAdapter();
        d<?> dVar = adapter.f5260i;
        int iMax = Math.max(adapter.c(), getFirstVisiblePosition());
        int iMin = Math.min(adapter.e(), getLastVisiblePosition());
        adapter.getItem(iMax);
        adapter.getItem(iMin);
        Iterator<i0.d<Long, Long>> it = dVar.l().iterator();
        while (it.hasNext()) {
            Objects.requireNonNull(it.next());
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z10, int i10, Rect rect) {
        if (!z10) {
            super.onFocusChanged(false, i10, rect);
            return;
        }
        if (i10 == 33) {
            setSelection(getAdapter().e());
        } else if (i10 == 130) {
            setSelection(getAdapter().c());
        } else {
            super.onFocusChanged(true, i10, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().c()) {
            return true;
        }
        if (19 != i10) {
            return false;
        }
        setSelection(getAdapter().c());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i10, int i11) {
        if (!this.f5170h) {
            super.onMeasure(i10, i11);
            return;
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i10) {
        if (i10 < getAdapter().c()) {
            super.setSelection(getAdapter().c());
        } else {
            super.setSelection(i10);
        }
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof u)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), u.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
