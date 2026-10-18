package ed;

import a1.f;
import androidx.appcompat.widget.o;
import fa.m;
import java.util.List;
import java.util.Map;
import p4.h;
import q.g;

/* JADX INFO: compiled from: Telemetry.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends android.support.v4.media.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map<a, String> f6742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<d> f6743f;

    public b(int i10, String str, String str2, Map map, List list) {
        o.d(i10, "level");
        h.j(str2, "message");
        h.j(map, "attributes");
        h.j(list, "tags");
        this.f6738a = i10;
        this.f6739b = str;
        this.f6740c = str2;
        this.f6741d = null;
        this.f6742e = map;
        this.f6743f = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f6738a == bVar.f6738a && h.c(this.f6739b, bVar.f6739b) && h.c(this.f6740c, bVar.f6740c) && h.c(this.f6741d, bVar.f6741d) && h.c(this.f6742e, bVar.f6742e) && h.c(this.f6743f, bVar.f6743f);
    }

    public final int hashCode() {
        int iC = f.c(this.f6740c, f.c(this.f6739b, g.a(this.f6738a) * 31, 31), 31);
        String str = this.f6741d;
        return this.f6743f.hashCode() + m.d(this.f6742e, (iC + (str == null ? 0 : str.hashCode())) * 31, 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Breadcrumb(level=");
        sbC.append(c.c(this.f6738a));
        sbC.append(", breadcrumbId=");
        sbC.append(this.f6739b);
        sbC.append(", message=");
        sbC.append(this.f6740c);
        sbC.append(", sensitiveMessage=");
        sbC.append((Object) this.f6741d);
        sbC.append(", attributes=");
        sbC.append(this.f6742e);
        sbC.append(", tags=");
        sbC.append(this.f6743f);
        sbC.append(')');
        return sbC.toString();
    }
}
