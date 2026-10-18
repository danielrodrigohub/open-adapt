package t4;

import m5.g0;

/* JADX INFO: compiled from: Descriptor.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15471c;

    public e(String str, String str2, String str3) {
        this.f15469a = str;
        this.f15470b = str2;
        this.f15471c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return g0.a(this.f15469a, eVar.f15469a) && g0.a(this.f15470b, eVar.f15470b) && g0.a(this.f15471c, eVar.f15471c);
    }

    public final int hashCode() {
        int iHashCode = this.f15469a.hashCode() * 31;
        String str = this.f15470b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f15471c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
