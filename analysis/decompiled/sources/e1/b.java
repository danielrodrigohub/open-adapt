package e1;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements d1.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f6288h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f6289i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d1.d.a f6290j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f6291k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Object f6292l = new Object();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public a f6293m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6294n;

    /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.java */
    public static class a extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final e1.a[] f6295h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final d1.d.a f6296i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f6297j;

        /* JADX INFO: renamed from: e1.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.java */
        public class C0116a implements DatabaseErrorHandler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ d1.d.a f6298a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e1.a[] f6299b;

            public C0116a(d1.d.a aVar, e1.a[] aVarArr) {
                this.f6298a = aVar;
                this.f6299b = aVarArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                d1.d.a aVar = this.f6298a;
                e1.a aVarY = a.Y(this.f6299b, sQLiteDatabase);
                Objects.requireNonNull(aVar);
                Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + aVarY.Y());
                if (!aVarY.isOpen()) {
                    aVar.a(aVarY.Y());
                    return;
                }
                List<Pair<String, String>> listX = null;
                try {
                    try {
                        listX = aVarY.x();
                    } finally {
                        if (listX != null) {
                            Iterator<Pair<String, String>> it = listX.iterator();
                            while (it.hasNext()) {
                                aVar.a((String) it.next().second);
                            }
                        } else {
                            aVar.a(aVarY.Y());
                        }
                    }
                } catch (SQLiteException unused) {
                }
                try {
                    aVarY.close();
                } catch (IOException unused2) {
                }
            }
        }

        public a(Context context, String str, e1.a[] aVarArr, d1.d.a aVar) {
            super(context, str, null, aVar.f5956a, new C0116a(aVar, aVarArr));
            this.f6296i = aVar;
            this.f6295h = aVarArr;
        }

        /* JADX WARN: Code duplicated, block: B:9:0x000e  */
        public static e1.a Y(e1.a[] aVarArr, SQLiteDatabase sQLiteDatabase) {
            e1.a aVar = aVarArr[0];
            if (aVar == null) {
                aVarArr[0] = new e1.a(sQLiteDatabase);
            } else {
                if (!(aVar.f6286h == sQLiteDatabase)) {
                    aVarArr[0] = new e1.a(sQLiteDatabase);
                }
            }
            return aVarArr[0];
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final synchronized void close() {
            super.close();
            this.f6295h[0] = null;
        }

        public final synchronized d1.b f0() {
            this.f6297j = false;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!this.f6297j) {
                return x(writableDatabase);
            }
            close();
            return f0();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
            d1.d.a aVar = this.f6296i;
            x(sQLiteDatabase);
            aVar.b();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f6296i.c(x(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f6297j = true;
            this.f6296i.d(x(sQLiteDatabase), i10, i11);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.f6297j) {
                return;
            }
            this.f6296i.e(x(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f6297j = true;
            this.f6296i.f(x(sQLiteDatabase), i10, i11);
        }

        public final e1.a x(SQLiteDatabase sQLiteDatabase) {
            return Y(this.f6295h, sQLiteDatabase);
        }
    }

    public b(Context context, String str, d1.d.a aVar, boolean z10) {
        this.f6288h = context;
        this.f6289i = str;
        this.f6290j = aVar;
        this.f6291k = z10;
    }

    @Override // d1.d
    public final d1.b X() {
        return x().f0();
    }

    @Override // d1.d, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        x().close();
    }

    @Override // d1.d
    public final String getDatabaseName() {
        return this.f6289i;
    }

    @Override // d1.d
    public final void setWriteAheadLoggingEnabled(boolean z10) {
        synchronized (this.f6292l) {
            a aVar = this.f6293m;
            if (aVar != null) {
                aVar.setWriteAheadLoggingEnabled(z10);
            }
            this.f6294n = z10;
        }
    }

    public final a x() {
        a aVar;
        synchronized (this.f6292l) {
            if (this.f6293m == null) {
                e1.a[] aVarArr = new e1.a[1];
                if (this.f6289i == null || !this.f6291k) {
                    this.f6293m = new a(this.f6288h, this.f6289i, aVarArr, this.f6290j);
                } else {
                    this.f6293m = new a(this.f6288h, new File(this.f6288h.getNoBackupFilesDir(), this.f6289i).getAbsolutePath(), aVarArr, this.f6290j);
                }
                this.f6293m.setWriteAheadLoggingEnabled(this.f6294n);
            }
            aVar = this.f6293m;
        }
        return aVar;
    }
}
