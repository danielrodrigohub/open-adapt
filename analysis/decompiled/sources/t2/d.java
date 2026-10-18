package t2;

import java.io.File;

/* JADX INFO: compiled from: DiskLruCacheFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements t2.a.InterfaceC0262a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f15388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f15389b;

    /* JADX INFO: compiled from: DiskLruCacheFactory.java */
    public interface a {
    }

    public d(a aVar, long j10) {
        this.f15388a = j10;
        this.f15389b = aVar;
    }

    @Override // t2.a.InterfaceC0262a
    public final t2.a a() {
        f.a aVar = (f.a) this.f15389b;
        File cacheDir = aVar.f15395a.getCacheDir();
        if (cacheDir == null) {
            cacheDir = null;
        } else if (aVar.f15396b != null) {
            cacheDir = new File(cacheDir, aVar.f15396b);
        }
        if (cacheDir == null) {
            return null;
        }
        if (cacheDir.isDirectory() || cacheDir.mkdirs()) {
            return new e(cacheDir, this.f15388a);
        }
        return null;
    }
}
