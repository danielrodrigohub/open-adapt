package eb;

import gd.q;
import java.util.Map;
import p4.h;

/* JADX INFO: compiled from: TelemetryType.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6709h;

    public a(String str) {
        h.j(str, "message");
        this.f6709h = str;
    }

    @Override // eb.d
    public final String b() {
        return this.f6709h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && h.c(this.f6709h, ((a) obj).f6709h);
    }

    public final int hashCode() {
        return this.f6709h.hashCode();
    }

    @Override // eb.d
    public final Map<String, Object> m() {
        return q.f8071h;
    }

    public final String toString() {
        return a0.d.c("MessageTelemetryInfo(message=", this.f6709h, ")");
    }
}
