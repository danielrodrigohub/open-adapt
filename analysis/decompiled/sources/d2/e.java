package d2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: KeyPath.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f5982c = new e("COMPOSITION");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<String> f5983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f f5984b;

    public e(String... strArr) {
        this.f5983a = Arrays.asList(strArr);
    }

    public final e a(String str) {
        e eVar = new e(this);
        eVar.f5983a.add(str);
        return eVar;
    }

    public final boolean b() {
        List<String> list = this.f5983a;
        return list.get(list.size() - 1).equals("**");
    }

    public final boolean c(String str, int i10) {
        if (i10 >= this.f5983a.size()) {
            return false;
        }
        boolean z10 = i10 == this.f5983a.size() - 1;
        String str2 = this.f5983a.get(i10);
        if (!str2.equals("**")) {
            return (z10 || (i10 == this.f5983a.size() + (-2) && b())) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z10 && this.f5983a.get(i10 + 1).equals(str)) {
            return i10 == this.f5983a.size() + (-2) || (i10 == this.f5983a.size() + (-3) && b());
        }
        if (z10) {
            return true;
        }
        int i11 = i10 + 1;
        if (i11 < this.f5983a.size() - 1) {
            return false;
        }
        return this.f5983a.get(i11).equals(str);
    }

    public final int d(String str, int i10) {
        if ("__container".equals(str)) {
            return 0;
        }
        if (this.f5983a.get(i10).equals("**")) {
            return (i10 != this.f5983a.size() - 1 && this.f5983a.get(i10 + 1).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public final boolean e(String str, int i10) {
        if ("__container".equals(str)) {
            return true;
        }
        if (i10 >= this.f5983a.size()) {
            return false;
        }
        return this.f5983a.get(i10).equals(str) || this.f5983a.get(i10).equals("**") || this.f5983a.get(i10).equals("*");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (!this.f5983a.equals(eVar.f5983a)) {
            return false;
        }
        f fVar = this.f5984b;
        f fVar2 = eVar.f5984b;
        if (fVar != null) {
            return fVar.equals(fVar2);
        }
        return fVar2 == null;
    }

    public final boolean f(String str, int i10) {
        return "__container".equals(str) || i10 < this.f5983a.size() - 1 || this.f5983a.get(i10).equals("**");
    }

    public final e g(f fVar) {
        e eVar = new e(this);
        eVar.f5984b = fVar;
        return eVar;
    }

    public final int hashCode() {
        int iHashCode = this.f5983a.hashCode() * 31;
        f fVar = this.f5984b;
        return iHashCode + (fVar != null ? fVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("KeyPath{keys=");
        sbC.append(this.f5983a);
        sbC.append(",resolved=");
        sbC.append(this.f5984b != null);
        sbC.append('}');
        return sbC.toString();
    }

    public e(e eVar) {
        this.f5983a = new ArrayList(eVar.f5983a);
        this.f5984b = eVar.f5984b;
    }
}
