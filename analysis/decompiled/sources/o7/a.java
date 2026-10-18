package o7;

import android.app.Application;
import androidx.fragment.app.r0;
import okhttp3.Interceptor;

/* JADX INFO: compiled from: AdaptModule.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f12353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f12354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f12356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f12357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12358f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f12359g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final vc.a f12360h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Interceptor f12361i;

    public a(Application application, String str, String str2, vc.a aVar) {
        p4.h.j(str, "sessionId");
        p4.h.j(aVar, "authProvider");
        this.f12353a = application;
        this.f12354b = "com.nike.adapt";
        this.f12355c = str;
        this.f12356d = str2;
        this.f12357e = "1.29.3";
        this.f12358f = 2017062198;
        this.f12359g = false;
        this.f12360h = aVar;
        this.f12361i = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f12353a, aVar.f12353a) && p4.h.c(this.f12354b, aVar.f12354b) && p4.h.c(this.f12355c, aVar.f12355c) && p4.h.c(this.f12356d, aVar.f12356d) && p4.h.c(this.f12357e, aVar.f12357e) && this.f12358f == aVar.f12358f && this.f12359g == aVar.f12359g && p4.h.c(this.f12360h, aVar.f12360h) && p4.h.c(this.f12361i, aVar.f12361i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    public final int hashCode() {
        int iE = r0.e(this.f12358f, a1.f.c(this.f12357e, a1.f.c(this.f12356d, a1.f.c(this.f12355c, a1.f.c(this.f12354b, this.f12353a.hashCode() * 31, 31), 31), 31), 31), 31);
        boolean z10 = this.f12359g;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int iHashCode = (this.f12360h.hashCode() + ((iE + r10) * 31)) * 31;
        Interceptor interceptor = this.f12361i;
        return iHashCode + (interceptor == null ? 0 : interceptor.hashCode());
    }

    public final String toString() {
        Application application = this.f12353a;
        String str = this.f12354b;
        String str2 = this.f12355c;
        String str3 = this.f12356d;
        String str4 = this.f12357e;
        int i10 = this.f12358f;
        boolean z10 = this.f12359g;
        vc.a aVar = this.f12360h;
        Interceptor interceptor = this.f12361i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptConfig(application=");
        sb2.append(application);
        sb2.append(", applicationId=");
        sb2.append(str);
        sb2.append(", sessionId=");
        a1.d.g(sb2, str2, ", appName=", str3, ", appVersion=");
        sb2.append(str4);
        sb2.append(", appVersionCode=");
        sb2.append(i10);
        sb2.append(", isDebug=");
        sb2.append(z10);
        sb2.append(", authProvider=");
        sb2.append(aVar);
        sb2.append(", loggingInterceptor=");
        sb2.append(interceptor);
        sb2.append(")");
        return sb2.toString();
    }
}
