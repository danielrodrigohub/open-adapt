package y8;

import com.nike.adapt.ui.lighting.LightingEffectsActivity;
import o7.x;
import rd.o;

/* JADX INFO: compiled from: LightingEffectsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ LightingEffectsActivity f18692h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(LightingEffectsActivity lightingEffectsActivity) {
        super(0);
        this.f18692h = lightingEffectsActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f18692h.getClass().getSimpleName(), x.f12420a);
        return fd.o.f7408a;
    }
}
