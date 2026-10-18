package m3;

import android.util.Log;
import i0.g;

/* JADX INFO: compiled from: FactoryPools.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e<Object> f10318a = new C0203a();

    /* JADX INFO: renamed from: m3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FactoryPools.java */
    public class C0203a implements e<Object> {
        @Override // m3.a.e
        public final void a(Object obj) {
        }
    }

    /* JADX INFO: compiled from: FactoryPools.java */
    public interface b<T> {
        T create();
    }

    /* JADX INFO: compiled from: FactoryPools.java */
    public static final class c<T> implements i0.e<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b<T> f10319a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e<T> f10320b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final i0.e<T> f10321c;

        public c(i0.e<T> eVar, b<T> bVar, e<T> eVar2) {
            this.f10321c = eVar;
            this.f10319a = bVar;
            this.f10320b = eVar2;
        }

        @Override // i0.e
        public final boolean a(T t10) {
            if (t10 instanceof d) {
                ((m3.d.a) ((d) t10).j()).f10322a = true;
            }
            this.f10320b.a(t10);
            return this.f10321c.a(t10);
        }

        @Override // i0.e
        public final T b() {
            T tB = this.f10321c.b();
            if (tB == null) {
                tB = this.f10319a.create();
                if (Log.isLoggable("FactoryPools", 2)) {
                    StringBuilder sbC = a0.b.c("Created new ");
                    sbC.append(tB.getClass());
                    Log.v("FactoryPools", sbC.toString());
                }
            }
            if (tB instanceof d) {
                ((m3.d.a) ((d) tB).j()).f10322a = false;
            }
            return tB;
        }
    }

    /* JADX INFO: compiled from: FactoryPools.java */
    public interface d {
        m3.d j();
    }

    /* JADX INFO: compiled from: FactoryPools.java */
    public interface e<T> {
        void a(T t10);
    }

    public static <T extends d> i0.e<T> a(int i10, b<T> bVar) {
        return new c(new g(i10), bVar, f10318a);
    }
}
