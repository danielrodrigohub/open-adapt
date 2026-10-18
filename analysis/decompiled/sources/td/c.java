package td;

import java.io.Serializable;

/* JADX INFO: compiled from: Random.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f15597h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c f15598i = md.b.f11125a.b();

    /* JADX INFO: compiled from: Random.kt */
    public static final class a extends c implements Serializable {
        @Override // td.c
        public final int a() {
            return c.f15598i.a();
        }

        @Override // td.c
        public final int b(int i10) {
            return c.f15598i.b(i10);
        }
    }

    public abstract int a();

    public abstract int b(int i10);
}
