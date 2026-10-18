package w2;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import p2.h;
import v2.n;
import v2.o;
import v2.r;

/* JADX INFO: compiled from: QMediaStoreUriLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class d<DataT> implements n<Uri, DataT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n<File, DataT> f17069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n<Uri, DataT> f17070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Class<DataT> f17071d;

    /* JADX INFO: compiled from: QMediaStoreUriLoader.java */
    public static abstract class a<DataT> implements o<Uri, DataT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f17072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class<DataT> f17073b;

        public a(Context context, Class<DataT> cls) {
            this.f17072a = context;
            this.f17073b = cls;
        }

        @Override // v2.o
        public final n<Uri, DataT> b(r rVar) {
            return new d(this.f17072a, rVar.c(File.class, this.f17073b), rVar.c(Uri.class, this.f17073b), this.f17073b);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: QMediaStoreUriLoader.java */
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* JADX INFO: compiled from: QMediaStoreUriLoader.java */
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    /* JADX INFO: renamed from: w2.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: QMediaStoreUriLoader.java */
    public static final class C0300d<DataT> implements com.bumptech.glide.load.data.d<DataT> {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final String[] f17074r = {"_data"};

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Context f17075h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final n<File, DataT> f17076i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final n<Uri, DataT> f17077j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Uri f17078k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f17079l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f17080m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final h f17081n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final Class<DataT> f17082o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public volatile boolean f17083p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public volatile com.bumptech.glide.load.data.d<DataT> f17084q;

        public C0300d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Uri uri, int i10, int i11, h hVar, Class<DataT> cls) {
            this.f17075h = context.getApplicationContext();
            this.f17076i = nVar;
            this.f17077j = nVar2;
            this.f17078k = uri;
            this.f17079l = i10;
            this.f17080m = i11;
            this.f17081n = hVar;
            this.f17082o = cls;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<DataT> a() {
            return this.f17082o;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
            com.bumptech.glide.load.data.d<DataT> dVar = this.f17084q;
            if (dVar != null) {
                dVar.b();
            }
        }

        public final com.bumptech.glide.load.data.d<DataT> c() throws Throwable {
            n.a<DataT> aVarA;
            Cursor cursor = null;
            if (Environment.isExternalStorageLegacy()) {
                n<File, DataT> nVar = this.f17076i;
                Uri uri = this.f17078k;
                try {
                    Cursor cursorQuery = this.f17075h.getContentResolver().query(uri, f17074r, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                                if (TextUtils.isEmpty(string)) {
                                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                                }
                                File file = new File(string);
                                cursorQuery.close();
                                aVarA = nVar.a(file, this.f17079l, this.f17080m, this.f17081n);
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                aVarA = this.f17077j.a(this.f17075h.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0 ? MediaStore.setRequireOriginal(this.f17078k) : this.f17078k, this.f17079l, this.f17080m, this.f17081n);
            }
            if (aVarA != null) {
                return aVarA.f16176c;
            }
            return null;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
            this.f17083p = true;
            com.bumptech.glide.load.data.d<DataT> dVar = this.f17084q;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final p2.a e() {
            return p2.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void f(g gVar, com.bumptech.glide.load.data.d.a<? super DataT> aVar) throws Throwable {
            try {
                com.bumptech.glide.load.data.d<DataT> dVarC = c();
                if (dVarC == null) {
                    aVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.f17078k));
                    return;
                }
                this.f17084q = dVarC;
                if (this.f17083p) {
                    cancel();
                } else {
                    dVarC.f(gVar, aVar);
                }
            } catch (FileNotFoundException e10) {
                aVar.c(e10);
            }
        }
    }

    public d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Class<DataT> cls) {
        this.f17068a = context.getApplicationContext();
        this.f17069b = nVar;
        this.f17070c = nVar2;
        this.f17071d = cls;
    }

    @Override // v2.n
    public final n.a a(Uri uri, int i10, int i11, h hVar) {
        Uri uri2 = uri;
        return new n.a(new k3.d(uri2), new C0300d(this.f17068a, this.f17069b, this.f17070c, uri2, i10, i11, hVar, this.f17071d));
    }

    @Override // v2.n
    public final boolean b(Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && f1.b.j(uri);
    }
}
