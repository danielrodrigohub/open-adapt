package v9;

import java.util.Objects;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "2.3.0")
public final class u1 extends k implements e2, t2 {
    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u1)) {
            return false;
        }
        Objects.requireNonNull((u1) obj);
        return p4.h.c(null, null) && p4.h.c(null, null);
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "AutoAdaptStopRequest(notConnected=null, minimumFirmwareRequirementNotMet=null)";
    }
}
