package kb;

import a1.d;
import a1.f;
import androidx.appcompat.widget.o;
import androidx.fragment.app.r0;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import fa.m;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.http2.Http2;
import p4.h;
import q.g;

/* JADX INFO: compiled from: TelemetryInfo.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f9766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f9767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f9768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f9769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f9770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f9771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f9772g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9773h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9774i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9775j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f9776k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f9777l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f9778m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<String, Object> f9779n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f9780o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f9781p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9782q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f9783r;

    /* JADX WARN: Incorrect types in method signature: (JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;ZZILjava/lang/String;)V */
    public a(long j10, long j11, String str, int i10, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Map map, boolean z10, boolean z11, int i11, String str11) {
        h.j(str, "message");
        o.d(i10, AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE);
        h.j(str2, "sessionId");
        h.j(str3, AnalyticsAttribute.APP_ID_ATTRIBUTE);
        h.j(str4, "appVersion");
        h.j(str5, AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE);
        h.j(str6, AnalyticsAttribute.OS_VERSION_ATTRIBUTE);
        h.j(str7, "libraryId");
        h.j(str8, "libraryVersion");
        h.j(str9, "timezone");
        h.j(map, "attributes");
        h.j(str11, AnalyticsAttribute.UUID_ATTRIBUTE);
        this.f9766a = j10;
        this.f9767b = j11;
        this.f9768c = str;
        this.f9769d = i10;
        this.f9770e = str2;
        this.f9771f = str3;
        this.f9772g = str4;
        this.f9773h = str5;
        this.f9774i = str6;
        this.f9775j = str7;
        this.f9776k = str8;
        this.f9777l = str9;
        this.f9778m = str10;
        this.f9779n = map;
        this.f9780o = z10;
        this.f9781p = z11;
        this.f9782q = i11;
        this.f9783r = str11;
    }

    public static a a(a aVar, boolean z10, boolean z11, int i10, int i11) {
        long j10 = (i11 & 1) != 0 ? aVar.f9766a : 0L;
        long j11 = (i11 & 2) != 0 ? aVar.f9767b : 0L;
        String str = (i11 & 4) != 0 ? aVar.f9768c : null;
        int i12 = (i11 & 8) != 0 ? aVar.f9769d : 0;
        String str2 = (i11 & 16) != 0 ? aVar.f9770e : null;
        String str3 = (i11 & 32) != 0 ? aVar.f9771f : null;
        String str4 = (i11 & 64) != 0 ? aVar.f9772g : null;
        String str5 = (i11 & 128) != 0 ? aVar.f9773h : null;
        String str6 = (i11 & 256) != 0 ? aVar.f9774i : null;
        String str7 = (i11 & 512) != 0 ? aVar.f9775j : null;
        String str8 = (i11 & 1024) != 0 ? aVar.f9776k : null;
        String str9 = (i11 & 2048) != 0 ? aVar.f9777l : null;
        String str10 = (i11 & AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH) != 0 ? aVar.f9778m : null;
        Map<String, Object> map = (i11 & 8192) != 0 ? aVar.f9779n : null;
        boolean z12 = (i11 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? aVar.f9780o : z10;
        boolean z13 = (32768 & i11) != 0 ? aVar.f9781p : z11;
        int i13 = (65536 & i11) != 0 ? aVar.f9782q : i10;
        String str11 = (i11 & 131072) != 0 ? aVar.f9783r : null;
        Objects.requireNonNull(aVar);
        h.j(str, "message");
        o.d(i12, AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE);
        h.j(str2, "sessionId");
        h.j(str3, AnalyticsAttribute.APP_ID_ATTRIBUTE);
        h.j(str4, "appVersion");
        h.j(str5, AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE);
        h.j(str6, AnalyticsAttribute.OS_VERSION_ATTRIBUTE);
        h.j(str7, "libraryId");
        h.j(str8, "libraryVersion");
        h.j(str9, "timezone");
        h.j(map, "attributes");
        h.j(str11, AnalyticsAttribute.UUID_ATTRIBUTE);
        return new a(j10, j11, str, i12, str2, str3, str4, str5, str6, str7, str8, str9, str10, map, z12, z13, i13, str11);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9766a == aVar.f9766a && this.f9767b == aVar.f9767b && h.c(this.f9768c, aVar.f9768c) && this.f9769d == aVar.f9769d && h.c(this.f9770e, aVar.f9770e) && h.c(this.f9771f, aVar.f9771f) && h.c(this.f9772g, aVar.f9772g) && h.c(this.f9773h, aVar.f9773h) && h.c(this.f9774i, aVar.f9774i) && h.c(this.f9775j, aVar.f9775j) && h.c(this.f9776k, aVar.f9776k) && h.c(this.f9777l, aVar.f9777l) && h.c(this.f9778m, aVar.f9778m) && h.c(this.f9779n, aVar.f9779n) && this.f9780o == aVar.f9780o && this.f9781p == aVar.f9781p && this.f9782q == aVar.f9782q && h.c(this.f9783r, aVar.f9783r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [int] */
    /* JADX WARN: Type inference failed for: r0v19, types: [int] */
    /* JADX WARN: Type inference failed for: r1v20, types: [int] */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    public final int hashCode() {
        int iC = f.c(this.f9777l, f.c(this.f9776k, f.c(this.f9775j, f.c(this.f9774i, f.c(this.f9773h, f.c(this.f9772g, f.c(this.f9771f, f.c(this.f9770e, (g.a(this.f9769d) + f.c(this.f9768c, (Long.hashCode(this.f9767b) + (Long.hashCode(this.f9766a) * 31)) * 31, 31)) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
        String str = this.f9778m;
        int iD = m.d(this.f9779n, (iC + (str == null ? 0 : str.hashCode())) * 31, 31);
        boolean z10 = this.f9780o;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iD + r10) * 31;
        boolean z11 = this.f9781p;
        return this.f9783r.hashCode() + r0.e(this.f9782q, (i10 + (z11 ? 1 : z11)) * 31, 31);
    }

    public final String toString() {
        long j10 = this.f9766a;
        long j11 = this.f9767b;
        String str = this.f9768c;
        int i10 = this.f9769d;
        String str2 = this.f9770e;
        String str3 = this.f9771f;
        String str4 = this.f9772g;
        String str5 = this.f9773h;
        String str6 = this.f9774i;
        String str7 = this.f9775j;
        String str8 = this.f9776k;
        String str9 = this.f9777l;
        String str10 = this.f9778m;
        Map<String, Object> map = this.f9779n;
        boolean z10 = this.f9780o;
        boolean z11 = this.f9781p;
        int i11 = this.f9782q;
        String str11 = this.f9783r;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TelemetryInfo(id=");
        sb2.append(j10);
        sb2.append(", timestamp=");
        sb2.append(j11);
        sb2.append(", message=");
        sb2.append(str);
        sb2.append(", eventType=");
        sb2.append(f.f(i10));
        sb2.append(", sessionId=");
        sb2.append(str2);
        sb2.append(", appId=");
        d.g(sb2, str3, ", appVersion=", str4, ", deviceModel=");
        d.g(sb2, str5, ", osVersion=", str6, ", libraryId=");
        d.g(sb2, str7, ", libraryVersion=", str8, ", timezone=");
        d.g(sb2, str9, ", userID=", str10, ", attributes=");
        sb2.append(map);
        sb2.append(", syncInProgress=");
        sb2.append(z10);
        sb2.append(", promptedSync=");
        sb2.append(z11);
        sb2.append(", attemptsToSync=");
        sb2.append(i11);
        sb2.append(", uuid=");
        return f.d(sb2, str11, ")");
    }
}
