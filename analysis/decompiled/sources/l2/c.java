package l2;

import java.util.Objects;

/* JADX INFO: compiled from: LottieValueCallback.java */
/* JADX INFO: loaded from: classes.dex */
public class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b<T> f9914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public T f9915b;

    public c() {
        this.f9914a = new b<>();
        this.f9915b = null;
    }

    public T a(b<T> bVar) {
        return this.f9915b;
    }

    public final T b(float f10, float f11, T t10, T t11, float f12, float f13, float f14) {
        b<T> bVar = this.f9914a;
        Objects.requireNonNull(bVar);
        bVar.f9911a = t10;
        bVar.f9912b = t11;
        bVar.f9913c = f13;
        return a(bVar);
    }

    public c(T t10) {
        this.f9914a = new b<>();
        this.f9915b = t10;
    }
}
