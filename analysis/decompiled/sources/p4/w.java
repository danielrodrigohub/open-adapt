package p4;

/* JADX INFO: compiled from: MediaPeriodId.java */
/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f13238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f13241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13242e;

    public w(w wVar) {
        this.f13238a = wVar.f13238a;
        this.f13239b = wVar.f13239b;
        this.f13240c = wVar.f13240c;
        this.f13241d = wVar.f13241d;
        this.f13242e = wVar.f13242e;
    }

    public final boolean a() {
        return this.f13239b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f13238a.equals(wVar.f13238a) && this.f13239b == wVar.f13239b && this.f13240c == wVar.f13240c && this.f13241d == wVar.f13241d && this.f13242e == wVar.f13242e;
    }

    public final int hashCode() {
        return ((((((((this.f13238a.hashCode() + 527) * 31) + this.f13239b) * 31) + this.f13240c) * 31) + ((int) this.f13241d)) * 31) + this.f13242e;
    }

    public w(Object obj, int i10, int i11, long j10, int i12) {
        this.f13238a = obj;
        this.f13239b = i10;
        this.f13240c = i11;
        this.f13241d = j10;
        this.f13242e = i12;
    }
}
