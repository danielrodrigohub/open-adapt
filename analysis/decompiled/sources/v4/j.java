package v4;

import android.net.Uri;
import java.io.IOException;
import l5.c0;
import p4.e0;

/* JADX INFO: compiled from: HlsPlaylistTracker.java */
/* JADX INFO: loaded from: classes.dex */
public interface j {

    /* JADX INFO: compiled from: HlsPlaylistTracker.java */
    public interface a {
        boolean b(Uri uri, c0.c cVar, boolean z10);

        void h();
    }

    /* JADX INFO: compiled from: HlsPlaylistTracker.java */
    public static final class b extends IOException {
    }

    /* JADX INFO: compiled from: HlsPlaylistTracker.java */
    public static final class c extends IOException {
    }

    /* JADX INFO: compiled from: HlsPlaylistTracker.java */
    public interface d {
    }

    boolean a();

    f b();

    boolean c(Uri uri, long j10);

    void d(a aVar);

    boolean e(Uri uri);

    void f() throws IOException;

    void g(Uri uri) throws IOException;

    void i(Uri uri);

    e j(Uri uri, boolean z10);

    void l(Uri uri, e0.a aVar, d dVar);

    void n(a aVar);

    long o();

    void stop();
}
