package w8;

import com.nike.adapt.ui.gestures.GesturesActivity;
import o7.x;
import rd.o;

/* JADX INFO: compiled from: GesturesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GesturesActivity f17248h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(GesturesActivity gesturesActivity) {
        super(0);
        this.f17248h = gesturesActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f17248h.getClass().getSimpleName(), x.f12420a);
        return fd.o.f7408a;
    }
}
