package m7;

/* JADX INFO: compiled from: LazyFieldLite.java */
/* JADX INFO: loaded from: classes.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile p0 f10623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile i f10624b;

    static {
        o.a();
    }

    public final p0 a(p0 p0Var) {
        if (this.f10623a == null) {
            synchronized (this) {
                if (this.f10623a == null) {
                    try {
                        this.f10623a = p0Var;
                        this.f10624b = i.f10666i;
                    } catch (z unused) {
                        this.f10623a = p0Var;
                        this.f10624b = i.f10666i;
                    }
                }
            }
        }
        return this.f10623a;
    }

    public final i b() {
        if (this.f10624b != null) {
            return this.f10624b;
        }
        synchronized (this) {
            if (this.f10624b != null) {
                return this.f10624b;
            }
            if (this.f10623a == null) {
                this.f10624b = i.f10666i;
            } else {
                this.f10624b = this.f10623a.e();
            }
            return this.f10624b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        p0 p0Var = this.f10623a;
        p0 p0Var2 = c0Var.f10623a;
        if (p0Var == null && p0Var2 == null) {
            return b().equals(c0Var.b());
        }
        if (p0Var == null || p0Var2 == null) {
            return p0Var != null ? p0Var.equals(c0Var.a(p0Var.b())) : a(p0Var2.b()).equals(p0Var2);
        }
        return p0Var.equals(p0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
