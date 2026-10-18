package o9;

import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: HomeViewLoaded.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f12488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f12489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f12490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f12491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer f12492f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Integer f12493g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f12494h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f12495i;

    public a() {
        this(null, null, null, null, null, null, null, null, null, HttpStatusCodesKt.HTTP_NETWORK_AUTHENTICATION_REQUIRED, null);
    }

    public a(String str, Integer num, Integer num2, String str2, String str3, Integer num3, Integer num4, String str4, String str5, int i10, rd.h hVar) {
        this.f12487a = null;
        this.f12488b = null;
        this.f12489c = null;
        this.f12490d = null;
        this.f12491e = null;
        this.f12492f = null;
        this.f12493g = null;
        this.f12494h = null;
        this.f12495i = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f12487a, aVar.f12487a) && p4.h.c(this.f12488b, aVar.f12488b) && p4.h.c(this.f12489c, aVar.f12489c) && p4.h.c(this.f12490d, aVar.f12490d) && p4.h.c(this.f12491e, aVar.f12491e) && p4.h.c(this.f12492f, aVar.f12492f) && p4.h.c(this.f12493g, aVar.f12493g) && p4.h.c(this.f12494h, aVar.f12494h) && p4.h.c(this.f12495i, aVar.f12495i);
    }

    public final int hashCode() {
        String str = this.f12487a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.f12488b;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f12489c;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.f12490d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f12491e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num3 = this.f12492f;
        int iHashCode6 = (iHashCode5 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.f12493g;
        int iHashCode7 = (iHashCode6 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str4 = this.f12494h;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f12495i;
        return iHashCode8 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f12487a;
        Integer num = this.f12488b;
        Integer num2 = this.f12489c;
        String str2 = this.f12490d;
        String str3 = this.f12491e;
        Integer num3 = this.f12492f;
        Integer num4 = this.f12493g;
        String str4 = this.f12494h;
        String str5 = this.f12495i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HomeViewLoaded(colorName=");
        sb2.append(str);
        sb2.append(", lacingLeft=");
        sb2.append(num);
        sb2.append(", lacingRight=");
        sb2.append(num2);
        sb2.append(", leftSerialNumber=");
        sb2.append(str2);
        sb2.append(", rightSerialNumber=");
        sb2.append(str3);
        sb2.append(", leftBattery=");
        sb2.append(num3);
        sb2.append(", rightBattery=");
        sb2.append(num4);
        sb2.append(", firmwareVersionLeft=");
        sb2.append(str4);
        sb2.append(", firmwareVersionRight=");
        return a1.f.d(sb2, str5, ")");
    }
}
