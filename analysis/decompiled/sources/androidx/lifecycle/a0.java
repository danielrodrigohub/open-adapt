package androidx.lifecycle;

/* JADX INFO: compiled from: ProcessLifecycleOwner.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 implements q {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a0 f2161m = new a0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2162h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2163i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2164j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f2165k = new r(this);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f2166l = new a();

    /* JADX INFO: compiled from: ProcessLifecycleOwner.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            a0 a0Var = a0.this;
            if (a0Var.f2163i == 0) {
                a0Var.f2164j = true;
                a0Var.f2165k.f(i.b.ON_PAUSE);
            }
            a0 a0Var2 = a0.this;
            if (a0Var2.f2162h == 0 && a0Var2.f2164j) {
                a0Var2.f2165k.f(i.b.ON_STOP);
            }
        }
    }

    @Override // androidx.lifecycle.q
    public final i a() {
        return this.f2165k;
    }
}
