package a1;

import android.database.Cursor;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: compiled from: CursorUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static int a(Cursor cursor, String str) {
        String string;
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex < 0) {
            columnIndex = cursor.getColumnIndex("`" + str + "`");
            if (columnIndex < 0) {
                if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
                    String[] columnNames = cursor.getColumnNames();
                    String strC = androidx.recyclerview.widget.d.c(".", str);
                    String strC2 = a0.d.c(".", str, "`");
                    int i10 = 0;
                    while (true) {
                        if (i10 < columnNames.length) {
                            String str2 = columnNames[i10];
                            if (str2.length() < str.length() + 2 || !(str2.endsWith(strC) || (str2.charAt(0) == '`' && str2.endsWith(strC2)))) {
                                i10++;
                            } else {
                                columnIndex = i10;
                            }
                        } else {
                            columnIndex = -1;
                        }
                    }
                } else {
                    columnIndex = -1;
                }
            }
        }
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            string = Arrays.toString(cursor.getColumnNames());
        } catch (Exception e10) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e10);
            string = "";
        }
        throw new IllegalArgumentException("column '" + str + "' does not exist. Available columns: " + string);
    }
}
