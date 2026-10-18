package u0;

import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import p4.h;

/* JADX INFO: compiled from: InitializerViewModelFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements l0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d<?>[] f15616a;

    public b(d<?>... dVarArr) {
        h.j(dVarArr, "initializers");
        this.f15616a = dVarArr;
    }

    @Override // androidx.lifecycle.l0.a
    public final <T extends j0> T b(Class<T> cls, a aVar) {
        T t10 = null;
        for (d<?> dVar : this.f15616a) {
            if (h.c(dVar.f15617a, cls)) {
                T tInvoke = dVar.f15618b.invoke(aVar);
                t10 = tInvoke instanceof j0 ? tInvoke : null;
            }
        }
        if (t10 != null) {
            return t10;
        }
        StringBuilder sbC = a0.b.c("No initializer set for given class ");
        sbC.append(cls.getName());
        throw new IllegalArgumentException(sbC.toString());
    }
}
