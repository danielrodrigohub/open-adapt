package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: ClockFaceView.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f5599h;

    public a(ClockFaceView clockFaceView) {
        this.f5599h = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        if (!this.f5599h.isShown()) {
            return true;
        }
        this.f5599h.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = this.f5599h.getHeight() / 2;
        ClockFaceView clockFaceView = this.f5599h;
        int i10 = (height - clockFaceView.C.f5588m) - clockFaceView.J;
        if (i10 != clockFaceView.A) {
            clockFaceView.A = i10;
            clockFaceView.s();
            ClockHandView clockHandView = clockFaceView.C;
            clockHandView.f5596u = clockFaceView.A;
            clockHandView.invalidate();
        }
        return true;
    }
}
