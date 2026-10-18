package g7;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: UnsafeAllocator.java */
/* JADX INFO: loaded from: classes.dex */
public final class v extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f7850a;

    public v(Method method) {
        this.f7850a = method;
    }

    @Override // g7.x
    public final <T> T c(Class<T> cls) throws Exception {
        x.a(cls);
        return (T) this.f7850a.invoke(null, cls, Object.class);
    }
}
