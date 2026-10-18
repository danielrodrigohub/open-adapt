package m9;

import com.nike.adapt.ui.settings.ColorWayActivity;

/* JADX INFO: compiled from: ColorWayActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ColorWayActivity f10833h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ColorWayActivity colorWayActivity) {
        super(0);
        this.f10833h = colorWayActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f10833h.getClass().getSimpleName(), o7.x.f12420a);
        return fd.o.f7408a;
    }
}
