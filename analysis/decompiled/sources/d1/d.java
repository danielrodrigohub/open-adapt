package d1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.Closeable;
import java.io.File;

/* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public interface d extends Closeable {

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5956a;

        public a(int i10) {
            this.f5956a = i10;
        }

        public final void a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e10) {
                Log.w("SupportSQLite", "delete failed: ", e10);
            }
        }

        public abstract void b();

        public abstract void c(d1.b bVar);

        public abstract void d(d1.b bVar, int i10, int i11);

        public abstract void e(d1.b bVar);

        public abstract void f(d1.b bVar, int i10, int i11);
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f5957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f5958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f5959c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f5960d;

        public b(Context context, String str, a aVar, boolean z10) {
            this.f5957a = context;
            this.f5958b = str;
            this.f5959c = aVar;
            this.f5960d = z10;
        }
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public interface c {
        d a(b bVar);
    }

    d1.b X();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    void setWriteAheadLoggingEnabled(boolean z10);
}
