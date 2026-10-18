package x8;

import android.animation.ObjectAnimator;
import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import com.nike.adapt.analytics.TrackManager;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v implements View.OnTouchListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18017h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f18018i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f18019j;

    public /* synthetic */ v(Object obj, Object obj2, int i10) {
        this.f18017h = i10;
        this.f18018i = obj;
        this.f18019j = obj2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ObjectAnimator objectAnimator;
        switch (this.f18017h) {
            case 0:
                View view2 = (View) this.f18018i;
                w wVar = (w) this.f18019j;
                p4.h.j(view2, "$view");
                p4.h.j(wVar, "this$0");
                if (view2.getTag() == h0.LOCK || wVar.i()) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        wVar.f18045y = true;
                        wVar.f18044x = true;
                        return true;
                    }
                    if (action == 1) {
                        wVar.f18044x = false;
                        ObjectAnimator objectAnimator2 = wVar.f18043w;
                        if (objectAnimator2 == null) {
                            return true;
                        }
                        objectAnimator2.cancel();
                        return true;
                    }
                    if (action != 2) {
                        return true;
                    }
                    Rect rect = new Rect();
                    view2.getGlobalVisibleRect(rect);
                    if (!rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY()) || (objectAnimator = wVar.f18043w) == null || objectAnimator.isRunning()) {
                        return true;
                    }
                    objectAnimator.start();
                    return true;
                }
                int action2 = motionEvent.getAction();
                if (action2 == 0) {
                    wVar.f18045y = false;
                    wVar.f18040t = 1;
                    wVar.f18027g = false;
                    float y7 = view2.getY();
                    wVar.f18022b = y7;
                    wVar.f18030j = y7 == ((float) wVar.d());
                    wVar.f18021a = view2.getY() - motionEvent.getRawY();
                    int iA = wVar.a(wVar.f18022b, false);
                    wVar.f18038r = iA;
                    wVar.f18037q = iA;
                    wVar.f18029i.invoke(new d1(view2, iA, iA, iA, new f1(0L, 1, null)));
                    return true;
                }
                if (action2 == 1) {
                    boolean z10 = wVar.f18027g;
                    if (!z10 && wVar.f18030j) {
                        TrackManager.INSTANCE.isLockdownInitiated();
                        view2.animate().y(wVar.d()).setDuration(200L).start();
                        qd.l<d1, fd.o> lVar = wVar.f18029i;
                        int i10 = wVar.f18038r;
                        int i11 = wVar.f18037q;
                        d1 d1Var = new d1(view2, i10, i11, i11, new h1(0L, 1, null));
                        wVar.f18037q = i11;
                        lVar.invoke(d1Var);
                    } else if (!z10) {
                        int i12 = (int) wVar.c()[wVar.f18037q];
                        if (wVar.f18028h != 2) {
                            TrackManager.INSTANCE.isLacingValueLeftChanged(i12);
                        } else {
                            TrackManager.INSTANCE.isLacingValueRightChanged(i12);
                        }
                        view2.animate().y(wVar.g()).setDuration(50L).start();
                        qd.l<d1, fd.o> lVar2 = wVar.f18029i;
                        int i13 = wVar.f18038r;
                        int i14 = wVar.f18037q;
                        d1 d1Var2 = new d1(view2, i13, i14, i14, new h1(0L, 1, null));
                        wVar.f18037q = i14;
                        lVar2.invoke(d1Var2);
                    }
                    wVar.f18040t = 1;
                    ObjectAnimator objectAnimator3 = wVar.f18043w;
                    if (objectAnimator3 != null) {
                        objectAnimator3.cancel();
                    }
                    if (wVar.f18044x) {
                        return true;
                    }
                    wVar.f18045y = false;
                    return true;
                }
                if (action2 == 2) {
                    Object obj = wVar.f18046z;
                    c0 c0Var = obj instanceof c0 ? (c0) obj : null;
                    if (c0Var != null) {
                        c0Var.g(wVar.f18028h == 2);
                    }
                    if (!wVar.f18044x && !wVar.f18045y && !wVar.f18027g) {
                        float f10 = wVar.f18023c;
                        float f11 = wVar.f18024d;
                        float rawX = motionEvent.getRawX();
                        if (!(f10 <= rawX && rawX <= f11)) {
                            wVar.f18027g = true;
                            view2.animate().y(wVar.f18022b).setDuration(Math.abs(wVar.f18037q - wVar.f18038r) * 25).start();
                            qd.l<d1, fd.o> lVar3 = wVar.f18029i;
                            int i15 = wVar.f18038r;
                            int i16 = wVar.f18037q;
                            d1 d1Var3 = new d1(view2, i15, i16, i16, new a(0L, 1, null));
                            wVar.f18037q = i15;
                            lVar3.invoke(d1Var3);
                            return true;
                        }
                        float rawY = motionEvent.getRawY() + wVar.f18021a;
                        if (rawY <= wVar.d() && !wVar.f18030j) {
                            view2.setY(wVar.d());
                        } else if (rawY <= wVar.b() || wVar.f18038r != 0) {
                            if (rawY > wVar.d()) {
                                wVar.f18030j = false;
                            }
                            if (rawY < ((Number) wVar.A.getValue()).intValue()) {
                                wVar.f18040t = 2;
                                view2.setY(((Number) wVar.A.getValue()).intValue());
                                wVar.f18027g = true;
                                view2.animate().y(wVar.d()).setDuration(400L).start();
                            } else if (rawY > ((Number) wVar.B.getValue()).intValue()) {
                                wVar.f18040t = 3;
                                view2.setY(((Number) wVar.B.getValue()).intValue());
                                wVar.f18027g = true;
                                view2.animate().y(wVar.b()).setDuration(400L).start();
                            } else {
                                view2.animate().y(rawY).setDuration(0L).start();
                            }
                        } else {
                            view2.setY(wVar.b());
                        }
                        if (!wVar.f18027g) {
                            int iA2 = wVar.a(rawY, false);
                            int i17 = wVar.f18037q;
                            if (i17 == iA2) {
                                return true;
                            }
                            qd.l<d1, fd.o> lVar4 = wVar.f18029i;
                            d1 d1Var4 = new d1(view2, wVar.f18038r, i17, iA2, new g1(0L, 1, null));
                            wVar.f18037q = iA2;
                            lVar4.invoke(d1Var4);
                            return true;
                        }
                        int i18 = wVar.f18040t;
                        if (i18 == 2) {
                            qd.l<d1, fd.o> lVar5 = wVar.f18029i;
                            int i19 = wVar.f18038r;
                            int i20 = wVar.f18037q;
                            int iA3 = wVar.a(rawY, true);
                            d1 d1Var5 = new d1(view2, i19, i20, iA3, new l0(0L, 1, null));
                            wVar.f18037q = iA3;
                            lVar5.invoke(d1Var5);
                            return true;
                        }
                        if (i18 != 3) {
                            return true;
                        }
                        qd.l<d1, fd.o> lVar6 = wVar.f18029i;
                        int i21 = wVar.f18038r;
                        int i22 = wVar.f18037q;
                        int iA4 = wVar.a(rawY, true);
                        d1 d1Var6 = new d1(view2, i21, i22, iA4, new h1(0L, 1, null));
                        wVar.f18037q = iA4;
                        lVar6.invoke(d1Var6);
                        return true;
                    }
                }
                return false;
            default:
                e9.d.a aVar = (e9.d.a) this.f18018i;
                e9.d dVar = (e9.d) this.f18019j;
                p4.h.j(aVar, "$holder");
                p4.h.j(dVar, "this$0");
                if (motionEvent != null && motionEvent.getActionMasked() == 0) {
                    aVar.f2453a.performHapticFeedback(3);
                    androidx.recyclerview.widget.t tVar = dVar.f6563e;
                    if (!((tVar.f2784m.d(tVar.f2789r, aVar) & 16711680) != 0)) {
                        Log.e("ItemTouchHelper", "Start drag has been called but dragging is not enabled");
                    } else if (aVar.f2453a.getParent() != tVar.f2789r) {
                        Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
                    } else {
                        VelocityTracker velocityTracker = tVar.f2791t;
                        if (velocityTracker != null) {
                            velocityTracker.recycle();
                        }
                        tVar.f2791t = VelocityTracker.obtain();
                        tVar.f2780i = 0.0f;
                        tVar.f2779h = 0.0f;
                        tVar.r(aVar, 2);
                    }
                }
                return true;
        }
    }
}
