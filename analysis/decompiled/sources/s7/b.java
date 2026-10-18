package s7;

import fe.c;
import fe.d;
import fe.g;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import o7.x;
import p4.h;

/* JADX INFO: compiled from: EventBus.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f15149a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f15150b;

    /* JADX INFO: compiled from: EventBus.kt */
    public static final class a implements g {
        @Override // fe.g
        public final void a(Level level, String str) {
        }

        @Override // fe.g
        public final void d(Level level, String str, Throwable th) {
        }
    }

    static {
        Map<Class<?>, List<Class<?>>> map = c.f7416r;
        d dVar = new d();
        dVar.f7445f = true;
        dVar.f7444e = false;
        dVar.f7441b = false;
        dVar.f7440a = false;
        dVar.f7443d = false;
        dVar.f7442c = false;
        dVar.f7447h = new a();
        f15150b = new c(dVar);
    }

    public final void a(i8.b bVar) {
        h.j(bVar, "actionResult");
        try {
            f15150b.e(bVar);
        } catch (Throwable th) {
            x.f12420a.c("EventBus", String.valueOf(th.getMessage()), th);
        }
    }

    public final void b(s7.a aVar) {
        h.j(aVar, "any");
        try {
            f15150b.i(aVar);
        } catch (Throwable th) {
            x.f12420a.c("EventBus", String.valueOf(th.getMessage()), th);
        }
    }

    public final void c(s7.a aVar) {
        h.j(aVar, "any");
        try {
            f15150b.k(aVar);
        } catch (Throwable th) {
            x.f12420a.c("EventBus", String.valueOf(th.getMessage()), th);
        }
    }
}
