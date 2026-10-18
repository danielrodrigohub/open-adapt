package androidx.appcompat.widget;

import android.os.Process;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.nike.adapt.ui.gestures.GesturesTutorialActivity;
import com.nike.adapt.ui.tooltip.TooltipOverlayView;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p4.h;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k1 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f1327h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f1328i;

    public /* synthetic */ k1(Object obj, int i10) {
        this.f1327h = i10;
        this.f1328i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1327h) {
            case 0:
                ((l1) this.f1328i).a();
                return;
            case 1:
                y0.d0.d dVar = ((y0.w) this.f1328i).f18283h;
                Collections.emptyList();
                dVar.a();
                return;
            case 2:
                r3.b.e eVar = (r3.b.e) this.f1328i;
                if (eVar.f14471d) {
                    return;
                }
                r3.e eVar2 = eVar.f14470c;
                if (eVar2 != null) {
                    eVar2.d(eVar.f14469b);
                }
                eVar.f14472e.f14455n.remove(eVar);
                eVar.f14471d = true;
                return;
            case 3:
                e4.g gVar = (e4.g) this.f1328i;
                synchronized (gVar.f6385a) {
                    if (gVar.f6396l) {
                        return;
                    }
                    long j10 = gVar.f6395k - 1;
                    gVar.f6395k = j10;
                    if (j10 > 0) {
                        return;
                    }
                    if (j10 >= 0) {
                        gVar.a();
                        return;
                    }
                    IllegalStateException illegalStateException = new IllegalStateException();
                    synchronized (gVar.f6385a) {
                        gVar.f6397m = illegalStateException;
                        break;
                    }
                    return;
                }
            case 4:
                DashMediaSource dashMediaSource = (DashMediaSource) this.f1328i;
                int i10 = DashMediaSource.W;
                dashMediaSource.D(false);
                return;
            case 5:
                Runnable runnable = (Runnable) this.f1328i;
                AtomicInteger atomicInteger = o7.e.f12371a;
                Process.setThreadPriority(10);
                runnable.run();
                return;
            case 6:
                GesturesTutorialActivity gesturesTutorialActivity = (GesturesTutorialActivity) this.f1328i;
                int i11 = GesturesTutorialActivity.d0;
                p4.h.j(gesturesTutorialActivity, "this$0");
                q7.h hVar = gesturesTutorialActivity.I;
                if (hVar == null) {
                    p4.h.C("binding");
                    throw null;
                }
                hVar.f13829c.e();
                q7.h hVar2 = gesturesTutorialActivity.I;
                if (hVar2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                hVar2.f13829c.setAlpha(1.0f);
                q7.h hVar3 = gesturesTutorialActivity.I;
                if (hVar3 != null) {
                    hVar3.f13829c.c(gesturesTutorialActivity.f5745b0);
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            default:
                final p9.d dVar2 = (p9.d) this.f1328i;
                int i12 = p9.d.C;
                p4.h.j(dVar2, "this$0");
                dVar2.f13375k.setVisibility(0);
                dVar2.f13376l.setAlpha(0.0f);
                dVar2.f13377m.setAlpha(0.0f);
                dVar2.f13379o.setAlpha(0.0f);
                float y7 = dVar2.f13376l.getY();
                float y10 = dVar2.f13377m.getY();
                float measuredHeight = dVar2.f13376l.getMeasuredHeight() * 0.08f * (dVar2.f13383s == 2 ? -1 : 1);
                dVar2.f13376l.setTranslationY(y7 + measuredHeight);
                dVar2.f13377m.setTranslationY(measuredHeight + y10);
                TooltipOverlayView tooltipOverlayView = dVar2.f13378n;
                p9.a aVar = dVar2.f13372h;
                Objects.requireNonNull(tooltipOverlayView);
                p4.h.j(aVar, "tooltipData");
                tooltipOverlayView.setAlpha(0.0f);
                tooltipOverlayView.setVisibility(0);
                tooltipOverlayView.animate().alpha(aVar.f13361j).setDuration(aVar.f13360i).start();
                ViewPropertyAnimator viewPropertyAnimatorAnimate = dVar2.f13380p.animate();
                viewPropertyAnimatorAnimate.alpha(1.0f);
                viewPropertyAnimatorAnimate.setStartDelay(dVar2.f13372h.f13362k);
                viewPropertyAnimatorAnimate.setDuration(dVar2.f13372h.f13363l);
                viewPropertyAnimatorAnimate.start();
                dVar2.f13387w = viewPropertyAnimatorAnimate;
                Interpolator interpolator = new Interpolator() { // from class: p9.b
                    @Override // android.animation.TimeInterpolator
                    public final float getInterpolation(float f10) {
                        d dVar3 = dVar2;
                        h.j(dVar3, "this$0");
                        return (float) (((double) 1) - (Math.cos(dVar3.f13372h.f13366o * ((double) f10)) * Math.pow(2.718281828459045d, ((double) (-f10)) / 0.15d)));
                    }
                };
                ViewPropertyAnimator viewPropertyAnimatorAnimate2 = dVar2.f13377m.animate();
                viewPropertyAnimatorAnimate2.alpha(1.0f);
                viewPropertyAnimatorAnimate2.translationY(y10);
                viewPropertyAnimatorAnimate2.setStartDelay(dVar2.f13372h.f13364m);
                viewPropertyAnimatorAnimate2.setDuration(dVar2.f13372h.f13365n);
                viewPropertyAnimatorAnimate2.setInterpolator(interpolator);
                viewPropertyAnimatorAnimate2.start();
                dVar2.f13388x = viewPropertyAnimatorAnimate2;
                ViewPropertyAnimator viewPropertyAnimatorAnimate3 = dVar2.f13376l.animate();
                viewPropertyAnimatorAnimate3.alpha(1.0f);
                viewPropertyAnimatorAnimate3.translationY(y7);
                viewPropertyAnimatorAnimate3.setStartDelay(dVar2.f13372h.f13364m);
                viewPropertyAnimatorAnimate3.setDuration(dVar2.f13372h.f13365n);
                viewPropertyAnimatorAnimate3.setInterpolator(interpolator);
                viewPropertyAnimatorAnimate3.start();
                dVar2.f13389y = viewPropertyAnimatorAnimate3;
                ViewPropertyAnimator viewPropertyAnimatorAnimate4 = dVar2.f13379o.animate();
                viewPropertyAnimatorAnimate4.alpha(1.0f);
                viewPropertyAnimatorAnimate4.setStartDelay(dVar2.f13372h.f13367p);
                viewPropertyAnimatorAnimate4.setDuration(dVar2.f13372h.f13368q);
                viewPropertyAnimatorAnimate4.setListener(new p9.c(dVar2));
                viewPropertyAnimatorAnimate4.start();
                dVar2.f13390z = viewPropertyAnimatorAnimate4;
                return;
        }
    }
}
