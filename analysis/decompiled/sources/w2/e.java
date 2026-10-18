package w2;

import java.io.InputStream;
import java.net.URL;
import p2.h;
import v2.f;
import v2.n;
import v2.o;
import v2.r;

/* JADX INFO: compiled from: UrlLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements n<URL, InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n<f, InputStream> f17085a;

    /* JADX INFO: compiled from: UrlLoader.java */
    public static class a implements o<URL, InputStream> {
        @Override // v2.o
        public final n<URL, InputStream> b(r rVar) {
            return new e(rVar.c(f.class, InputStream.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public e(n<f, InputStream> nVar) {
        this.f17085a = nVar;
    }

    @Override // v2.n
    public final n.a<InputStream> a(URL url, int i10, int i11, h hVar) {
        return this.f17085a.a(new f(url), i10, i11, hVar);
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(URL url) {
        return true;
    }
}
