package rd;

/* JADX INFO: compiled from: PropertyReference.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class t extends d implements wd.f {
    public t() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            return getOwner().equals(tVar.getOwner()) && getName().equals(tVar.getName()) && getSignature().equals(tVar.getSignature()) && p4.h.c(getBoundReceiver(), tVar.getBoundReceiver());
        }
        if (obj instanceof wd.f) {
            return obj.equals(compute());
        }
        return false;
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner().hashCode() * 31)) * 31);
    }

    public String toString() {
        wd.a aVarCompute = compute();
        if (aVarCompute != this) {
            return aVarCompute.toString();
        }
        StringBuilder sbC = a0.b.c("property ");
        sbC.append(getName());
        sbC.append(" (Kotlin reflection is not available)");
        return sbC.toString();
    }

    public t(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, (i10 & 1) == 1);
    }
}
