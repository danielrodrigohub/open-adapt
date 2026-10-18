package b1;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.savedstate.Recreator;
import p4.h;

/* JADX INFO: compiled from: SavedStateRegistry.kt */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f3160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Recreator.a f3162e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m.b<String, InterfaceC0051b> f3158a = new m.b<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3163f = true;

    /* JADX INFO: compiled from: SavedStateRegistry.kt */
    public interface a {
        void a(d dVar);
    }

    /* JADX INFO: renamed from: b1.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SavedStateRegistry.kt */
    public interface InterfaceC0051b {
        Bundle a();
    }

    public final Bundle a(String str) {
        if (!this.f3161d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
        }
        Bundle bundle = this.f3160c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = this.f3160c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f3160c;
        boolean z10 = false;
        if (bundle4 != null && !bundle4.isEmpty()) {
            z10 = true;
        }
        if (!z10) {
            this.f3160c = null;
        }
        return bundle2;
    }

    public final void b(String str, InterfaceC0051b interfaceC0051b) {
        h.j(interfaceC0051b, "provider");
        if (!(this.f3158a.m(str, interfaceC0051b) == null)) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }

    public final void c() {
        if (!this.f3163f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
        }
        Recreator.a aVar = this.f3162e;
        if (aVar == null) {
            aVar = new Recreator.a(this);
        }
        this.f3162e = aVar;
        try {
            androidx.lifecycle.h.class.getDeclaredConstructor(new Class[0]);
            Recreator.a aVar2 = this.f3162e;
            if (aVar2 != null) {
                aVar2.f2894a.add(androidx.lifecycle.h.class.getName());
            }
        } catch (NoSuchMethodException e10) {
            StringBuilder sbC = a0.b.c("Class ");
            sbC.append(androidx.lifecycle.h.class.getSimpleName());
            sbC.append(" must have default constructor in order to be automatically recreated");
            throw new IllegalArgumentException(sbC.toString(), e10);
        }
    }
}
