package t4;

import m5.g0;

/* JADX INFO: compiled from: ProgramInformation.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f15483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f15484e;

    public h(String str, String str2, String str3, String str4, String str5) {
        this.f15480a = str;
        this.f15481b = str2;
        this.f15482c = str3;
        this.f15483d = str4;
        this.f15484e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return g0.a(this.f15480a, hVar.f15480a) && g0.a(this.f15481b, hVar.f15481b) && g0.a(this.f15482c, hVar.f15482c) && g0.a(this.f15483d, hVar.f15483d) && g0.a(this.f15484e, hVar.f15484e);
    }

    public final int hashCode() {
        String str = this.f15480a;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f15481b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f15482c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f15483d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f15484e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
