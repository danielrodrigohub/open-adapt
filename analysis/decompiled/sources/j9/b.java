package j9;

import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.nike.adapt.adk.IDeviceController;
import h8.d;
import p4.h;
import s9.p;
import s9.r;

/* JADX INFO: compiled from: AdaptShoeUtils.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IDeviceController f9476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f9477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9479d;

    public b(IDeviceController iDeviceController, d dVar) {
        h.j(dVar, "preference");
        this.f9476a = iDeviceController;
        this.f9477b = dVar;
    }

    public final int a(boolean z10) {
        r rVarD = this.f9477b.d();
        p pVar = p.f15222a;
        float f10 = 0.8f;
        switch (rVarD == null ? -1 : p.b.f15227a[rVarD.ordinal()]) {
            case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
            case 1:
            case 3:
            case 5:
            case 6:
                break;
            case 0:
            default:
                throw new j2.a();
            case 2:
            case 4:
                f10 = 0.7f;
                break;
        }
        return (int) (f10 * (z10 ? this.f9478c : this.f9479d));
    }
}
