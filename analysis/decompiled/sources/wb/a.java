package wb;

import a0.b;
import a1.f;
import ob.c;
import p4.h;

/* JADX INFO: compiled from: OIDCAuthCredentialImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f17588e;

    public a(String str, String str2, String str3, String str4, long j10) {
        this.f17584a = str;
        this.f17585b = str2;
        this.f17586c = str3;
        this.f17587d = str4;
        this.f17588e = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f17584a, aVar.f17584a) && h.c(this.f17585b, aVar.f17585b) && h.c(this.f17586c, aVar.f17586c) && h.c(this.f17587d, aVar.f17587d) && this.f17588e == aVar.f17588e;
    }

    @Override // ob.b
    public final String getAccessToken() {
        return this.f17584a;
    }

    @Override // ob.b
    public final long getExpirationDate() {
        return this.f17588e;
    }

    @Override // ob.c
    public final String getIdTokenString() {
        return this.f17586c;
    }

    @Override // ob.b
    public final String getRefreshToken() {
        return this.f17585b;
    }

    @Override // ob.b
    public final String getUpmID() {
        return this.f17587d;
    }

    public final int hashCode() {
        return Long.hashCode(this.f17588e) + f.c(this.f17587d, f.c(this.f17586c, f.c(this.f17585b, this.f17584a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = b.c("OIDCAuthCredentialImpl(accessToken=");
        sbC.append(this.f17584a);
        sbC.append(", refreshToken=");
        sbC.append(this.f17585b);
        sbC.append(", idTokenString=");
        sbC.append(this.f17586c);
        sbC.append(", upmID=");
        sbC.append(this.f17587d);
        sbC.append(", expirationDate=");
        sbC.append(this.f17588e);
        sbC.append(')');
        return sbC.toString();
    }
}
