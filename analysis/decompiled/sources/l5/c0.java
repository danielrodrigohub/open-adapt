package l5;

import java.io.IOException;

/* JADX INFO: compiled from: LoadErrorHandlingPolicy.java */
/* JADX INFO: loaded from: classes.dex */
public interface c0 {

    /* JADX INFO: compiled from: LoadErrorHandlingPolicy.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9977a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9978b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9979c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f9980d;

        public a(int i10, int i11, int i12, int i13) {
            this.f9977a = i10;
            this.f9978b = i11;
            this.f9979c = i12;
            this.f9980d = i13;
        }

        public final boolean a(int i10) {
            if (i10 == 1) {
                if (this.f9977a - this.f9978b <= 1) {
                    return false;
                }
            } else if (this.f9979c - this.f9980d <= 1) {
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: compiled from: LoadErrorHandlingPolicy.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9981a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f9982b;

        public b(int i10, long j10) {
            m5.a.a(j10 >= 0);
            this.f9981a = i10;
            this.f9982b = j10;
        }
    }

    /* JADX INFO: compiled from: LoadErrorHandlingPolicy.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IOException f9983a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9984b;

        public c(IOException iOException, int i10) {
            this.f9983a = iOException;
            this.f9984b = i10;
        }
    }

    b a(a aVar, c cVar);

    long b(c cVar);

    int c(int i10);

    default void d() {
    }
}
