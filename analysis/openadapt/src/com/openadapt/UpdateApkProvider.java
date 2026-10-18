package com.openadapt;

import android.content.*;
import android.database.*;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.OpenableColumns;
import java.io.*;

/** Grants the system installer read access to one verified APK, never to pairing data. */
public final class UpdateApkProvider extends ContentProvider {
    static File apk(Context context) { return new File(new File(context.getCacheDir(),"updates"),"openadapt-update.apk"); }
    void validate(Uri uri) throws FileNotFoundException {
        if(!"/openadapt-update.apk".equals(uri.getPath())||!(getContext().getPackageName()+".updates").equals(uri.getAuthority())||!apk(getContext()).isFile()) throw new FileNotFoundException();
    }
    @Override public boolean onCreate() { return true; }
    @Override public String getType(Uri uri) { return "application/vnd.android.package-archive"; }
    @Override public ParcelFileDescriptor openFile(Uri uri,String mode) throws FileNotFoundException {
        validate(uri);if(!"r".equals(mode))throw new FileNotFoundException("Read only");
        return ParcelFileDescriptor.open(apk(getContext()),ParcelFileDescriptor.MODE_READ_ONLY);
    }
    @Override public Cursor query(Uri uri,String[] projection,String selection,String[] args,String sort) {
        try { validate(uri); } catch(FileNotFoundException e) { return null; }
        String[] columns=projection==null?new String[]{OpenableColumns.DISPLAY_NAME,OpenableColumns.SIZE}:projection;
        MatrixCursor cursor=new MatrixCursor(columns);Object[] row=new Object[columns.length];
        for(int i=0;i<columns.length;i++) {
            if(OpenableColumns.DISPLAY_NAME.equals(columns[i]))row[i]="OpenAdapt-update.apk";
            if(OpenableColumns.SIZE.equals(columns[i]))row[i]=apk(getContext()).length();
        }
        cursor.addRow(row);return cursor;
    }
    @Override public Uri insert(Uri uri,ContentValues values) { throw new UnsupportedOperationException(); }
    @Override public int delete(Uri uri,String where,String[] args) { throw new UnsupportedOperationException(); }
    @Override public int update(Uri uri,ContentValues values,String where,String[] args) { throw new UnsupportedOperationException(); }
}
