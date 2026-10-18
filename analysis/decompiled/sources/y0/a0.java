package y0;

import android.content.Context;

/* JADX INFO: compiled from: Room.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {
    public static <T extends d0> d0.a<T> a(Context context, Class<T> cls, String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new d0.a<>(context, cls, str);
    }
}
