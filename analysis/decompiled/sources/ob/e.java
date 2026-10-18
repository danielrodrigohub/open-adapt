package ob;

/* JADX INFO: compiled from: OIDCAuthError.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class e extends Error {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f12534h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Throwable f12535i;

    /* JADX INFO: compiled from: OIDCAuthError.kt */
    public static final class a extends e {
        public a(Throwable th) {
            super(p4.h.B("browser not found: ", ""), th);
        }
    }

    /* JADX INFO: compiled from: OIDCAuthError.kt */
    public static final class b extends e {
        public b(Throwable th) {
            super(p4.h.B("credential storage failed: ", ""), th);
        }
    }

    /* JADX INFO: compiled from: OIDCAuthError.kt */
    public static final class c extends e {
        public c(Throwable th) {
            super(p4.h.B("explicitly cancelled: ", ""), th);
        }
    }

    /* JADX INFO: compiled from: OIDCAuthError.kt */
    public static final class d extends e {
        public /* synthetic */ d(String str, Throwable th, int i10) {
            this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? null : th);
        }

        public d(String str, Throwable th) {
            super(p4.h.B("internal server error: ", str), th);
        }
    }

    /* JADX INFO: renamed from: ob.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OIDCAuthError.kt */
    public static final class C0224e extends e {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0224e(String str, Throwable th) {
            super("JwtDecodingFailed", th);
            p4.h.j(str, "description");
        }
    }

    /* JADX INFO: compiled from: OIDCAuthError.kt */
    public static final class f extends e {
        public f(Throwable th) {
            super(p4.h.B("no internet connection: ", ""), th);
        }
    }

    /* JADX INFO: compiled from: OIDCAuthError.kt */
    public static final class g extends e {
        public g() {
            super(p4.h.B("Infrastructure stack differs from credential: ", "Sign in failed due to wrong stack"), null);
        }
    }

    public e(String str, Throwable th) {
        super(str, th);
        this.f12534h = str;
        this.f12535i = th;
    }
}
