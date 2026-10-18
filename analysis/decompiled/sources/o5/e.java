package o5;

/* JADX INFO: compiled from: Projection.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f12286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f12287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f12289d;

    /* JADX INFO: compiled from: Projection.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b[] f12290a;

        public a(b... bVarArr) {
            this.f12290a = bVarArr;
        }
    }

    /* JADX INFO: compiled from: Projection.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f12293c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float[] f12294d;

        public b(int i10, float[] fArr, float[] fArr2, int i11) {
            this.f12291a = i10;
            m5.a.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f12293c = fArr;
            this.f12294d = fArr2;
            this.f12292b = i11;
        }
    }

    public e(a aVar, int i10) {
        this.f12286a = aVar;
        this.f12287b = aVar;
        this.f12288c = i10;
        this.f12289d = true;
    }

    public e(a aVar, a aVar2, int i10) {
        this.f12286a = aVar;
        this.f12287b = aVar2;
        this.f12288c = i10;
        this.f12289d = aVar == aVar2;
    }
}
