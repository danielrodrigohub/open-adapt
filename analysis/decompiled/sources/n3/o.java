package n3;

import android.os.Bundle;

/* JADX INFO: compiled from: DeviceInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11554h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11555i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11556j;

    static {
        n nVar = n.f11542c;
    }

    public o(int i10, int i11, int i12) {
        this.f11554h = i10;
        this.f11555i = i11;
        this.f11556j = i12;
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f11554h);
        bundle.putInt(b(1), this.f11555i);
        bundle.putInt(b(2), this.f11556j);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f11554h == oVar.f11554h && this.f11555i == oVar.f11555i && this.f11556j == oVar.f11556j;
    }

    public final int hashCode() {
        return ((((527 + this.f11554h) * 31) + this.f11555i) * 31) + this.f11556j;
    }
}
