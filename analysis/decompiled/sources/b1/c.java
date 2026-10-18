package b1;

import android.os.Bundle;
import androidx.lifecycle.i;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import androidx.savedstate.Recreator;
import java.util.Map;
import java.util.Objects;
import p4.h;

/* JADX INFO: compiled from: SavedStateRegistryController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f3165b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3166c;

    public c(d dVar) {
        this.f3164a = dVar;
    }

    public static final c a(d dVar) {
        h.j(dVar, "owner");
        return new c(dVar);
    }

    public final void b() {
        i iVarA = this.f3164a.a();
        h.i(iVarA, "owner.lifecycle");
        if (!(iVarA.b() == i.c.INITIALIZED)) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        iVarA.a(new Recreator(this.f3164a));
        final b bVar = this.f3165b;
        Objects.requireNonNull(bVar);
        if (!(!bVar.f3159b)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        iVarA.a(new n() { // from class: b1.a
            @Override // androidx.lifecycle.n
            public final void a(q qVar, i.b bVar2) {
                b bVar3 = bVar;
                h.j(bVar3, "this$0");
                if (bVar2 == i.b.ON_START) {
                    bVar3.f3163f = true;
                } else if (bVar2 == i.b.ON_STOP) {
                    bVar3.f3163f = false;
                }
            }
        });
        bVar.f3159b = true;
        this.f3166c = true;
    }

    public final void c(Bundle bundle) {
        if (!this.f3166c) {
            b();
        }
        i iVarA = this.f3164a.a();
        h.i(iVarA, "owner.lifecycle");
        if (!(!iVarA.b().b(i.c.STARTED))) {
            StringBuilder sbC = a0.b.c("performRestore cannot be called when owner is ");
            sbC.append(iVarA.b());
            throw new IllegalStateException(sbC.toString().toString());
        }
        b bVar = this.f3165b;
        if (!bVar.f3159b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!bVar.f3161d)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        bVar.f3160c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        bVar.f3161d = true;
    }

    public final void d(Bundle bundle) {
        h.j(bundle, "outBundle");
        b bVar = this.f3165b;
        Objects.requireNonNull(bVar);
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = bVar.f3160c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        m.b<String, b.InterfaceC0051b>.d dVarK = bVar.f3158a.k();
        while (dVarK.hasNext()) {
            Map.Entry entry = (Map.Entry) dVarK.next();
            bundle2.putBundle((String) entry.getKey(), ((b.InterfaceC0051b) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
