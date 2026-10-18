package l5;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: BandwidthMeter.java */
/* JADX INFO: loaded from: classes.dex */
public interface e {

    /* JADX INFO: compiled from: BandwidthMeter.java */
    public interface a {

        /* JADX INFO: renamed from: l5.e$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: BandwidthMeter.java */
        public static final class C0195a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final CopyOnWriteArrayList<C0196a> f10008a = new CopyOnWriteArrayList<>();

            /* JADX INFO: renamed from: l5.e$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: BandwidthMeter.java */
            public static final class C0196a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final Handler f10009a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final a f10010b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public boolean f10011c;

                public C0196a(Handler handler, a aVar) {
                    this.f10009a = handler;
                    this.f10010b = aVar;
                }
            }

            public final void a(a aVar) {
                for (C0196a c0196a : this.f10008a) {
                    if (c0196a.f10010b == aVar) {
                        c0196a.f10011c = true;
                        this.f10008a.remove(c0196a);
                    }
                }
            }
        }

        void X(int i10, long j10, long j11);
    }

    j0 a();

    void b(Handler handler, a aVar);

    default void c() {
    }

    void d(a aVar);

    long e();
}
