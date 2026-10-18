package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;

/* JADX INFO: compiled from: TimePickerView.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements View.OnTouchListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GestureDetector f5605h;

    public f(GestureDetector gestureDetector) {
        this.f5605h = gestureDetector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.f5605h.onTouchEvent(motionEvent);
        }
        return false;
    }
}
