package o7;

import com.nike.adapt.BigfootApplication;
import com.nike.adapt.presenter.profile.AdaptUser;

/* JADX INFO: compiled from: BigfootApplication.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements v9.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final qd.a<String> f12392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.a<String> f12393b = a.f12396h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.a<String> f12394c = d.f12399h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.a<String> f12395d = c.f12398h;

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class a extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f12396h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return w7.c.f17234a.getAccessToken();
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class b extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ BigfootApplication f12397h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(BigfootApplication bigfootApplication) {
            super(0);
            this.f12397h = bigfootApplication;
        }

        @Override // qd.a
        public final String invoke() {
            String nuid;
            AdaptUser adaptUserR = ((h8.a) this.f12397h.f5654o.getValue()).R();
            return (adaptUserR == null || (nuid = adaptUserR.getNuid()) == null) ? "" : nuid;
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class c extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f12398h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return w7.c.f17234a.a();
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class d extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f12399h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            g8.a aVar = BigfootApplication.f5643u;
            if (aVar != null) {
                return aVar.b();
            }
            p4.h.C("_oauthModule");
            throw null;
        }
    }

    public k(BigfootApplication bigfootApplication) {
        this.f12392a = new b(bigfootApplication);
    }

    @Override // v9.c
    public final qd.a<String> a() {
        return this.f12394c;
    }

    @Override // v9.c
    public final qd.a<String> b() {
        return this.f12393b;
    }

    @Override // v9.c
    public final qd.a<String> c() {
        return this.f12395d;
    }

    @Override // v9.c
    public final qd.a<String> d() {
        return this.f12392a;
    }
}
