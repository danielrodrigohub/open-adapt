package rd;

import java.util.Objects;

/* JADX INFO: compiled from: FunctionReference.java */
/* JADX INFO: loaded from: classes.dex */
public class l extends d implements k, wd.d {
    private final int arity;
    private final int flags;

    public l(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, (i11 & 1) == 1);
        this.arity = i10;
        this.flags = i11 >> 1;
    }

    @Override // rd.d
    public wd.a computeReflected() {
        Objects.requireNonNull(x.f14796a);
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            return getName().equals(lVar.getName()) && getSignature().equals(lVar.getSignature()) && this.flags == lVar.flags && this.arity == lVar.arity && p4.h.c(getBoundReceiver(), lVar.getBoundReceiver()) && p4.h.c(getOwner(), lVar.getOwner());
        }
        if (obj instanceof wd.d) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // rd.k
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    public String toString() {
        wd.a aVarCompute = compute();
        if (aVarCompute != this) {
            return aVarCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        StringBuilder sbC = a0.b.c("function ");
        sbC.append(getName());
        sbC.append(" (Kotlin reflection is not available)");
        return sbC.toString();
    }
}
