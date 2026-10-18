package rd;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: CallableReference.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d implements wd.a, Serializable {
    public static final Object NO_RECEIVER = a.f14783h;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    public final Object receiver;
    private transient wd.a reflected;
    private final String signature;

    /* JADX INFO: compiled from: CallableReference.java */
    public static class a implements Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f14783h = new a();
    }

    public d() {
        this(NO_RECEIVER);
    }

    public wd.a compute() {
        wd.a aVar = this.reflected;
        if (aVar != null) {
            return aVar;
        }
        wd.a aVarComputeReflected = computeReflected();
        this.reflected = aVarComputeReflected;
        return aVarComputeReflected;
    }

    public abstract wd.a computeReflected();

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public wd.c getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (!this.isTopLevel) {
            return x.a(cls);
        }
        Objects.requireNonNull(x.f14796a);
        return new q(cls);
    }

    public String getSignature() {
        return this.signature;
    }

    public d(Object obj) {
        this(obj, null, null, null, false);
    }

    public d(Object obj, Class cls, String str, String str2, boolean z10) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z10;
    }
}
