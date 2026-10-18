package e1;

import android.database.sqlite.SQLiteProgram;

/* JADX INFO: compiled from: FrameworkSQLiteProgram.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements d1.e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SQLiteProgram f6300h;

    public d(SQLiteProgram sQLiteProgram) {
        this.f6300h = sQLiteProgram;
    }

    @Override // d1.e
    public final void K(int i10, long j10) {
        this.f6300h.bindLong(i10, j10);
    }

    @Override // d1.e
    public final void R(int i10, byte[] bArr) {
        this.f6300h.bindBlob(i10, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6300h.close();
    }

    @Override // d1.e
    public final void l(int i10, String str) {
        this.f6300h.bindString(i10, str);
    }

    @Override // d1.e
    public final void t(int i10) {
        this.f6300h.bindNull(i10);
    }

    @Override // d1.e
    public final void v(int i10, double d10) {
        this.f6300h.bindDouble(i10, d10);
    }
}
