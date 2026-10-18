package k1;

import android.annotation.SuppressLint;

/* JADX INFO: compiled from: Operation.java */
/* JADX INFO: loaded from: classes.dex */
public interface o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"SyntheticAccessor"})
    public static final b.c f9606a = new b.c(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SuppressLint({"SyntheticAccessor"})
    public static final b.C0185b f9607b = new b.C0185b();

    /* JADX INFO: compiled from: Operation.java */
    public static abstract class b {

        /* JADX INFO: compiled from: Operation.java */
        public static final class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f9608a;

            public a(Throwable th) {
                this.f9608a = th;
            }

            public final String toString() {
                return String.format("FAILURE (%s)", this.f9608a.getMessage());
            }
        }

        /* JADX INFO: renamed from: k1.o$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Operation.java */
        public static final class C0185b extends b {
            public final String toString() {
                return "IN_PROGRESS";
            }
        }

        /* JADX INFO: compiled from: Operation.java */
        public static final class c extends b {
            public c() {
            }

            public final String toString() {
                return "SUCCESS";
            }

            public c(a aVar) {
            }
        }
    }
}
