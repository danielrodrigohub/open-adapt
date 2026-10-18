package n5;

import android.os.Bundle;
import n3.r0;

/* JADX INFO: compiled from: VideoSize.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements n3.h {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final t f11985l = new t(0, 0, 0, 1.0f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11986h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11987i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11988j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f11989k;

    static {
        r0 r0Var = r0.f11671i;
    }

    public t(int i10, int i11, int i12, float f10) {
        this.f11986h = i10;
        this.f11987i = i11;
        this.f11988j = i12;
        this.f11989k = f10;
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f11986h);
        bundle.putInt(b(1), this.f11987i);
        bundle.putInt(b(2), this.f11988j);
        bundle.putFloat(b(3), this.f11989k);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f11986h == tVar.f11986h && this.f11987i == tVar.f11987i && this.f11988j == tVar.f11988j && this.f11989k == tVar.f11989k;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f11989k) + ((((((217 + this.f11986h) * 31) + this.f11987i) * 31) + this.f11988j) * 31);
    }
}
