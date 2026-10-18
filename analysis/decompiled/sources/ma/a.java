package ma;

import p4.h;
import v9.c;
import v9.t;
import yd.o;

/* JADX INFO: compiled from: AdaptKitAuthProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f10952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f10953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f10954c;

    public a(c cVar) {
        this.f10952a = cVar;
    }

    public final String a() {
        String strInvoke = this.f10952a.d().invoke();
        t tVar = t.f16822a;
        t.f16830i.b(strInvoke);
        this.f10953b = strInvoke;
        return strInvoke;
    }

    public final void b(String str) {
        if (str == null) {
            t tVar = t.f16822a;
            t.f16830i.b(null);
            this.f10953b = null;
        } else if (h.c(str, this.f10954c)) {
            String str2 = this.f10953b;
            if (str2 == null || o.b0(str2)) {
                a();
            }
        } else {
            a();
        }
        this.f10954c = str;
    }

    public final String c() {
        String strInvoke = this.f10952a.a().invoke();
        b(strInvoke);
        return strInvoke;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && h.c(this.f10952a, ((a) obj).f10952a);
    }

    public final int hashCode() {
        return this.f10952a.hashCode();
    }

    public final String toString() {
        return "AdaptKitAuthProvider(clientAuthProvider=" + this.f10952a + ")";
    }
}
