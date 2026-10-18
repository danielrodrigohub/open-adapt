package d2;

/* JADX INFO: compiled from: DocumentData.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f5965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5969f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f5970g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5971h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5972i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5973j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5974k;

    public b(String str, String str2, float f10, int i10, int i11, float f11, float f12, int i12, int i13, float f13, boolean z10) {
        a(str, str2, f10, i10, i11, f11, f12, i12, i13, f13, z10);
    }

    public final void a(String str, String str2, float f10, int i10, int i11, float f11, float f12, int i12, int i13, float f13, boolean z10) {
        this.f5964a = str;
        this.f5965b = str2;
        this.f5966c = f10;
        this.f5967d = i10;
        this.f5968e = i11;
        this.f5969f = f11;
        this.f5970g = f12;
        this.f5971h = i12;
        this.f5972i = i13;
        this.f5973j = f13;
        this.f5974k = z10;
    }

    public final int hashCode() {
        int iA = ((q.g.a(this.f5967d) + (((int) (a1.f.c(this.f5965b, this.f5964a.hashCode() * 31, 31) + this.f5966c)) * 31)) * 31) + this.f5968e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f5969f);
        return (((iA * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f5971h;
    }

    public b() {
    }
}
