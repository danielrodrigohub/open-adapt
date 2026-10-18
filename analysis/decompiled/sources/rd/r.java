package rd;

import java.util.Objects;

/* JADX INFO: compiled from: PropertyReference0.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class r extends t implements wd.e {
    public r(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }

    @Override // rd.d
    public wd.a computeReflected() {
        Objects.requireNonNull(x.f14796a);
        return this;
    }

    @Override // qd.a
    public Object invoke() {
        return get();
    }
}
