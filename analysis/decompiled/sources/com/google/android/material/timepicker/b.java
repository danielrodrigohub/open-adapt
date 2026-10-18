package com.google.android.material.timepicker;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.R;

/* JADX INFO: compiled from: ClockFaceView.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f5600d;

    public b(ClockFaceView clockFaceView) {
        this.f5600d = clockFaceView;
    }

    @Override // j0.a
    public final void d(View view, k0.f fVar) {
        this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
        int iIntValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (iIntValue > 0) {
            fVar.A(this.f5600d.F.get(iIntValue - 1));
        }
        fVar.q(k0.f.c.a(0, 1, iIntValue, 1, view.isSelected()));
        fVar.o(true);
        fVar.b(k0.f.a.f9555e);
    }

    @Override // j0.a
    public final boolean g(View view, int i10, Bundle bundle) {
        if (i10 != 16) {
            return super.g(view, i10, bundle);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        float x10 = view.getX() + (view.getWidth() / 2.0f);
        float height = (view.getHeight() / 2.0f) + view.getY();
        this.f5600d.C.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, x10, height, 0));
        this.f5600d.C.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, x10, height, 0));
        return true;
    }
}
