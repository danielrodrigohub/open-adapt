package o9;

import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import o7.x;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12506h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ShoeControllerActivity shoeControllerActivity) {
        super(0);
        this.f12506h = shoeControllerActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f12506h.getClass().getSimpleName(), x.f12420a);
        return fd.o.f7408a;
    }
}
