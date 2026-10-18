package v2;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: StringLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class t<Data> implements n<String, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n<Uri, Data> f16205a;

    /* JADX INFO: compiled from: StringLoader.java */
    public static final class a implements o<String, AssetFileDescriptor> {
        @Override // v2.o
        public final n<String, AssetFileDescriptor> b(r rVar) {
            return new t(rVar.c(Uri.class, AssetFileDescriptor.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: StringLoader.java */
    public static class b implements o<String, ParcelFileDescriptor> {
        @Override // v2.o
        public final n<String, ParcelFileDescriptor> b(r rVar) {
            return new t(rVar.c(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: StringLoader.java */
    public static class c implements o<String, InputStream> {
        @Override // v2.o
        public final n<String, InputStream> b(r rVar) {
            return new t(rVar.c(Uri.class, InputStream.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public t(n<Uri, Data> nVar) {
        this.f16205a = nVar;
    }

    @Override // v2.n
    public final n.a a(String str, int i10, int i11, p2.h hVar) {
        Uri uriFromFile;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            uriFromFile = null;
        } else if (str2.charAt(0) == '/') {
            uriFromFile = Uri.fromFile(new File(str2));
        } else {
            Uri uri = Uri.parse(str2);
            uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str2)) : uri;
        }
        if (uriFromFile == null || !this.f16205a.b(uriFromFile)) {
            return null;
        }
        return this.f16205a.a(uriFromFile, i10, i11, hVar);
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(String str) {
        return true;
    }
}
