package mc;

import androidx.fragment.app.r0;

/* JADX INFO: compiled from: FirmwareSlotImageStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f11060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f11061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f11062f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f11063g;

    public k(String str, int i10, int i11, int i12, int i13, int i14, int i15) {
        p4.h.j(str, "version");
        androidx.appcompat.widget.o.d(i10, "firmwareUploadStatus");
        this.f11057a = str;
        this.f11058b = i10;
        this.f11059c = i11;
        this.f11060d = i12;
        this.f11061e = i13;
        this.f11062f = i14;
        this.f11063g = i15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return p4.h.c(this.f11057a, kVar.f11057a) && this.f11058b == kVar.f11058b && this.f11059c == kVar.f11059c && this.f11060d == kVar.f11060d && this.f11061e == kVar.f11061e && this.f11062f == kVar.f11062f && this.f11063g == kVar.f11063g;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11063g) + r0.e(this.f11062f, r0.e(this.f11061e, r0.e(this.f11060d, r0.e(this.f11059c, (q.g.a(this.f11058b) + (this.f11057a.hashCode() * 31)) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("FirmwareSlotImageStats(version=");
        sbC.append(this.f11057a);
        sbC.append(", firmwareUploadStatus=");
        sbC.append(fa.m.g(this.f11058b));
        sbC.append(", downloadedImageSize=");
        sbC.append(this.f11059c);
        sbC.append(", imageChecksum=");
        sbC.append(this.f11060d);
        sbC.append(", imageDataChecksum=");
        sbC.append(this.f11061e);
        sbC.append(", imageSize=");
        sbC.append(this.f11062f);
        sbC.append(", revision=");
        return a0.b.b(sbC, this.f11063g, ')');
    }
}
