package d1;

import android.database.Cursor;
import android.database.SQLException;
import java.io.Closeable;

/* JADX INFO: compiled from: SupportSQLiteDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public interface b extends Closeable {
    boolean C();

    boolean H();

    void L();

    Cursor M(f fVar);

    void O(String str, Object[] objArr) throws SQLException;

    void P();

    Cursor b0(String str);

    void d();

    void e();

    boolean isOpen();

    void k(String str) throws SQLException;

    g q(String str);
}
