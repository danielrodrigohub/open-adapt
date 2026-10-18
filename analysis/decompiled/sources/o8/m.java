package o8;

import com.nike.adapt.ui.PairingActivity;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends rd.o implements qd.l<Throwable, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12471h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(PairingActivity pairingActivity) {
        super(1);
        this.f12471h = pairingActivity;
    }

    @Override // qd.l
    public final fd.o invoke(Throwable th) {
        Job job = this.f12471h.N;
        if (job != null) {
            job.start();
        }
        return fd.o.f7408a;
    }
}
