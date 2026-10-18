package m9;

import com.nike.adapt.ui.settings.ShoeProfileActivity;

/* JADX INFO: compiled from: ShoeProfileActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeProfileActivity f10872h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(ShoeProfileActivity shoeProfileActivity) {
        super(0);
        this.f10872h = shoeProfileActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f10872h.getClass().getSimpleName(), o7.x.f12420a);
        return fd.o.f7408a;
    }
}
