package c9;

import com.nike.adapt.ui.modes.ModeSelectionActivity;
import o7.x;
import rd.o;

/* JADX INFO: compiled from: ModeSelectionActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ModeSelectionActivity f4266h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(ModeSelectionActivity modeSelectionActivity) {
        super(0);
        this.f4266h = modeSelectionActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f4266h.getClass().getSimpleName(), x.f12420a);
        return fd.o.f7408a;
    }
}
