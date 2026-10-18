package y0;

import android.os.Process;
import android.widget.FrameLayout;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.ui.gestures.GesturesTutorialActivity;
import com.nike.adapt.ui.helper.NotificationToast;
import com.nike.adapt.ui.lighting.LightingActivity;
import java.util.Map;
import p4.i0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class x implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f18285i;

    public /* synthetic */ x(Object obj, int i10) {
        this.f18284h = i10;
        this.f18285i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18284h) {
            case 0:
                ((z) this.f18285i).f18288h.a();
                return;
            case 1:
                i0 i0Var = (i0) this.f18285i;
                Map<String, String> map = i0.T;
                i0Var.z();
                return;
            case 2:
                com.google.android.exoplayer2.source.rtsp.f.b((com.google.android.exoplayer2.source.rtsp.f) this.f18285i);
                return;
            case 3:
                com.google.android.exoplayer2.ui.b bVar = (com.google.android.exoplayer2.ui.b) this.f18285i;
                int i10 = com.google.android.exoplayer2.ui.b.U;
                bVar.g(false);
                return;
            case 4:
                Runnable runnable = (Runnable) this.f18285i;
                o7.x xVar = o7.x.f12420a;
                Process.setThreadPriority(10);
                runnable.run();
                return;
            case 5:
                GesturesTutorialActivity gesturesTutorialActivity = (GesturesTutorialActivity) this.f18285i;
                p4.h.j(gesturesTutorialActivity, "this$0");
                q7.h hVar = gesturesTutorialActivity.I;
                if (hVar != null) {
                    hVar.f13830d.setVisibility(8);
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            case 6:
                NotificationToast notificationToast = (NotificationToast) this.f18285i;
                int i11 = NotificationToast.f5755k;
                p4.h.j(notificationToast, "this$0");
                notificationToast.b(false);
                return;
            case 7:
                LightingActivity lightingActivity = (LightingActivity) this.f18285i;
                int i12 = LightingActivity.T;
                p4.h.j(lightingActivity, "this$0");
                p7.b bVar2 = p7.b.f13281a;
                FrameLayout frameLayout = lightingActivity.r0().f13897k;
                p4.h.i(frameLayout, "binding.transitionToView");
                p7.b.f13281a.e(frameLayout, InMemoryCache.INSTANCE.getActiveLightPack());
                return;
            default:
                ic.p pVar = (ic.p) this.f18285i;
                ic.g gVar = ic.g.f9016b;
                p4.h.j(pVar, "$this_apply");
                ic.g.f9016b.b(pVar.f9065c);
                return;
        }
    }
}
