package androidx.lifecycle;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: SavedStateHandleSupport.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements b1.b.InterfaceC0051b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b1.b f2186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f2188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final fd.h f2189d;

    /* JADX INFO: compiled from: SavedStateHandleSupport.kt */
    public static final class a extends rd.o implements qd.a<h0> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ o0 f2190h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(o0 o0Var) {
            super(0);
            this.f2190h = o0Var;
        }

        @Override // qd.a
        public final h0 invoke() {
            u0.a aVarC;
            o0 o0Var = this.f2190h;
            p4.h.j(o0Var, "<this>");
            ArrayList arrayList = new ArrayList();
            f0 f0Var = f0.f2185h;
            wd.b bVarA = rd.x.a(h0.class);
            p4.h.j(f0Var, "initializer");
            arrayList.add(new u0.d(androidx.activity.k.j(bVarA), f0Var));
            Object[] array = arrayList.toArray(new u0.d[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            u0.d[] dVarArr = (u0.d[]) array;
            u0.b bVar = new u0.b((u0.d[]) Arrays.copyOf(dVarArr, dVarArr.length));
            n0 n0VarP = o0Var.P();
            p4.h.i(n0VarP, "owner.viewModelStore");
            if (o0Var instanceof g) {
                aVarC = ((g) o0Var).C();
                p4.h.i(aVarC, "{\n        owner.defaultV…ModelCreationExtras\n    }");
            } else {
                aVarC = u0.a.C0269a.f15615b;
            }
            return (h0) new l0(n0VarP, bVar, aVarC).b("androidx.lifecycle.internal.SavedStateHandlesVM", h0.class);
        }
    }

    public g0(b1.b bVar, o0 o0Var) {
        p4.h.j(bVar, "savedStateRegistry");
        p4.h.j(o0Var, "viewModelStoreOwner");
        this.f2186a = bVar;
        this.f2189d = (fd.h) o.x(new a(o0Var));
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, androidx.lifecycle.d0>] */
    @Override // b1.b.InterfaceC0051b
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f2188c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((h0) this.f2189d.getValue()).f2191c.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleA = ((d0) entry.getValue()).f2181e.a();
            if (!p4.h.c(bundleA, Bundle.EMPTY)) {
                bundle.putBundle(str, bundleA);
            }
        }
        this.f2187b = false;
        return bundle;
    }
}
