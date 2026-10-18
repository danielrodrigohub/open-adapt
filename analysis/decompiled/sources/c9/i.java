package c9;

import com.nike.adapt.ui.modes.ModeRenameActivity;
import o7.x;
import rd.o;

/* JADX INFO: compiled from: ModeRenameActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ModeRenameActivity f4264h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(ModeRenameActivity modeRenameActivity) {
        super(0);
        this.f4264h = modeRenameActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f4264h.getClass().getSimpleName(), x.f12420a);
        return fd.o.f7408a;
    }
}
