package o5;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.Matrix;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: TouchTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, d.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f12348j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final GestureDetector f12350l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PointF f12346h = new PointF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PointF f12347i = new PointF();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f12349k = 25.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile float f12351m = 3.1415927f;

    /* JADX INFO: compiled from: TouchTracker.java */
    public interface a {
    }

    public k(Context context, a aVar) {
        this.f12348j = aVar;
        this.f12350l = new GestureDetector(context, this);
    }

    @Override // o5.d.a
    public final void a(float[] fArr, float f10) {
        this.f12351m = -f10;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.f12346h.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x10 = (motionEvent2.getX() - this.f12346h.x) / this.f12349k;
        float y7 = motionEvent2.getY();
        PointF pointF = this.f12346h;
        float f12 = (y7 - pointF.y) / this.f12349k;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d10 = this.f12351m;
        float fCos = (float) Math.cos(d10);
        float fSin = (float) Math.sin(d10);
        PointF pointF2 = this.f12347i;
        pointF2.x -= (fCos * x10) - (fSin * f12);
        float f13 = (fCos * f12) + (fSin * x10) + pointF2.y;
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f13));
        a aVar = this.f12348j;
        PointF pointF3 = this.f12347i;
        j.a aVar2 = (j.a) aVar;
        synchronized (aVar2) {
            aVar2.f12341n = pointF3.y;
            aVar2.b();
            Matrix.setRotateM(aVar2.f12340m, 0, -pointF3.x, 0.0f, 1.0f, 0.0f);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return j.this.performClick();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f12350l.onTouchEvent(motionEvent);
    }
}
