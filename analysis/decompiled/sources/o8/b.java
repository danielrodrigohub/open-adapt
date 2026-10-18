package o8;

import com.nike.adapt.ui.FindYourFitActivity;

/* JADX INFO: compiled from: FindYourFitActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FindYourFitActivity f12440h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(FindYourFitActivity findYourFitActivity) {
        super(0);
        this.f12440h = findYourFitActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f12440h.getClass().getSimpleName(), o7.x.f12420a);
        return fd.o.f7408a;
    }
}
