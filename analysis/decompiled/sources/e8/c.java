package e8;

import java.util.ArrayList;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentityFields.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @f7.b("fields")
    public final List<String> f6556a;

    public c(List<String> list) {
        h.j(list, "fields");
        this.f6556a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && h.c(this.f6556a, ((c) obj).f6556a);
    }

    public final int hashCode() {
        return this.f6556a.hashCode();
    }

    public final String toString() {
        return "AdaptIdentityFields(fields=" + this.f6556a + ")";
    }

    public c() {
        this.f6556a = new ArrayList();
    }
}
