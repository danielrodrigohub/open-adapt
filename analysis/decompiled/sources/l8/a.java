package l8;

import com.nike.adapt.ui.gestures.GesturesTutorialActivity;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import n3.k0;
import o7.x;
import p4.h;
import w8.j;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f10170h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f10171i;

    public /* synthetic */ a(Object obj, int i10) {
        this.f10170h = i10;
        this.f10171i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10170h) {
            case 0:
                b bVar = (b) this.f10171i;
                h.j(bVar, "this$0");
                x.f12420a.a("Battery Alarm: Was not able to connect within timeout limit");
                bVar.a();
                return;
            case 1:
                GesturesTutorialActivity gesturesTutorialActivity = (GesturesTutorialActivity) this.f10171i;
                int i10 = GesturesTutorialActivity.d0;
                h.j(gesturesTutorialActivity, "this$0");
                gesturesTutorialActivity.s0();
                k0 k0Var = gesturesTutorialActivity.N;
                if (k0Var == null) {
                    h.C("exoPlayer");
                    throw null;
                }
                k0Var.R(6100L);
                gesturesTutorialActivity.r0(true);
                q7.h hVar = gesturesTutorialActivity.I;
                if (hVar != null) {
                    hVar.f13835i.animate().alpha(0.0f).setDuration(250L).withEndAction(new j(gesturesTutorialActivity, 0)).setStartDelay(100L).start();
                    return;
                } else {
                    h.C("binding");
                    throw null;
                }
            default:
                LightPacksActivity lightPacksActivity = (LightPacksActivity) this.f10171i;
                LightPacksActivity.a aVar = LightPacksActivity.f5779g0;
                h.j(lightPacksActivity, "this$0");
                lightPacksActivity.q0();
                return;
        }
    }
}
