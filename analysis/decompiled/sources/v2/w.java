package v2;

import android.net.Uri;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: UrlUriLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class w<Data> implements n<Uri, Data> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set<String> f16214b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n<f, Data> f16215a;

    /* JADX INFO: compiled from: UrlUriLoader.java */
    public static class a implements o<Uri, InputStream> {
        @Override // v2.o
        public final n<Uri, InputStream> b(r rVar) {
            return new w(rVar.c(f.class, InputStream.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public w(n<f, Data> nVar) {
        this.f16215a = nVar;
    }

    @Override // v2.n
    public final n.a a(Uri uri, int i10, int i11, p2.h hVar) {
        return this.f16215a.a(new f(uri.toString()), i10, i11, hVar);
    }

    @Override // v2.n
    public final boolean b(Uri uri) {
        return f16214b.contains(uri.getScheme());
    }
}
