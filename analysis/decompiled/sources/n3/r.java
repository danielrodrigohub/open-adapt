package n3;

import android.content.Context;
import android.os.Looper;
import com.newrelic.agent.android.payload.PayloadController;

/* JADX INFO: compiled from: ExoPlayer.java */
/* JADX INFO: loaded from: classes.dex */
public interface r extends o1 {

    /* JADX INFO: compiled from: ExoPlayer.java */
    public interface a {
        default void i() {
        }
    }

    /* JADX INFO: compiled from: ExoPlayer.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f11647a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public m5.a0 f11648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public t6.o<v1> f11649c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public t6.o<p4.x.a> f11650d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public t6.o<j5.s> f11651e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public t6.o<l5.e> f11652f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Looper f11653g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public p3.d f11654h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11655i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f11656j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public w1 f11657k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f11658l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f11659m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public j f11660n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f11661o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public long f11662p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f11663q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f11664r;

        public b(final Context context) {
            s sVar = new s(context, 0);
            t6.o<p4.x.a> oVar = new t6.o() { // from class: n3.u
                @Override // t6.o
                public final Object get() {
                    return new p4.n(context, new s3.f());
                }
            };
            t6.o<j5.s> oVar2 = new t6.o() { // from class: n3.t
                @Override // t6.o
                public final Object get() {
                    return new j5.i(context);
                }
            };
            t6.o<l5.e> oVar3 = new t6.o() { // from class: n3.v
                @Override // t6.o
                public final Object get() {
                    l5.p pVar;
                    Context context2 = context;
                    u6.v<Long> vVar = l5.p.f10088n;
                    synchronized (l5.p.class) {
                        if (l5.p.f10094t == null) {
                            l5.p.b bVar = new l5.p.b(context2);
                            l5.p.f10094t = new l5.p(bVar.f10108a, bVar.f10109b, bVar.f10110c, bVar.f10111d, bVar.f10112e, null);
                        }
                        pVar = l5.p.f10094t;
                    }
                    return pVar;
                }
            };
            this.f11647a = context;
            this.f11649c = sVar;
            this.f11650d = oVar;
            this.f11651e = oVar2;
            this.f11652f = oVar3;
            this.f11653g = m5.g0.t();
            this.f11654h = p3.d.f12686n;
            this.f11655i = 1;
            this.f11656j = true;
            this.f11657k = w1.f11737c;
            this.f11658l = PayloadController.PAYLOAD_COLLECTOR_TIMEOUT;
            this.f11659m = 15000L;
            this.f11660n = new j(m5.g0.L(20L), m5.g0.L(500L), 0.999f);
            this.f11648b = m5.c.f10364a;
            this.f11661o = 500L;
            this.f11662p = 2000L;
            this.f11663q = true;
        }

        public final r a() {
            m5.a.e(!this.f11664r);
            this.f11664r = true;
            return new k0(this, null);
        }
    }
}
