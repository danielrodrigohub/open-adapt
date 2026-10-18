package fd;

import java.io.Serializable;

/* JADX INFO: compiled from: Result.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f<T> implements Serializable {

    /* JADX INFO: compiled from: Result.kt */
    public static final class a implements Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Throwable f7390h;

        public a(Throwable th) {
            p4.h.j(th, "exception");
            this.f7390h = th;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof a) && p4.h.c(this.f7390h, ((a) obj).f7390h);
        }

        public final int hashCode() {
            return this.f7390h.hashCode();
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("Failure(");
            sbC.append(this.f7390h);
            sbC.append(')');
            return sbC.toString();
        }
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).f7390h;
        }
        return null;
    }
}
