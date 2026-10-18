package l5;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: ParsingLoadable.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0<T> implements d0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f10017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i0 f10019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a<? extends T> f10020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile T f10021f;

    /* JADX INFO: compiled from: ParsingLoadable.java */
    public interface a<T> {
        T a(Uri uri, InputStream inputStream) throws IOException;
    }

    public f0(j jVar, Uri uri, int i10, a<? extends T> aVar) {
        Map mapEmptyMap = Collections.emptyMap();
        m5.a.g(uri, "The uri must be set.");
        m mVar = new m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 1, null);
        this.f10019d = new i0(jVar);
        this.f10017b = mVar;
        this.f10018c = i10;
        this.f10020e = aVar;
        this.f10016a = p4.r.a();
    }

    @Override // l5.d0.d
    public final void a() throws IOException {
        this.f10019d.f10052b = 0L;
        l lVar = new l(this.f10019d, this.f10017b);
        try {
            if (!lVar.f10069k) {
                lVar.f10066h.l(lVar.f10067i);
                lVar.f10069k = true;
            }
            Uri uriO = this.f10019d.o();
            Objects.requireNonNull(uriO);
            this.f10021f = this.f10020e.a(uriO, lVar);
        } finally {
            m5.g0.g(lVar);
        }
    }

    @Override // l5.d0.d
    public final void b() {
    }
}
