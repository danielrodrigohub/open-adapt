package v9;

import java.util.Objects;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "2.3.0")
public final class s5 extends k implements e2, t2 {
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
        if (!(obj instanceof s5)) {
            return false;
        }
        Objects.requireNonNull((s5) obj);
        return p4.h.c(null, null) && p4.h.c(null, null) && p4.h.c(null, null);
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "SessionDownloadDeleteRequest(adaptKitSessionId=null, notConnected=null, minimumFirmwareRequirementNotMet=null)";
    }
}
