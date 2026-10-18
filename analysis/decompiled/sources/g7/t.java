package g7;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: UnsafeAllocator.java */
/* JADX INFO: loaded from: classes.dex */
public final class t extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f7846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7847b;

    public t(Method method, Object obj) {
        this.f7846a = method;
        this.f7847b = obj;
    }

    @Override // g7.x
    public final <T> T c(Class<T> cls) throws Exception {
        x.a(cls);
        return (T) this.f7846a.invoke(this.f7847b, cls);
    }
}
