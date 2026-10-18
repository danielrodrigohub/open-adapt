package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: FragmentTransition.java */
/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f1916a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i0 f1917b = new i0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k0 f1918c;

    static {
        k0 k0Var;
        try {
            k0Var = (k0) androidx.transition.c.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            k0Var = null;
        }
        f1918c = k0Var;
    }

    public static void a(m mVar, m mVar2, boolean z10) {
        if (z10) {
            Objects.requireNonNull(mVar2);
        } else {
            Objects.requireNonNull(mVar);
        }
    }

    public static void b(p.a<String, String> aVar, p.a<String, View> aVar2) {
        int i10 = aVar.f12614j;
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            }
            if (!aVar2.containsKey(aVar.m(i10))) {
                aVar.k(i10);
            }
        }
    }

    public static void c(ArrayList<View> arrayList, int i10) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i10);
        }
    }
}
