package v9;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class f extends m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f16538i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f16539j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Throwable f16540k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f16541l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f16542m;

    public f(String str, a aVar, Throwable th) {
        super(aVar);
        this.f16538i = str;
        this.f16539j = aVar;
        this.f16540k = th;
        boolean zJ0 = yd.s.j0(str, 'L', true);
        this.f16541l = zJ0;
        this.f16542m = !zJ0;
    }

    public a a() {
        return this.f16539j;
    }

    @Override // v9.m, eb.d
    public final String b() {
        String strE = e();
        String str = this.f16538i;
        String strC = c();
        if (strC == null) {
            strC = f();
        }
        return a0.b.a(strE, " ", str, " ", strC);
    }

    public String c() {
        return null;
    }

    public Throwable d() {
        return this.f16540k;
    }

    public abstract String e();

    public final String f() {
        Throwable thD = d();
        String message = d().getMessage();
        if (message == null) {
            message = "no message";
        }
        return "Request not processed. Please see [" + thD + "] message: [" + message + " for details.";
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        String message = d().getMessage();
        return message == null ? f() : message;
    }
}
