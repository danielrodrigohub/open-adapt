package rd;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: TypeReference.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements wd.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final wd.b f14778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<wd.h> f14779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final wd.g f14780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14781d;

    /* JADX INFO: compiled from: TypeReference.kt */
    public static final class a extends o implements qd.l<wd.h, CharSequence> {
        public a() {
            super(1);
        }

        @Override // qd.l
        public final CharSequence invoke(wd.h hVar) {
            String strValueOf;
            wd.h hVar2 = hVar;
            p4.h.j(hVar2, "it");
            Objects.requireNonNull(c0.this);
            if (hVar2.f17606a == 0) {
                return "*";
            }
            wd.g gVar = hVar2.f17607b;
            c0 c0Var = gVar instanceof c0 ? (c0) gVar : null;
            if (c0Var == null || (strValueOf = c0Var.d(true)) == null) {
                strValueOf = String.valueOf(hVar2.f17607b);
            }
            int iA = q.g.a(hVar2.f17606a);
            if (iA == 0) {
                return strValueOf;
            }
            if (iA == 1) {
                return androidx.recyclerview.widget.d.c("in ", strValueOf);
            }
            if (iA == 2) {
                return androidx.recyclerview.widget.d.c("out ", strValueOf);
            }
            throw new j2.a();
        }
    }

    public c0(wd.b bVar, List list) {
        p4.h.j(list, "arguments");
        this.f14778a = bVar;
        this.f14779b = list;
        this.f14780c = null;
        this.f14781d = 0;
    }

    @Override // wd.g
    public final List<wd.h> a() {
        return this.f14779b;
    }

    @Override // wd.g
    public final boolean b() {
        return (this.f14781d & 1) != 0;
    }

    @Override // wd.g
    public final wd.b c() {
        return this.f14778a;
    }

    public final String d(boolean z10) {
        String name;
        wd.b bVar = this.f14778a;
        if (!(bVar instanceof wd.b)) {
            bVar = null;
        }
        Class clsJ = bVar != null ? androidx.activity.k.j(bVar) : null;
        if (clsJ == null) {
            name = this.f14778a.toString();
        } else if ((this.f14781d & 4) != 0) {
            name = "kotlin.Nothing";
        } else if (clsJ.isArray()) {
            if (p4.h.c(clsJ, boolean[].class)) {
                name = "kotlin.BooleanArray";
            } else if (p4.h.c(clsJ, char[].class)) {
                name = "kotlin.CharArray";
            } else if (p4.h.c(clsJ, byte[].class)) {
                name = "kotlin.ByteArray";
            } else if (p4.h.c(clsJ, short[].class)) {
                name = "kotlin.ShortArray";
            } else if (p4.h.c(clsJ, int[].class)) {
                name = "kotlin.IntArray";
            } else if (p4.h.c(clsJ, float[].class)) {
                name = "kotlin.FloatArray";
            } else if (p4.h.c(clsJ, long[].class)) {
                name = "kotlin.LongArray";
            } else {
                name = p4.h.c(clsJ, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
            }
        } else if (z10 && clsJ.isPrimitive()) {
            wd.b bVar2 = this.f14778a;
            p4.h.h(bVar2, "null cannot be cast to non-null type kotlin.reflect.KClass<*>");
            name = androidx.activity.k.k(bVar2).getName();
        } else {
            name = clsJ.getName();
        }
        String strC = a0.d.c(name, this.f14779b.isEmpty() ? "" : gd.n.d0(this.f14779b, ", ", "<", ">", new a(), 24), (this.f14781d & 1) != 0 ? "?" : "");
        wd.g gVar = this.f14780c;
        if (!(gVar instanceof c0)) {
            return strC;
        }
        String strD = ((c0) gVar).d(true);
        if (p4.h.c(strD, strC)) {
            return strC;
        }
        if (p4.h.c(strD, strC + '?')) {
            return strC + '!';
        }
        return '(' + strC + ".." + strD + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c0) {
            c0 c0Var = (c0) obj;
            if (p4.h.c(this.f14778a, c0Var.f14778a) && p4.h.c(this.f14779b, c0Var.f14779b) && p4.h.c(this.f14780c, c0Var.f14780c) && this.f14781d == c0Var.f14781d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.valueOf(this.f14781d).hashCode() + a4.g.d(this.f14779b, this.f14778a.hashCode() * 31, 31);
    }

    public final String toString() {
        return d(false) + " (Kotlin reflection is not available)";
    }
}
