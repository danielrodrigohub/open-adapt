package c9;

import com.nike.adapt.ui.modes.ModeAdditionActivity;
import o7.x;
import rd.o;

/* JADX INFO: compiled from: ModeAdditionActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ModeAdditionActivity f4257h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ModeAdditionActivity modeAdditionActivity) {
        super(0);
        this.f4257h = modeAdditionActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f4257h.getClass().getSimpleName(), x.f12420a);
        return fd.o.f7408a;
    }
}
