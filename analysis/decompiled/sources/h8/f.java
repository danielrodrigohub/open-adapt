package h8;

import p4.h;

/* JADX INFO: compiled from: UserDoesNotExistInCacheException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends Exception {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8310h;

    public f() {
        super("User does not exist in shared preference cache");
        this.f8310h = "User does not exist in shared preference cache";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && h.c(this.f8310h, ((f) obj).f8310h);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f8310h;
    }

    public final int hashCode() {
        return this.f8310h.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return a0.d.c("UserDoesNotExistInCacheException(message=", this.f8310h, ")");
    }

    public f(String str, int i10, rd.h hVar) {
        super("User does not exist in shared preference cache");
        this.f8310h = "User does not exist in shared preference cache";
    }
}
