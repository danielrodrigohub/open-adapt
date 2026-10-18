package i2;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: AnimatableValueParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static <T> List<l2.a<T>> a(j2.c cVar, y1.i iVar, l0<T> l0Var) throws IOException {
        return u.a(cVar, iVar, 1.0f, l0Var, false);
    }

    public static e2.a b(j2.c cVar, y1.i iVar) throws IOException {
        return new e2.a(a(cVar, iVar, g.f8679a));
    }

    public static e2.b c(j2.c cVar, y1.i iVar, boolean z10) throws IOException {
        return new e2.b(u.a(cVar, iVar, z10 ? k2.g.c() : 1.0f, l.f8701a, false));
    }

    public static e2.d d(j2.c cVar, y1.i iVar) throws IOException {
        return new e2.d(a(cVar, iVar, r.f8711a));
    }

    public static e2.f e(j2.c cVar, y1.i iVar) throws IOException {
        return new e2.f(u.a(cVar, iVar, k2.g.c(), z.f8727a, true));
    }
}
