package ob;

/* JADX INFO: compiled from: OIDCAuthResult.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: compiled from: OIDCAuthResult.kt */
    public static final class a extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ob.b f12537a;

        public a(ob.b bVar) {
            this.f12537a = bVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && p4.h.c(this.f12537a, ((a) obj).f12537a);
        }

        public final int hashCode() {
            return this.f12537a.hashCode();
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("Registered(oidcAuthCredential=");
            sbC.append(this.f12537a);
            sbC.append(')');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: OIDCAuthResult.kt */
    public static final class b extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ob.b f12538a;

        public b(ob.b bVar) {
            this.f12538a = bVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && p4.h.c(this.f12538a, ((b) obj).f12538a);
        }

        public final int hashCode() {
            return this.f12538a.hashCode();
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("SignedIn(oidcAuthCredential=");
            sbC.append(this.f12538a);
            sbC.append(')');
            return sbC.toString();
        }
    }
}
