package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import java.util.Objects;

/* JADX INFO: compiled from: TimePickerView.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TimePickerView f5604h;

    public e(TimePickerView timePickerView) {
        this.f5604h = timePickerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        TimePickerView timePickerView = this.f5604h;
        int i10 = TimePickerView.B;
        Objects.requireNonNull(timePickerView);
        return false;
    }
}
