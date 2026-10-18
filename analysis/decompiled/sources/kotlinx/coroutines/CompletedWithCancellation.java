package kotlinx.coroutines;

import a0.b;
import fd.o;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CompletedWithCancellation {
    public final l<Throwable, o> onCancellation;
    public final Object result;

    /* JADX WARN: Multi-variable type inference failed */
    public CompletedWithCancellation(Object obj, l<? super Throwable, o> lVar) {
        this.result = obj;
        this.onCancellation = lVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompletedWithCancellation)) {
            return false;
        }
        CompletedWithCancellation completedWithCancellation = (CompletedWithCancellation) obj;
        return h.c(this.result, completedWithCancellation.result) && h.c(this.onCancellation, completedWithCancellation.onCancellation);
    }

    public int hashCode() {
        Object obj = this.result;
        return this.onCancellation.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public String toString() {
        StringBuilder sbC = b.c("CompletedWithCancellation(result=");
        sbC.append(this.result);
        sbC.append(", onCancellation=");
        sbC.append(this.onCancellation);
        sbC.append(')');
        return sbC.toString();
    }
}
