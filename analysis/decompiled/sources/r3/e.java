package r3;

import java.io.IOException;
import java.util.UUID;

/* JADX INFO: compiled from: DrmSession.java */
/* JADX INFO: loaded from: classes.dex */
public interface e {

    /* JADX INFO: compiled from: DrmSession.java */
    public static class a extends IOException {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f14488h;

        public a(Throwable th, int i10) {
            super(th);
            this.f14488h = i10;
        }
    }

    default boolean a() {
        return false;
    }

    UUID b();

    void c(k.a aVar);

    void d(k.a aVar);

    boolean e(String str);

    a f();

    q3.b g();

    int getState();
}
