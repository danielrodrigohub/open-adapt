package eb;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p4.h;
import yd.o;

/* JADX INFO: compiled from: TelemetryLogImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f6711b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f6710a = new f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f6712c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List<g> f6713d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f6714e = "NUID_NOT_PRESENT";

    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList, java.util.List<eb.g>] */
    @Override // eb.e
    public final void a(g... gVarArr) {
        synchronized (f6712c) {
            if (f6711b) {
                for (g gVar : gVarArr) {
                    f6710a.c(gVar);
                    gb.c.f7932a.c(new gb.a(gVar.f6716b, gVar.f6715a, gVar.f6717c));
                }
            } else {
                for (g gVar2 : gVarArr) {
                    f6710a.c(gVar2);
                    f6713d.add(gVar2);
                }
            }
        }
    }

    public final void b(String str) {
        if (str == null || o.b0(str)) {
            Objects.requireNonNull(gb.c.f7932a);
            gb.c.f7942k = "NUID_NOT_PRESENT";
            f6714e = "NUID_NOT_PRESENT";
        } else {
            Objects.requireNonNull(gb.c.f7932a);
            gb.c.f7942k = str;
            f6714e = str;
        }
    }

    public final void c(g gVar) {
        String str;
        h.j(gVar, "telemetryType");
        fb.e eVarJ = d3.e.j();
        String strD = androidx.recyclerview.widget.d.d(gVar.f6715a);
        String str2 = gVar.f6716b;
        if (!gVar.f6717c.isEmpty()) {
            str = "attributes: " + gVar.f6717c;
        } else {
            str = "";
        }
        v9.d.a.a(eVarJ, "telemetry", a0.b.a(strD, " ", str2, " ", str), null, 4, null);
    }
}
