package p1;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;

/* JADX INFO: compiled from: NetworkState.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f12621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f12622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f12624d;

    public b(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f12621a = z10;
        this.f12622b = z11;
        this.f12623c = z12;
        this.f12624d = z13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f12621a == bVar.f12621a && this.f12622b == bVar.f12622b && this.f12623c == bVar.f12623c && this.f12624d == bVar.f12624d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final int hashCode() {
        ?? r10 = this.f12621a;
        int i10 = r10;
        if (this.f12622b) {
            i10 = r10 + 16;
        }
        int i11 = i10;
        if (this.f12623c) {
            i11 = i10 + 256;
        }
        return this.f12624d ? i11 + AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH : i11;
    }

    public final String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f12621a), Boolean.valueOf(this.f12622b), Boolean.valueOf(this.f12623c), Boolean.valueOf(this.f12624d));
    }
}
