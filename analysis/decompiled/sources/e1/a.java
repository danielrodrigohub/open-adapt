package e1;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.util.Pair;
import d1.f;
import d1.g;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: FrameworkSQLiteDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements d1.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f6285i = new String[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SQLiteDatabase f6286h;

    /* JADX INFO: renamed from: e1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FrameworkSQLiteDatabase.java */
    public class C0115a implements SQLiteDatabase.CursorFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f f6287a;

        public C0115a(f fVar) {
            this.f6287a = fVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f6287a.Y(new d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public a(SQLiteDatabase sQLiteDatabase) {
        this.f6286h = sQLiteDatabase;
    }

    @Override // d1.b
    public final boolean C() {
        return this.f6286h.inTransaction();
    }

    @Override // d1.b
    public final boolean H() {
        return this.f6286h.isWriteAheadLoggingEnabled();
    }

    @Override // d1.b
    public final void L() {
        this.f6286h.setTransactionSuccessful();
    }

    @Override // d1.b
    public final Cursor M(f fVar) {
        return this.f6286h.rawQueryWithFactory(new C0115a(fVar), fVar.x(), f6285i, null);
    }

    @Override // d1.b
    public final void O(String str, Object[] objArr) throws SQLException {
        this.f6286h.execSQL(str, objArr);
    }

    @Override // d1.b
    public final void P() {
        this.f6286h.beginTransactionNonExclusive();
    }

    public final String Y() {
        return this.f6286h.getPath();
    }

    @Override // d1.b
    public final Cursor b0(String str) {
        return M(new d1.a(str));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f6286h.close();
    }

    @Override // d1.b
    public final void d() {
        this.f6286h.endTransaction();
    }

    @Override // d1.b
    public final void e() {
        this.f6286h.beginTransaction();
    }

    @Override // d1.b
    public final boolean isOpen() {
        return this.f6286h.isOpen();
    }

    @Override // d1.b
    public final void k(String str) throws SQLException {
        this.f6286h.execSQL(str);
    }

    @Override // d1.b
    public final g q(String str) {
        return new e(this.f6286h.compileStatement(str));
    }

    public final List<Pair<String, String>> x() {
        return this.f6286h.getAttachedDbs();
    }
}
