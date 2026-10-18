package hc;

import android.app.Application;

/* JADX INFO: compiled from: CoreRFModule.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static g0 f8506b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Application f8508d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h0 f8505a = new h0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final fd.h f8507c = (fd.h) androidx.lifecycle.o.x(a.f8509h);

    /* JADX INFO: compiled from: CoreRFModule.kt */
    public static final class a extends rd.o implements qd.a<Application> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f8509h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final Application invoke() {
            Application application = h0.f8508d;
            if (application != null) {
                return application;
            }
            p4.h.C("internalApplication");
            throw null;
        }
    }
}
