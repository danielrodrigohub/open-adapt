package w2;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import p2.h;
import v2.n;
import v2.o;
import v2.r;
import y2.c0;

/* JADX INFO: compiled from: MediaStoreVideoThumbLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements n<Uri, InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17066a;

    /* JADX INFO: compiled from: MediaStoreVideoThumbLoader.java */
    public static class a implements o<Uri, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f17067a;

        public a(Context context) {
            this.f17067a = context;
        }

        @Override // v2.o
        public final n<Uri, InputStream> b(r rVar) {
            return new c(this.f17067a);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public c(Context context) {
        this.f17066a = context.getApplicationContext();
    }

    @Override // v2.n
    public final n.a<InputStream> a(Uri uri, int i10, int i11, h hVar) {
        Uri uri2 = uri;
        if (i10 != Integer.MIN_VALUE && i11 != Integer.MIN_VALUE && i10 <= 512 && i11 <= 384) {
            Long l10 = (Long) hVar.c(c0.f18436d);
            if (l10 != null && l10.longValue() == -1) {
                k3.d dVar = new k3.d(uri2);
                Context context = this.f17066a;
                return new n.a<>(dVar, q2.a.c(context, uri2, new q2.a.b(context.getContentResolver())));
            }
        }
        return null;
    }

    @Override // v2.n
    public final boolean b(Uri uri) {
        Uri uri2 = uri;
        return f1.b.j(uri2) && uri2.getPathSegments().contains("video");
    }
}
