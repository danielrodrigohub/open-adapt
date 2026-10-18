package y2;

/* JADX INFO: compiled from: DownsampleStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f18458a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f18459b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f18460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f18461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f18462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p2.g<m> f18463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f18464g;

    /* JADX INFO: compiled from: DownsampleStrategy.java */
    public static class a extends m {
        @Override // y2.m
        public final int a(int i10, int i11, int i12, int i13) {
            return (b(i10, i11, i12, i13) == 1.0f || m.f18464g) ? 2 : 1;
        }

        @Override // y2.m
        public final float b(int i10, int i11, int i12, int i13) {
            return Math.min(1.0f, m.f18458a.b(i10, i11, i12, i13));
        }
    }

    /* JADX INFO: compiled from: DownsampleStrategy.java */
    public static class b extends m {
        @Override // y2.m
        public final int a(int i10, int i11, int i12, int i13) {
            return 2;
        }

        @Override // y2.m
        public final float b(int i10, int i11, int i12, int i13) {
            return Math.max(i12 / i10, i13 / i11);
        }
    }

    /* JADX INFO: compiled from: DownsampleStrategy.java */
    public static class c extends m {
        @Override // y2.m
        public final int a(int i10, int i11, int i12, int i13) {
            return m.f18464g ? 2 : 1;
        }

        @Override // y2.m
        public final float b(int i10, int i11, int i12, int i13) {
            if (m.f18464g) {
                return Math.min(i12 / i10, i13 / i11);
            }
            int iMax = Math.max(i11 / i13, i10 / i12);
            if (iMax == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMax);
        }
    }

    /* JADX INFO: compiled from: DownsampleStrategy.java */
    public static class d extends m {
        @Override // y2.m
        public final int a(int i10, int i11, int i12, int i13) {
            return 2;
        }

        @Override // y2.m
        public final float b(int i10, int i11, int i12, int i13) {
            return 1.0f;
        }
    }

    static {
        b bVar = new b();
        f18460c = bVar;
        f18461d = new d();
        f18462e = bVar;
        f18463f = p2.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", bVar);
        f18464g = true;
    }

    public abstract int a(int i10, int i11, int i12, int i13);

    public abstract float b(int i10, int i11, int i12, int i13);
}
