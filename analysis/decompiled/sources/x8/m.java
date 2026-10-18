package x8;

import java.util.Objects;

/* JADX INFO: compiled from: BadgeData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17932c;

    public m() {
        this(0, 0, 0, 7, null);
    }

    public m(int i10, int i11, int i12) {
        this.f17930a = i10;
        this.f17931b = i11;
        this.f17932c = i12;
    }

    public static m a(m mVar) {
        int i10 = mVar.f17930a;
        int i11 = mVar.f17931b;
        int i12 = mVar.f17932c;
        Objects.requireNonNull(mVar);
        return new m(i10, i11, i12);
    }

    public final int b() {
        return this.f17930a + this.f17931b + this.f17932c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f17930a == mVar.f17930a && this.f17931b == mVar.f17931b && this.f17932c == mVar.f17932c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f17932c) + androidx.fragment.app.r0.e(this.f17931b, Integer.hashCode(this.f17930a) * 31, 31);
    }

    public final String toString() {
        int i10 = this.f17930a;
        int i11 = this.f17931b;
        return androidx.recyclerview.widget.s.a(androidx.recyclerview.widget.s.b("BadgeData(firmwareUpdate=", i10, ", autoLaceIntro=", i11, ", gesturesIntro="), this.f17932c, ")");
    }

    public m(int i10, int i11, int i12, int i13, rd.h hVar) {
        this.f17930a = 0;
        this.f17931b = 0;
        this.f17932c = 0;
    }
}
