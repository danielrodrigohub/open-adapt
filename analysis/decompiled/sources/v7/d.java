package v7;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import o7.x;

/* JADX INFO: compiled from: FWUpgradeRecord.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f16378d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f16380f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f16381g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f16382h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f16383i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f16384j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16385k;

    public d(String str, String str2, String str3, long j10, long j11, String str4, String str5, String str6, String str7, String str8) {
        p4.h.j(str2, "pairId");
        p4.h.j(str3, "pairName");
        p4.h.j(str4, "deviceType");
        p4.h.j(str5, AnalyticsAttribute.OS_VERSION_ATTRIBUTE);
        p4.h.j(str6, "fwStartVersion");
        p4.h.j(str7, "fwTargetVersion");
        this.f16375a = str;
        this.f16376b = str2;
        this.f16377c = str3;
        this.f16378d = j10;
        this.f16379e = j11;
        this.f16380f = str4;
        this.f16381g = str5;
        this.f16382h = str6;
        this.f16383i = str7;
        this.f16384j = false;
        this.f16385k = str8;
    }

    public final String a() {
        String str = this.f16375a;
        String str2 = this.f16376b;
        String str3 = this.f16377c;
        long j10 = this.f16378d;
        long j11 = this.f16379e;
        String str4 = this.f16380f;
        String str5 = this.f16381g;
        String str6 = this.f16382h;
        String str7 = this.f16383i;
        boolean z10 = this.f16384j;
        String str8 = this.f16385k;
        StringBuilder sbA = k1.a.a("FW_UPGRADE_RECORD", "~", " nuid=", str, "~");
        a1.d.g(sbA, " pairId=", str2, "~", " pairName=");
        sbA.append(str3);
        sbA.append("~");
        sbA.append(" transferStartTime=");
        sbA.append(j10);
        sbA.append("~");
        sbA.append(" endTime=");
        sbA.append(j11);
        sbA.append("~");
        sbA.append(" deviceType=");
        a1.d.g(sbA, str4, "~", " osVersion=", str5);
        a1.d.g(sbA, "~", " fwStartVersion=", str6, "~");
        a1.d.g(sbA, " fwTargetVersion=", str7, "~", " fatalFailure=");
        sbA.append(z10);
        sbA.append("~");
        sbA.append(" failureDetails=");
        sbA.append(str8);
        String string = sbA.toString();
        x.f12420a.b("FWUpgradeRecord", string);
        return string;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return p4.h.c(this.f16375a, dVar.f16375a) && p4.h.c(this.f16376b, dVar.f16376b) && p4.h.c(this.f16377c, dVar.f16377c) && this.f16378d == dVar.f16378d && this.f16379e == dVar.f16379e && p4.h.c(this.f16380f, dVar.f16380f) && p4.h.c(this.f16381g, dVar.f16381g) && p4.h.c(this.f16382h, dVar.f16382h) && p4.h.c(this.f16383i, dVar.f16383i) && this.f16384j == dVar.f16384j && p4.h.c(this.f16385k, dVar.f16385k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    public final int hashCode() {
        int iC = a1.f.c(this.f16383i, a1.f.c(this.f16382h, a1.f.c(this.f16381g, a1.f.c(this.f16380f, (Long.hashCode(this.f16379e) + ((Long.hashCode(this.f16378d) + a1.f.c(this.f16377c, a1.f.c(this.f16376b, this.f16375a.hashCode() * 31, 31), 31)) * 31)) * 31, 31), 31), 31), 31);
        boolean z10 = this.f16384j;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iC + r10) * 31;
        String str = this.f16385k;
        return i10 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        String str = this.f16375a;
        String str2 = this.f16376b;
        String str3 = this.f16377c;
        long j10 = this.f16378d;
        long j11 = this.f16379e;
        String str4 = this.f16380f;
        String str5 = this.f16381g;
        String str6 = this.f16382h;
        String str7 = this.f16383i;
        boolean z10 = this.f16384j;
        String str8 = this.f16385k;
        StringBuilder sbA = k1.a.a("FWUpgradeRecord(nuid=", str, ", pairId=", str2, ", pairName=");
        sbA.append(str3);
        sbA.append(", transferStartTime=");
        sbA.append(j10);
        sbA.append(", endTime=");
        sbA.append(j11);
        sbA.append(", deviceType=");
        a1.d.g(sbA, str4, ", osVersion=", str5, ", fwStartVersion=");
        a1.d.g(sbA, str6, ", fwTargetVersion=", str7, ", fatalFailure=");
        sbA.append(z10);
        sbA.append(", failureDetails=");
        sbA.append(str8);
        sbA.append(")");
        return sbA.toString();
    }
}
