package ea;

import androidx.fragment.app.r0;

/* JADX INFO: compiled from: AdaptKitMigrationDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6689c;

    public s(int i10, int i11, int i12) {
        this.f6687a = i10;
        this.f6688b = i11;
        this.f6689c = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.f6687a == sVar.f6687a && this.f6688b == sVar.f6688b && this.f6689c == sVar.f6689c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f6689c) + r0.e(this.f6688b, Integer.hashCode(this.f6687a) * 31, 31);
    }

    public final String toString() {
        int i10 = this.f6687a;
        int i11 = this.f6688b;
        return androidx.recyclerview.widget.s.a(androidx.recyclerview.widget.s.b("OldBigfootColorPreset(red=", i10, ", green=", i11, ", blue="), this.f6689c, ")");
    }
}
