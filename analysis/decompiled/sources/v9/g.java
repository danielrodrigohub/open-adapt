package v9;

import java.util.Map;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class g extends da.g implements eb.d {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f16560k;

    public g(String str, a aVar) {
        super(str, aVar);
        this.f16560k = aVar;
    }

    public a a() {
        return this.f16560k;
    }

    @Override // eb.d
    public final String b() {
        String strD = d();
        String str = this.f6154h;
        String strC = c();
        return a1.f.d(k1.a.a(strD, " for ", str, " ", strC == null || strC.length() == 0 ? "" : a0.d.c("[", c(), "] ")), "from ", a().c());
    }

    public String c() {
        return null;
    }

    public abstract String d();

    @Override // eb.d
    public final Map<String, Object> m() {
        return gd.q.f8071h;
    }
}
