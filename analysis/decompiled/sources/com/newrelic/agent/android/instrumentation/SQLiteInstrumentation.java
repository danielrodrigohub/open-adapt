package com.newrelic.agent.android.instrumentation;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.CancellationSignal;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SQLiteInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "DATABASE"));

    @ReplaceCallSite
    public static int delete(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        TraceMachine.enterMethod("SQLiteDatabase#delete", categoryParams);
        int iDelete = sQLiteDatabase.delete(str, str2, strArr);
        TraceMachine.exitMethod();
        return iDelete;
    }

    @ReplaceCallSite
    public static void execSQL(SQLiteDatabase sQLiteDatabase, String str) throws SQLException {
        TraceMachine.enterMethod("SQLiteDatabase#execSQL", categoryParams);
        sQLiteDatabase.execSQL(str);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite
    public static long insert(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        TraceMachine.enterMethod("SQLiteDatabase#insert", categoryParams);
        long jInsert = sQLiteDatabase.insert(str, str2, contentValues);
        TraceMachine.exitMethod();
        return jInsert;
    }

    @ReplaceCallSite
    public static long insertOrThrow(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) throws SQLException {
        TraceMachine.enterMethod("SQLiteDatabase#insertOrThrow", categoryParams);
        long jInsertOrThrow = sQLiteDatabase.insertOrThrow(str, str2, contentValues);
        TraceMachine.exitMethod();
        return jInsertOrThrow;
    }

    @ReplaceCallSite
    public static long insertWithOnConflict(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues, int i10) {
        TraceMachine.enterMethod("SQLiteDatabase#insertWithOnConflict", categoryParams);
        long jInsertWithOnConflict = sQLiteDatabase.insertWithOnConflict(str, str2, contentValues, i10);
        TraceMachine.exitMethod();
        return jInsertWithOnConflict;
    }

    @ReplaceCallSite
    public static Cursor query(SQLiteDatabase sQLiteDatabase, boolean z10, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        TraceMachine.enterMethod("SQLiteDatabase#query", categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(z10, str, strArr, str2, strArr2, str3, str4, str5, str6);
        TraceMachine.exitMethod();
        return cursorQuery;
    }

    @ReplaceCallSite
    public static Cursor queryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, boolean z10, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        TraceMachine.enterMethod("SQLiteDatabase#queryWithFactory", categoryParams);
        Cursor cursorQueryWithFactory = sQLiteDatabase.queryWithFactory(cursorFactory, z10, str, strArr, str2, strArr2, str3, str4, str5, str6);
        TraceMachine.exitMethod();
        return cursorQueryWithFactory;
    }

    @ReplaceCallSite
    public static Cursor rawQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        TraceMachine.enterMethod("SQLiteDatabase#rawQuery", categoryParams);
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery(str, strArr);
        TraceMachine.exitMethod();
        return cursorRawQuery;
    }

    @ReplaceCallSite
    public static Cursor rawQueryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, String str, String[] strArr, String str2) {
        TraceMachine.enterMethod("SQLiteDatabase#rawQueryWithFactory", categoryParams);
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, str, strArr, str2);
        TraceMachine.exitMethod();
        return cursorRawQueryWithFactory;
    }

    @ReplaceCallSite
    public static long replace(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        TraceMachine.enterMethod("SQLiteDatabase#replace", categoryParams);
        long jReplace = sQLiteDatabase.replace(str, str2, contentValues);
        TraceMachine.exitMethod();
        return jReplace;
    }

    @ReplaceCallSite
    public static long replaceOrThrow(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) throws SQLException {
        TraceMachine.enterMethod("SQLiteDatabase#replaceOrThrow", categoryParams);
        long jReplaceOrThrow = sQLiteDatabase.replaceOrThrow(str, str2, contentValues);
        TraceMachine.exitMethod();
        return jReplaceOrThrow;
    }

    @ReplaceCallSite
    public static int update(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues, String str2, String[] strArr) {
        TraceMachine.enterMethod("SQLiteDatabase#update", categoryParams);
        int iUpdate = sQLiteDatabase.update(str, contentValues, str2, strArr);
        TraceMachine.exitMethod();
        return iUpdate;
    }

    @ReplaceCallSite
    public static int updateWithOnConflict(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues, String str2, String[] strArr, int i10) {
        TraceMachine.enterMethod("SQLiteDatabase#updateWithOnConflict", categoryParams);
        int iUpdateWithOnConflict = sQLiteDatabase.updateWithOnConflict(str, contentValues, str2, strArr, i10);
        TraceMachine.exitMethod();
        return iUpdateWithOnConflict;
    }

    @ReplaceCallSite
    public static void execSQL(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr) throws SQLException {
        TraceMachine.enterMethod("SQLiteDatabase#execSQL", categoryParams);
        sQLiteDatabase.execSQL(str, objArr);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite
    @TargetApi(16)
    public static Cursor query(SQLiteDatabase sQLiteDatabase, boolean z10, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        TraceMachine.enterMethod("SQLiteDatabase#query", categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(z10, str, strArr, str2, strArr2, str3, str4, str5, str6, cancellationSignal);
        TraceMachine.exitMethod();
        return cursorQuery;
    }

    @ReplaceCallSite
    @TargetApi(16)
    public static Cursor queryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, boolean z10, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        TraceMachine.enterMethod("SQLiteDatabase#queryWithFactory", categoryParams);
        Cursor cursorQueryWithFactory = sQLiteDatabase.queryWithFactory(cursorFactory, z10, str, strArr, str2, strArr2, str3, str4, str5, str6, cancellationSignal);
        TraceMachine.exitMethod();
        return cursorQueryWithFactory;
    }

    @ReplaceCallSite
    @TargetApi(16)
    public static Cursor rawQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, CancellationSignal cancellationSignal) {
        TraceMachine.enterMethod("SQLiteDatabase#rawQuery", categoryParams);
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery(str, strArr, cancellationSignal);
        TraceMachine.exitMethod();
        return cursorRawQuery;
    }

    @ReplaceCallSite
    @TargetApi(16)
    public static Cursor rawQueryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, String str, String[] strArr, String str2, CancellationSignal cancellationSignal) {
        TraceMachine.enterMethod("SQLiteDatabase#rawQueryWithFactory", categoryParams);
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, str, strArr, str2, cancellationSignal);
        TraceMachine.exitMethod();
        return cursorRawQueryWithFactory;
    }

    @ReplaceCallSite
    public static Cursor query(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        TraceMachine.enterMethod("SQLiteDatabase#query", categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(str, strArr, str2, strArr2, str3, str4, str5);
        TraceMachine.exitMethod();
        return cursorQuery;
    }

    @ReplaceCallSite
    public static Cursor query(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        TraceMachine.enterMethod("SQLiteDatabase#query", categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(str, strArr, str2, strArr2, str3, str4, str5, str6);
        TraceMachine.exitMethod();
        return cursorQuery;
    }
}
