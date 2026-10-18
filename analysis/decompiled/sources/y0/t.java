package y0;

import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.gestures.GesturesTutorialActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f18276i;

    public /* synthetic */ t(Object obj, int i10) {
        this.f18275h = i10;
        this.f18276i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18275h) {
            case 0:
                d0.d dVar = ((w) this.f18276i).f18283h;
                Collections.emptyList();
                dVar.a();
                return;
            case 1:
                ((r3.a) this.f18276i).d(null);
                return;
            case 2:
                SsMediaSource ssMediaSource = (SsMediaSource) this.f18276i;
                int i10 = SsMediaSource.I;
                ssMediaSource.z();
                return;
            case 3:
                u8.q qVar = (u8.q) this.f18276i;
                p4.h.j(qVar, "this$0");
                qVar.f(true);
                return;
            case 4:
                GesturesTutorialActivity gesturesTutorialActivity = (GesturesTutorialActivity) this.f18276i;
                int i11 = GesturesTutorialActivity.d0;
                p4.h.j(gesturesTutorialActivity, "this$0");
                TrackManager.gestureTimeoutFailure$default(TrackManager.INSTANCE, null, (gesturesTutorialActivity.U || gesturesTutorialActivity.V) ? 2 : 1, 1, null);
                gesturesTutorialActivity.S++;
                gesturesTutorialActivity.v0(false, false);
                return;
            case 5:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f18276i;
                int i12 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                x8.f0 f0Var = shoeControllerActivity.N;
                if (f0Var == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
                f0Var.p(false);
                x8.f0 f0Var2 = shoeControllerActivity.N;
                if (f0Var2 != null) {
                    f0Var2.e();
                    return;
                } else {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            default:
                ya.d dVar2 = (ya.d) this.f18276i;
                p4.h.j(dVar2, "this$0");
                while (true) {
                    try {
                        Thread.sleep(20L);
                        ya.h0<?> h0VarPoll = dVar2.f18775r.poll();
                        if (h0VarPoll != null) {
                            v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", "Executing: " + h0VarPoll.t(), null, 4, null);
                            z9.a.ADAPT_DEVICE.b(new ya.a0(dVar2, h0VarPoll));
                            v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", "Waiting: " + h0VarPoll.t(), null, 4, null);
                            try {
                                h0VarPoll.f19031h.get(h0VarPoll.q(), TimeUnit.SECONDS);
                            } catch (Throwable th) {
                                d3.e.j().b("QUEUE_BIGFOOT", h0VarPoll.p() + ".exception " + th.getClass().getSimpleName() + "} " + Thread.currentThread().getName() + " timeout in seconds: " + h0VarPoll.q());
                                h0VarPoll.k(th);
                            }
                            dVar2.f18780w = null;
                            long jCurrentTimeMillis = System.currentTimeMillis() - h0VarPoll.f19033j;
                            v9.d.a.a(d3.e.j(), "THREAD_WATCH_CMD_" + (jCurrentTimeMillis / ((long) 1000)), "Millis from init->complete: " + jCurrentTimeMillis + " command: " + h0VarPoll.p(), null, 4, null);
                            v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", "Completed: " + h0VarPoll.t(), null, 4, null);
                            break;
                        }
                    } catch (InterruptedException unused) {
                        v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", "Closed Queue", null, 4, null);
                        return;
                    }
                }
                break;
        }
    }
}
