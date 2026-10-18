package o4;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import l5.f0;
import o4.a;

/* JADX INFO: compiled from: FilteringManifestParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class b<T extends a<T>> implements f0.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0.a<? extends T> f12265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<c> f12266b;

    public b(f0.a<? extends T> aVar, List<c> list) {
        this.f12265a = aVar;
        this.f12266b = list;
    }

    @Override // l5.f0.a
    public final Object a(Uri uri, InputStream inputStream) throws IOException {
        T tA = this.f12265a.a(uri, inputStream);
        List<c> list = this.f12266b;
        return (list == null || list.isEmpty()) ? tA : (a) tA.a(this.f12266b);
    }
}
