package r2;

/* JADX INFO: compiled from: DiskCacheStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14302a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f14303b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f14304c = new c();

    /* JADX INFO: compiled from: DiskCacheStrategy.java */
    public class a extends l {
        @Override // r2.l
        public final boolean a() {
            return false;
        }

        @Override // r2.l
        public final boolean b() {
            return false;
        }

        @Override // r2.l
        public final boolean c(p2.a aVar) {
            return false;
        }

        @Override // r2.l
        public final boolean d(boolean z10, p2.a aVar, p2.c cVar) {
            return false;
        }
    }

    /* JADX INFO: compiled from: DiskCacheStrategy.java */
    public class b extends l {
        @Override // r2.l
        public final boolean a() {
            return true;
        }

        @Override // r2.l
        public final boolean b() {
            return false;
        }

        @Override // r2.l
        public final boolean c(p2.a aVar) {
            return (aVar == p2.a.DATA_DISK_CACHE || aVar == p2.a.MEMORY_CACHE) ? false : true;
        }

        @Override // r2.l
        public final boolean d(boolean z10, p2.a aVar, p2.c cVar) {
            return false;
        }
    }

    /* JADX INFO: compiled from: DiskCacheStrategy.java */
    public class c extends l {
        @Override // r2.l
        public final boolean a() {
            return true;
        }

        @Override // r2.l
        public final boolean b() {
            return true;
        }

        @Override // r2.l
        public final boolean c(p2.a aVar) {
            return aVar == p2.a.REMOTE;
        }

        @Override // r2.l
        public final boolean d(boolean z10, p2.a aVar, p2.c cVar) {
            return ((z10 && aVar == p2.a.DATA_DISK_CACHE) || aVar == p2.a.LOCAL) && cVar == p2.c.TRANSFORMED;
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(p2.a aVar);

    public abstract boolean d(boolean z10, p2.a aVar, p2.c cVar);
}
