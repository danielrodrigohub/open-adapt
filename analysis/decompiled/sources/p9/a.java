package p9;

import a1.f;
import androidx.appcompat.widget.y0;
import androidx.fragment.app.r0;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import okhttp3.internal.http2.Http2;
import p4.h;
import q.g;

/* JADX INFO: compiled from: TooltipData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f13354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f13355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f13356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f13357f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f13358g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f13360i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f13361j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f13362k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f13363l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f13364m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f13365n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final double f13366o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f13367p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f13368q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final long f13369r;

    public a(String str, String str2, String str3, String str4, String str5, boolean z10, int i10, int i11, float f10, double d10, long j10, int i12) {
        String str6 = (i12 & 4) != 0 ? null : str3;
        String str7 = (i12 & 8) != 0 ? null : str4;
        String str8 = (i12 & 16) == 0 ? str5 : null;
        boolean z11 = (i12 & 32) != 0 ? false : z10;
        int i13 = (i12 & 64) != 0 ? 0 : i10;
        int i14 = (i12 & 128) == 0 ? i11 : 0;
        long j11 = (i12 & 256) != 0 ? 500L : 0L;
        float f11 = (i12 & 512) != 0 ? 0.8f : f10;
        long j12 = (i12 & 2048) != 0 ? 400L : 0L;
        long j13 = (i12 & AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH) != 0 ? 340L : 0L;
        long j14 = (i12 & 8192) != 0 ? 500L : 0L;
        double d11 = (i12 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? 8.0d : d10;
        long j15 = (32768 & i12) != 0 ? 700L : 0L;
        long j16 = (65536 & i12) != 0 ? 300L : 0L;
        long j17 = (i12 & 131072) != 0 ? 600L : j10;
        this.f13352a = str;
        this.f13353b = str2;
        this.f13354c = str6;
        this.f13355d = str7;
        this.f13356e = str8;
        this.f13357f = z11;
        this.f13358g = i13;
        this.f13359h = i14;
        this.f13360i = j11;
        this.f13361j = f11;
        this.f13362k = 0L;
        this.f13363l = j12;
        this.f13364m = j13;
        this.f13365n = j14;
        this.f13366o = d11;
        this.f13367p = j15;
        this.f13368q = j16;
        this.f13369r = j17;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f13352a, aVar.f13352a) && h.c(this.f13353b, aVar.f13353b) && h.c(this.f13354c, aVar.f13354c) && h.c(this.f13355d, aVar.f13355d) && h.c(this.f13356e, aVar.f13356e) && this.f13357f == aVar.f13357f && this.f13358g == aVar.f13358g && this.f13359h == aVar.f13359h && this.f13360i == aVar.f13360i && h.c(Float.valueOf(this.f13361j), Float.valueOf(aVar.f13361j)) && this.f13362k == aVar.f13362k && this.f13363l == aVar.f13363l && this.f13364m == aVar.f13364m && this.f13365n == aVar.f13365n && h.c(Double.valueOf(this.f13366o), Double.valueOf(aVar.f13366o)) && this.f13367p == aVar.f13367p && this.f13368q == aVar.f13368q && this.f13369r == aVar.f13369r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v38 */
    public final int hashCode() {
        int iC = f.c(this.f13353b, this.f13352a.hashCode() * 31, 31);
        String str = this.f13354c;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f13355d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f13356e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        boolean z10 = this.f13357f;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int iE = r0.e(this.f13358g, (iHashCode3 + r10) * 31, 31);
        int i10 = this.f13359h;
        return Long.hashCode(this.f13369r) + ((Long.hashCode(this.f13368q) + ((Long.hashCode(this.f13367p) + ((Double.hashCode(this.f13366o) + ((Long.hashCode(this.f13365n) + ((Long.hashCode(this.f13364m) + ((Long.hashCode(this.f13363l) + ((Long.hashCode(this.f13362k) + ((Float.hashCode(this.f13361j) + ((Long.hashCode(this.f13360i) + ((iE + (i10 != 0 ? g.a(i10) : 0)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String str = this.f13352a;
        String str2 = this.f13353b;
        String str3 = this.f13354c;
        String str4 = this.f13355d;
        String str5 = this.f13356e;
        boolean z10 = this.f13357f;
        int i10 = this.f13358g;
        int i11 = this.f13359h;
        long j10 = this.f13360i;
        float f10 = this.f13361j;
        long j11 = this.f13362k;
        long j12 = this.f13363l;
        long j13 = this.f13364m;
        long j14 = this.f13365n;
        double d10 = this.f13366o;
        long j15 = this.f13367p;
        long j16 = this.f13368q;
        long j17 = this.f13369r;
        StringBuilder sbA = k1.a.a("TooltipData(title=", str, ", message=", str2, ", actionButtonMsg=");
        a1.d.g(sbA, str3, ", step=", str4, ", stepContentDescription=");
        sbA.append(str5);
        sbA.append(", blend=");
        sbA.append(z10);
        sbA.append(", verticalAdjustment=");
        sbA.append(i10);
        sbA.append(", gravityOverride=");
        sbA.append(y0.g(i11));
        sbA.append(", overlayAlphaInDuration=");
        sbA.append(j10);
        sbA.append(", overlayAlphaEndValue=");
        sbA.append(f10);
        sbA.append(", focusedViewAlphaInDelay=");
        sbA.append(j11);
        sbA.append(", focusedViewAlphaInDuration=");
        sbA.append(j12);
        sbA.append(", popUpTranslationInDelay=");
        sbA.append(j13);
        sbA.append(", popUpTranslationInDuration=");
        sbA.append(j14);
        sbA.append(", popUpBounceFrequency=");
        sbA.append(d10);
        sbA.append(", popUpContentAlphaInDelay=");
        sbA.append(j15);
        sbA.append(", popUpContentAlphaInDuration=");
        sbA.append(j16);
        sbA.append(", alphaOutDuration=");
        sbA.append(j17);
        sbA.append(")");
        return sbA.toString();
    }
}
