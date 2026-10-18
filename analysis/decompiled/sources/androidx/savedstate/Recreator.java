package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.i;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import b1.b;
import b1.d;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import p4.h;

/* JADX INFO: compiled from: Recreator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Recreator implements n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f2893h;

    /* JADX INFO: compiled from: Recreator.kt */
    public static final class a implements b.InterfaceC0051b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Set<String> f2894a;

        public a(b bVar) {
            h.j(bVar, "registry");
            this.f2894a = new LinkedHashSet();
            bVar.b("androidx.savedstate.Restarter", this);
        }

        @Override // b1.b.InterfaceC0051b
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f2894a));
            return bundle;
        }
    }

    public Recreator(d dVar) {
        h.j(dVar, "owner");
        this.f2893h = dVar;
    }

    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        if (bVar != i.b.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        qVar.a().c(this);
        Bundle bundleA = this.f2893h.f().a("androidx.savedstate.Restarter");
        if (bundleA == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(b.a.class);
                h.i(clsAsSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object objNewInstance = declaredConstructor.newInstance(new Object[0]);
                        h.i(objNewInstance, "{\n                constr…wInstance()\n            }");
                        ((b.a) objNewInstance).a(this.f2893h);
                    } catch (Exception e10) {
                        throw new RuntimeException(androidx.recyclerview.widget.d.c("Failed to instantiate ", str), e10);
                    }
                } catch (NoSuchMethodException e11) {
                    StringBuilder sbC = a0.b.c("Class ");
                    sbC.append(clsAsSubclass.getSimpleName());
                    sbC.append(" must have default constructor in order to be automatically recreated");
                    throw new IllegalStateException(sbC.toString(), e11);
                }
            } catch (ClassNotFoundException e12) {
                throw new RuntimeException(a0.d.c("Class ", str, " wasn't found"), e12);
            }
        }
    }
}
