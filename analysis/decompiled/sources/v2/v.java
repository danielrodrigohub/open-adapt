package v2;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: UriLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class v<Data> implements n<Uri, Data> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set<String> f16209b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c<Data> f16210a;

    /* JADX INFO: compiled from: UriLoader.java */
    public static final class a implements o<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f16211a;

        public a(ContentResolver contentResolver) {
            this.f16211a = contentResolver;
        }

        @Override // v2.v.c
        public final com.bumptech.glide.load.data.d<AssetFileDescriptor> a(Uri uri) {
            return new com.bumptech.glide.load.data.a(this.f16211a, uri);
        }

        @Override // v2.o
        public final n<Uri, AssetFileDescriptor> b(r rVar) {
            return new v(this);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: UriLoader.java */
    public static class b implements o<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f16212a;

        public b(ContentResolver contentResolver) {
            this.f16212a = contentResolver;
        }

        @Override // v2.v.c
        public final com.bumptech.glide.load.data.d<ParcelFileDescriptor> a(Uri uri) {
            return new com.bumptech.glide.load.data.i(this.f16212a, uri);
        }

        @Override // v2.o
        public final n<Uri, ParcelFileDescriptor> b(r rVar) {
            return new v(this);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: UriLoader.java */
    public interface c<Data> {
        com.bumptech.glide.load.data.d<Data> a(Uri uri);
    }

    /* JADX INFO: compiled from: UriLoader.java */
    public static class d implements o<Uri, InputStream>, c<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f16213a;

        public d(ContentResolver contentResolver) {
            this.f16213a = contentResolver;
        }

        @Override // v2.v.c
        public final com.bumptech.glide.load.data.d<InputStream> a(Uri uri) {
            return new com.bumptech.glide.load.data.n(this.f16213a, uri);
        }

        @Override // v2.o
        public final n<Uri, InputStream> b(r rVar) {
            return new v(this);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public v(c<Data> cVar) {
        this.f16210a = cVar;
    }

    @Override // v2.n
    public final n.a a(Uri uri, int i10, int i11, p2.h hVar) {
        Uri uri2 = uri;
        return new n.a(new k3.d(uri2), this.f16210a.a(uri2));
    }

    @Override // v2.n
    public final boolean b(Uri uri) {
        return f16209b.contains(uri.getScheme());
    }
}
