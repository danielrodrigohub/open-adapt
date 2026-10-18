package a8;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: SendStatsResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        Objects.requireNonNull((f) obj);
        return p4.h.c(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode((Object[]) null);
    }

    public final String toString() {
        return a0.d.c("SendStatsResult(results=", Arrays.toString((Object[]) null), ")");
    }
}
