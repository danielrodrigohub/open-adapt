package q2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: ThumbFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements d<InputStream> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Uri f13543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f13544i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public InputStream f13545j;

    /* JADX INFO: renamed from: q2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ThumbFetcher.java */
    public static class C0240a implements q2.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f13546b = {"_data"};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f13547a;

        public C0240a(ContentResolver contentResolver) {
            this.f13547a = contentResolver;
        }

        @Override // q2.b
        public final Cursor a(Uri uri) {
            return this.f13547a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f13546b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* JADX INFO: compiled from: ThumbFetcher.java */
    public static class b implements q2.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f13548b = {"_data"};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f13549a;

        public b(ContentResolver contentResolver) {
            this.f13549a = contentResolver;
        }

        @Override // q2.b
        public final Cursor a(Uri uri) {
            return this.f13549a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f13548b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    public a(Uri uri, c cVar) {
        this.f13543h = uri;
        this.f13544i = cVar;
    }

    public static a c(Context context, Uri uri, q2.b bVar) {
        return new a(uri, new c(com.bumptech.glide.c.b(context).f4423k.e(), bVar, com.bumptech.glide.c.b(context).f4424l, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() {
        InputStream inputStream = this.f13545j;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0049 A[PHI: r6
      0x0049: PHI (r6v4 android.database.Cursor) = (r6v3 android.database.Cursor), (r6v9 android.database.Cursor) binds: [B:20:0x0047, B:11:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:33:0x006e  */
    /* JADX WARN: Code duplicated, block: B:37:0x007b  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:79:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x00f2: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:64:0x00f2 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.IOException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r6v2 */
    public final InputStream d() throws Throwable {
        SecurityException e10;
        Cursor cursorA;
        ?? r10;
        String string;
        InputStream inputStreamOpenInputStream;
        int iA;
        Uri uri;
        File file;
        Uri uriFromFile;
        c cVar = this.f13544i;
        Uri uri2 = this.f13543h;
        Objects.requireNonNull(cVar);
        boolean z10 = false;
        ?? r11 = 0;
        InputStream inputStreamOpenInputStream2 = null;
        try {
            try {
                cursorA = cVar.f13551a.a(uri2);
                if (cursorA != null) {
                    try {
                        if (cursorA.moveToFirst()) {
                            string = cursorA.getString(0);
                            cursorA.close();
                        }
                    } catch (SecurityException e11) {
                        e10 = e11;
                        if (Log.isLoggable("ThumbStreamOpener", 3)) {
                            Log.d("ThumbStreamOpener", "Failed to query for thumbnail for Uri: " + uri2, e10);
                        }
                        if (cursorA != null) {
                            cursorA.close();
                        }
                    }
                    if (TextUtils.isEmpty(string)) {
                        inputStreamOpenInputStream = null;
                    } else {
                        file = new File(string);
                        if (file.exists() && 0 < file.length()) {
                            z10 = true;
                        }
                        if (z10) {
                            uriFromFile = Uri.fromFile(file);
                            try {
                                inputStreamOpenInputStream = cVar.f13553c.openInputStream(uriFromFile);
                            } catch (NullPointerException e12) {
                                throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri2 + " -> " + uriFromFile).initCause(e12));
                            }
                        } else {
                            inputStreamOpenInputStream = null;
                        }
                    }
                    if (inputStreamOpenInputStream != null) {
                        c cVar2 = this.f13544i;
                        uri = this.f13543h;
                        Objects.requireNonNull(cVar2);
                        try {
                            try {
                                inputStreamOpenInputStream2 = cVar2.f13553c.openInputStream(uri);
                                iA = com.bumptech.glide.load.c.a(cVar2.f13554d, inputStreamOpenInputStream2, cVar2.f13552b);
                                if (inputStreamOpenInputStream2 != null) {
                                    try {
                                        inputStreamOpenInputStream2.close();
                                    } catch (IOException unused) {
                                    }
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    try {
                                        r11.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        } catch (IOException | NullPointerException e13) {
                            if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e13);
                            }
                            if (inputStreamOpenInputStream2 != null) {
                                try {
                                    inputStreamOpenInputStream2.close();
                                } catch (IOException unused3) {
                                }
                            }
                            iA = -1;
                        }
                    } else {
                        iA = -1;
                    }
                    if (iA != -1) {
                        return new g(inputStreamOpenInputStream, iA);
                    }
                    return inputStreamOpenInputStream;
                }
                if (cursorA != null) {
                    cursorA.close();
                }
            } catch (Throwable th2) {
                th = th2;
                r11 = r10;
                if (r11 != 0) {
                    r11.close();
                }
                throw th;
            }
        } catch (SecurityException e14) {
            e10 = e14;
            cursorA = null;
        } catch (Throwable th3) {
            th = th3;
            if (r11 != 0) {
                r11.close();
            }
            throw th;
        }
        string = null;
        if (TextUtils.isEmpty(string)) {
            inputStreamOpenInputStream = null;
        } else {
            file = new File(string);
            if (file.exists()) {
                z10 = true;
            }
            if (z10) {
                inputStreamOpenInputStream = null;
            } else {
                uriFromFile = Uri.fromFile(file);
                inputStreamOpenInputStream = cVar.f13553c.openInputStream(uriFromFile);
            }
        }
        if (inputStreamOpenInputStream != null) {
            c cVar3 = this.f13544i;
            uri = this.f13543h;
            Objects.requireNonNull(cVar3);
            inputStreamOpenInputStream2 = cVar3.f13553c.openInputStream(uri);
            iA = com.bumptech.glide.load.c.a(cVar3.f13554d, inputStreamOpenInputStream2, cVar3.f13552b);
            if (inputStreamOpenInputStream2 != null) {
                inputStreamOpenInputStream2.close();
            }
        } else {
            iA = -1;
        }
        if (iA != -1) {
            return new g(inputStreamOpenInputStream, iA);
        }
        return inputStreamOpenInputStream;
    }

    @Override // com.bumptech.glide.load.data.d
    public final p2.a e() {
        return p2.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(com.bumptech.glide.g gVar, d.a<? super InputStream> aVar) throws Throwable {
        try {
            InputStream inputStreamD = d();
            this.f13545j = inputStreamD;
            aVar.d(inputStreamD);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e10);
            }
            aVar.c(e10);
        }
    }
}
