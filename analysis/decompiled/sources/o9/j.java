package o9;

import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import o7.x;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12510h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(ShoeControllerActivity shoeControllerActivity) {
        super(0);
        this.f12510h = shoeControllerActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        x.f12420a.a("Pressed: Lights");
        h9.s.f8356c.e(this.f12510h);
        return fd.o.f7408a;
    }
}
