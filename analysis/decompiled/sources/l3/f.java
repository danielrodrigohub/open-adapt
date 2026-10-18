package l3;

import java.util.Objects;

/* JADX INFO: compiled from: GlideSuppliers.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements g<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Object f9932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f9933b;

    public f(g gVar) {
        this.f9933b = gVar;
    }

    @Override // l3.g
    public final Object get() {
        if (this.f9932a == null) {
            synchronized (this) {
                if (this.f9932a == null) {
                    Object obj = this.f9933b.get();
                    Objects.requireNonNull(obj, "Argument must not be null");
                    this.f9932a = obj;
                }
            }
        }
        return this.f9932a;
    }
}
