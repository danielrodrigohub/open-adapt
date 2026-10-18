package pc;

import p4.h;

/* JADX INFO: compiled from: ByteArrayCommandResponse.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<Response> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final lc.b<Object> f13423a;

    public c(lc.b<Response> bVar) {
        h.j(bVar, "request");
        this.f13423a = bVar;
    }

    public abstract Object a(byte[] bArr) throws Throwable;

    public final void b(Throwable th) {
        h.j(th, "throwable");
        this.f13423a.k(th);
    }

    public void c(byte[] bArr) {
        if (bArr == null) {
            this.f13423a.k(new Exception("Response not present"));
            return;
        }
        try {
            Object objA = a(bArr);
            if (objA != null) {
                this.f13423a.j(objA);
            } else {
                this.f13423a.k(new qc.a());
            }
        } catch (Throwable th) {
            this.f13423a.k(th);
        }
    }
}
