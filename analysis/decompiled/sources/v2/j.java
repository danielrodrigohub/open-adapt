package v2;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: compiled from: MediaStoreFileLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements n<Uri, File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f16164a;

    /* JADX INFO: compiled from: MediaStoreFileLoader.java */
    public static final class a implements o<Uri, File> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f16165a;

        public a(Context context) {
            this.f16165a = context;
        }

        @Override // v2.o
        public final n<Uri, File> b(r rVar) {
            return new j(this.f16165a);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: MediaStoreFileLoader.java */
    public static class b implements com.bumptech.glide.load.data.d<File> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String[] f16166j = {"_data"};

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Context f16167h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Uri f16168i;

        public b(Context context, Uri uri) {
            this.f16167h = context;
            this.f16168i = uri;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<File> a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final p2.a e() {
            return p2.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d.a<? super File> aVar) {
            Cursor cursorQuery = this.f16167h.getContentResolver().query(this.f16168i, f16166j, null, null, null);
            String string = null;
            if (cursorQuery != null) {
                try {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                    cursorQuery.close();
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (!TextUtils.isEmpty(string)) {
                aVar.d(new File(string));
                return;
            }
            StringBuilder sbC = a0.b.c("Failed to find file path for: ");
            sbC.append(this.f16168i);
            aVar.c(new FileNotFoundException(sbC.toString()));
        }
    }

    public j(Context context) {
        this.f16164a = context;
    }

    @Override // v2.n
    public final n.a<File> a(Uri uri, int i10, int i11, p2.h hVar) {
        Uri uri2 = uri;
        return new n.a<>(new k3.d(uri2), new b(this.f16164a, uri2));
    }

    @Override // v2.n
    public final boolean b(Uri uri) {
        return f1.b.j(uri);
    }
}
