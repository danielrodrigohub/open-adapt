package r3;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: MediaDrmCallbackException.java */
/* JADX INFO: loaded from: classes.dex */
public final class z extends IOException {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l5.m f14527h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Uri f14528i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map<String, List<String>> f14529j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f14530k;

    public z(l5.m mVar, Uri uri, Map<String, List<String>> map, long j10, Throwable th) {
        super(th);
        this.f14527h = mVar;
        this.f14528i = uri;
        this.f14529j = map;
        this.f14530k = j10;
    }
}
