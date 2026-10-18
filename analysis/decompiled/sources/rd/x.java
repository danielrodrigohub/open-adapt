package rd;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: Reflection.java */
/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f14796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final wd.b[] f14797b;

    static {
        y yVar = null;
        try {
            yVar = (y) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (yVar == null) {
            yVar = new y();
        }
        f14796a = yVar;
        f14797b = new wd.b[0];
    }

    public static wd.b a(Class cls) {
        Objects.requireNonNull(f14796a);
        return new g(cls);
    }

    public static wd.g b(Class cls) {
        y yVar = f14796a;
        wd.b bVarA = a(cls);
        List listEmptyList = Collections.emptyList();
        Objects.requireNonNull(yVar);
        return new c0(bVarA, listEmptyList);
    }

    public static wd.g c(Class cls, wd.h hVar) {
        y yVar = f14796a;
        wd.b bVarA = a(cls);
        List listSingletonList = Collections.singletonList(hVar);
        Objects.requireNonNull(yVar);
        return new c0(bVarA, listSingletonList);
    }
}
