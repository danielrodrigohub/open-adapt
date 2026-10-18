package ya;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f18735a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map<C0325a, b> f18736b = new LinkedHashMap();

    /* JADX INFO: renamed from: ya.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class C0325a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f18737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f18738b;

        public C0325a(String str, String str2) {
            p4.h.j(str, "pairId");
            p4.h.j(str2, "deviceId");
            this.f18737a = str;
            this.f18738b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0325a)) {
                return false;
            }
            C0325a c0325a = (C0325a) obj;
            return p4.h.c(this.f18737a, c0325a.f18737a) && p4.h.c(this.f18738b, c0325a.f18738b);
        }

        public final int hashCode() {
            return this.f18738b.hashCode() + (this.f18737a.hashCode() * 31);
        }

        public final String toString() {
            return a0.b.a("PairedKitDevice(pairId=", this.f18737a, ", deviceId=", this.f18738b, ")");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, java.util.Map<ya.a$a, ya.b>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.LinkedHashMap, java.util.Map<ya.a$a, ya.b>] */
    public final void a() {
        Iterator it = f18736b.entrySet().iterator();
        while (it.hasNext()) {
            b bVar = (b) ((Map.Entry) it.next()).getValue();
            v9.a.C0295a c0295a = v9.a.f16441i;
            bVar.f(v9.a.f16442j);
            bVar.F();
        }
        f18736b.clear();
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final b b(String str, ea.b bVar) {
        p4.h.j(str, "pairId");
        p4.h.j(bVar, "adaptKitDevice");
        Map<C0325a, b> map = f18736b;
        C0325a c0325a = new C0325a(str, bVar.f6612j);
        Object dVar = map.get(c0325a);
        if (dVar == null) {
            dVar = new d(str, bVar);
            map.put(c0325a, (b) dVar);
        }
        b bVar2 = (b) dVar;
        if (bVar2 instanceof d) {
            ((d) bVar2).f18759b = bVar;
        }
        return bVar2;
    }
}
