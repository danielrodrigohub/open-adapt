package ob;

/* JADX INFO: compiled from: OIDCAuthCredential.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f12532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f12533b = 0;

    static {
        long jQ = c3.d.q(5, zd.c.MINUTES);
        zd.a.C0338a c0338a = zd.a.f19479i;
        f12532a = zd.a.o(jQ, zd.c.MILLISECONDS);
    }

    public static final xb.a a(c cVar, ed.e eVar) {
        p4.h.j(cVar, "<this>");
        p4.h.j(eVar, "telemetryProvider");
        return xb.a.Companion.a(cVar.getIdTokenString(), eVar);
    }
}
