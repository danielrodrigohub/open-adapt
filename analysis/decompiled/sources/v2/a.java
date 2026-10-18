package v2;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.InputStream;

/* JADX INFO: compiled from: AssetUriLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a<Data> implements n<Uri, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetManager f16133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC0284a<Data> f16134b;

    /* JADX INFO: renamed from: v2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AssetUriLoader.java */
    public interface InterfaceC0284a<Data> {
        com.bumptech.glide.load.data.d<Data> a(AssetManager assetManager, String str);
    }

    /* JADX INFO: compiled from: AssetUriLoader.java */
    public static class b implements o<Uri, AssetFileDescriptor>, InterfaceC0284a<AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AssetManager f16135a;

        public b(AssetManager assetManager) {
            this.f16135a = assetManager;
        }

        @Override // v2.a.InterfaceC0284a
        public final com.bumptech.glide.load.data.d<AssetFileDescriptor> a(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.h(assetManager, str);
        }

        @Override // v2.o
        public final n<Uri, AssetFileDescriptor> b(r rVar) {
            return new a(this.f16135a, this);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: AssetUriLoader.java */
    public static class c implements o<Uri, InputStream>, InterfaceC0284a<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AssetManager f16136a;

        public c(AssetManager assetManager) {
            this.f16136a = assetManager;
        }

        @Override // v2.a.InterfaceC0284a
        public final com.bumptech.glide.load.data.d<InputStream> a(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.m(assetManager, str);
        }

        @Override // v2.o
        public final n<Uri, InputStream> b(r rVar) {
            return new a(this.f16136a, this);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public a(AssetManager assetManager, InterfaceC0284a<Data> interfaceC0284a) {
        this.f16133a = assetManager;
        this.f16134b = interfaceC0284a;
    }

    @Override // v2.n
    public final n.a a(Uri uri, int i10, int i11, p2.h hVar) {
        Uri uri2 = uri;
        return new n.a(new k3.d(uri2), this.f16134b.a(this.f16133a, uri2.toString().substring(22)));
    }

    @Override // v2.n
    public final boolean b(Uri uri) {
        Uri uri2 = uri;
        return "file".equals(uri2.getScheme()) && !uri2.getPathSegments().isEmpty() && "android_asset".equals(uri2.getPathSegments().get(0));
    }
}
