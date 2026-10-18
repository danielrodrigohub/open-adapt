package g7;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: UnsafeAllocator.java */
/* JADX INFO: loaded from: classes.dex */
public final class u extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f7848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7849b;

    public u(Method method, int i10) {
        this.f7848a = method;
        this.f7849b = i10;
    }

    @Override // g7.x
    public final <T> T c(Class<T> cls) throws Exception {
        x.a(cls);
        return (T) this.f7848a.invoke(null, cls, Integer.valueOf(this.f7849b));
    }
}
