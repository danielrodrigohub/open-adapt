package r2;

import java.util.Objects;

/* JADX INFO: compiled from: LockedResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class v<Z> implements w<Z>, m3.a.d {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final i0.e<v<?>> f14385l = (m3.a.c) m3.a.a(20, new a());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m3.d.a f14386h = new m3.d.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public w<Z> f14387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f14388j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f14389k;

    /* JADX INFO: compiled from: LockedResource.java */
    public class a implements m3.a.b<v<?>> {
        @Override // m3.a.b
        public final v<?> create() {
            return new v<>();
        }
    }

    public static <Z> v<Z> d(w<Z> wVar) {
        v<Z> vVar = (v) f14385l.b();
        Objects.requireNonNull(vVar, "Argument must not be null");
        vVar.f14389k = false;
        vVar.f14388j = true;
        vVar.f14387i = wVar;
        return vVar;
    }

    @Override // r2.w
    public final int a() {
        return this.f14387i.a();
    }

    @Override // r2.w
    public final Class<Z> b() {
        return this.f14387i.b();
    }

    @Override // r2.w
    public final synchronized void c() {
        this.f14386h.a();
        this.f14389k = true;
        if (!this.f14388j) {
            this.f14387i.c();
            this.f14387i = null;
            f14385l.a(this);
        }
    }

    public final synchronized void e() {
        this.f14386h.a();
        if (!this.f14388j) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f14388j = false;
        if (this.f14389k) {
            c();
        }
    }

    @Override // r2.w
    public final Z get() {
        return this.f14387i.get();
    }

    @Override // m3.a.d
    public final m3.d j() {
        return this.f14386h;
    }
}
