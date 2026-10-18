package ad;

import java.util.UUID;
import p4.h;

/* JADX INFO: compiled from: Session.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements yc.a.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UUID f617h;

    public f() {
        this(null, 1, null);
    }

    public f(UUID uuid) {
        this.f617h = uuid;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && h.c(this.f617h, ((f) obj).f617h);
    }

    public final int hashCode() {
        return this.f617h.hashCode();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Session(id=");
        sbC.append(this.f617h);
        sbC.append(')');
        return sbC.toString();
    }

    public f(UUID uuid, int i10, rd.h hVar) {
        UUID uuidRandomUUID = UUID.randomUUID();
        h.i(uuidRandomUUID, "randomUUID()");
        this.f617h = uuidRandomUUID;
    }
}
