package e1;

import android.database.sqlite.SQLiteStatement;
import d1.g;

/* JADX INFO: compiled from: FrameworkSQLiteStatement.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends d implements g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SQLiteStatement f6301i;

    public e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f6301i = sQLiteStatement;
    }

    @Override // d1.g
    public final long Z() {
        return this.f6301i.executeInsert();
    }

    @Override // d1.g
    public final int p() {
        return this.f6301i.executeUpdateDelete();
    }
}
