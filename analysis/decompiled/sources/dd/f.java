package dd;

import p4.h;

/* JADX INFO: compiled from: Realm.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements yc.a.c {
    public static final a Companion = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final f f6183i = new f("default");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6184h;

    /* JADX INFO: compiled from: Realm.kt */
    public static final class a {
    }

    public f(String str) {
        this.f6184h = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && h.c(this.f6184h, ((f) obj).f6184h);
    }

    public final int hashCode() {
        return this.f6184h.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("Realm(name="), this.f6184h, ')');
    }
}
