package dd;

import kotlinx.serialization.Serializable;
import p4.h;

/* JADX INFO: compiled from: Group.kt */
/* JADX INFO: loaded from: classes.dex */
@Serializable
public final class d implements yc.a.c {
    public static final a Companion = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final d f6178i = new d("default");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6179h;

    /* JADX INFO: compiled from: Group.kt */
    public static final class a {
    }

    public d(String str) {
        this.f6179h = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && h.c(this.f6179h, ((d) obj).f6179h);
    }

    public final int hashCode() {
        return this.f6179h.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("Group(name="), this.f6179h, ')');
    }
}
