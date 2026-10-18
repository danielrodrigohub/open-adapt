package y6;

import java.security.GeneralSecurityException;
import java.util.Set;

/* JADX INFO: compiled from: Registry.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements m.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f18675a;

    public k(f fVar) {
        this.f18675a = fVar;
    }

    @Override // y6.m.a
    public final <Q> c<Q> a(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new d(this.f18675a, cls);
        } catch (IllegalArgumentException e10) {
            throw new GeneralSecurityException("Primitive type not supported", e10);
        }
    }

    @Override // y6.m.a
    public final c<?> b() {
        f fVar = this.f18675a;
        return new d(fVar, fVar.f18664c);
    }

    @Override // y6.m.a
    public final Class<?> c() {
        return this.f18675a.getClass();
    }

    @Override // y6.m.a
    public final Set<Class<?>> d() {
        return this.f18675a.f18663b.keySet();
    }
}
