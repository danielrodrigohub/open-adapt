package b6;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: InsetDialogOnTouchListener.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Dialog f3343h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3344i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3345j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3346k;

    public a(Dialog dialog, Rect rect) {
        this.f3343h = dialog;
        this.f3344i = rect.left;
        this.f3345j = rect.top;
        this.f3346k = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = viewFindViewById.getLeft() + this.f3344i;
        int width = viewFindViewById.getWidth() + left;
        int top = viewFindViewById.getTop() + this.f3345j;
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i10 = this.f3346k;
            motionEventObtain.setLocation((-i10) - 1, (-i10) - 1);
        }
        view.performClick();
        return this.f3343h.onTouchEvent(motionEventObtain);
    }
}
