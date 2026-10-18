package q8;

import com.nike.adapt.ui.battery.BatteryStateActivity;
import o7.x;
import rd.o;

/* JADX INFO: compiled from: BatteryStateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BatteryStateActivity f14163h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(BatteryStateActivity batteryStateActivity) {
        super(0);
        this.f14163h = batteryStateActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f14163h.getClass().getSimpleName(), x.f12420a);
        return fd.o.f7408a;
    }
}
