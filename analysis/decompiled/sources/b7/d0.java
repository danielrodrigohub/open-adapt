package b7;

/* JADX INFO: compiled from: LazyFieldLite.java */
/* JADX INFO: loaded from: classes.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile q0 f3381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile i f3382b;

    static {
        p.a();
    }

    public final q0 a(q0 q0Var) {
        if (this.f3381a == null) {
            synchronized (this) {
                if (this.f3381a == null) {
                    try {
                        this.f3381a = q0Var;
                        this.f3382b = i.f3419i;
                    } catch (a0 unused) {
                        this.f3381a = q0Var;
                        this.f3382b = i.f3419i;
                    }
                }
            }
        }
        return this.f3381a;
    }

    public final i b() {
        if (this.f3382b != null) {
            return this.f3382b;
        }
        synchronized (this) {
            if (this.f3382b != null) {
                return this.f3382b;
            }
            if (this.f3381a == null) {
                this.f3382b = i.f3419i;
            } else {
                this.f3382b = this.f3381a.e();
            }
            return this.f3382b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        q0 q0Var = this.f3381a;
        q0 q0Var2 = d0Var.f3381a;
        if (q0Var == null && q0Var2 == null) {
            return b().equals(d0Var.b());
        }
        if (q0Var == null || q0Var2 == null) {
            return q0Var != null ? q0Var.equals(d0Var.a(q0Var.b())) : a(q0Var2.b()).equals(q0Var2);
        }
        return q0Var.equals(q0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
