package qa;

import p4.h;

/* JADX INFO: compiled from: AdaptKitNetworkException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Exception {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Throwable f14171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f14172i;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ a(Throwable th) {
        String message = th.getMessage();
        this(th, message == null ? "A Network Error Occurred" : message);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f14171h, aVar.f14171h) && h.c(this.f14172i, aVar.f14172i);
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f14171h;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f14172i;
    }

    public final int hashCode() {
        return this.f14172i.hashCode() + (this.f14171h.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitNetworkException(cause=" + this.f14171h + ", message=" + this.f14172i + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Throwable th, String str) {
        super(str, th);
        h.j(str, "message");
        this.f14171h = th;
        this.f14172i = str;
    }
}
