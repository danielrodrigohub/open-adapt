package u6;

import java.util.Comparator;

/* JADX INFO: compiled from: ComparisonChain.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15963a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f15964b = new b(-1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f15965c = new b(1);

    /* JADX INFO: compiled from: ComparisonChain.java */
    public class a extends p {
        @Override // u6.p
        public final p a(int i10, int i11) {
            int i12;
            if (i10 < i11) {
                i12 = -1;
            } else {
                i12 = i10 > i11 ? 1 : 0;
            }
            return g(i12);
        }

        @Override // u6.p
        public final p b(long j10, long j11) {
            int i10;
            if (j10 < j11) {
                i10 = -1;
            } else {
                i10 = j10 > j11 ? 1 : 0;
            }
            return g(i10);
        }

        @Override // u6.p
        public final <T> p c(T t10, T t11, Comparator<T> comparator) {
            return g(comparator.compare(t10, t11));
        }

        @Override // u6.p
        public final p d(boolean z10, boolean z11) {
            int i10;
            if (z10 == z11) {
                i10 = 0;
            } else {
                i10 = z10 ? 1 : -1;
            }
            return g(i10);
        }

        @Override // u6.p
        public final p e(boolean z10, boolean z11) {
            int i10;
            if (z11 == z10) {
                i10 = 0;
            } else {
                i10 = z11 ? 1 : -1;
            }
            return g(i10);
        }

        @Override // u6.p
        public final int f() {
            return 0;
        }

        public final p g(int i10) {
            if (i10 < 0) {
                return p.f15964b;
            }
            return i10 > 0 ? p.f15965c : p.f15963a;
        }
    }

    /* JADX INFO: compiled from: ComparisonChain.java */
    public static final class b extends p {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f15966d;

        public b(int i10) {
            this.f15966d = i10;
        }

        @Override // u6.p
        public final p a(int i10, int i11) {
            return this;
        }

        @Override // u6.p
        public final p b(long j10, long j11) {
            return this;
        }

        @Override // u6.p
        public final <T> p c(T t10, T t11, Comparator<T> comparator) {
            return this;
        }

        @Override // u6.p
        public final p d(boolean z10, boolean z11) {
            return this;
        }

        @Override // u6.p
        public final p e(boolean z10, boolean z11) {
            return this;
        }

        @Override // u6.p
        public final int f() {
            return this.f15966d;
        }
    }

    public abstract p a(int i10, int i11);

    public abstract p b(long j10, long j11);

    public abstract <T> p c(T t10, T t11, Comparator<T> comparator);

    public abstract p d(boolean z10, boolean z11);

    public abstract p e(boolean z10, boolean z11);

    public abstract int f();
}
