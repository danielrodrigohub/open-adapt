package g0;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: FontProvider.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: compiled from: FontProvider.java */
    public static class a {
        public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, Object obj) {
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) obj);
        }
    }

    public static l a(Context context, f fVar) throws PackageManager.NameNotFoundException {
        Cursor cursorA;
        boolean z10;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String str = fVar.f7491a;
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException(androidx.recyclerview.widget.d.c("No package found for authority: ", str));
        }
        if (!providerInfoResolveContentProvider.packageName.equals(fVar.f7492b)) {
            StringBuilder sbE = a4.g.e("Found content provider ", str, ", but package was not ");
            sbE.append(fVar.f7492b);
            throw new PackageManager.NameNotFoundException(sbE.toString());
        }
        Signature[] signatureArr = packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures;
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        Collections.sort(arrayList, d.f7488i);
        List<List<byte[]>> listB = fVar.f7494d;
        if (listB == null) {
            listB = z.c.b(resources, 0);
        }
        int i10 = 0;
        while (true) {
            cursorA = null;
            if (i10 >= listB.size()) {
                providerInfoResolveContentProvider = null;
                break;
            }
            ArrayList arrayList2 = new ArrayList(listB.get(i10));
            Collections.sort(arrayList2, d.f7488i);
            if (arrayList.size() != arrayList2.size()) {
                z10 = false;
                break;
            }
            int i11 = 0;
            while (true) {
                if (i11 >= arrayList.size()) {
                    z10 = true;
                    break;
                }
                if (!Arrays.equals((byte[]) arrayList.get(i11), (byte[]) arrayList2.get(i11))) {
                    z10 = false;
                    break;
                }
                i11++;
            }
            if (z10) {
                break;
            }
            i10++;
        }
        if (providerInfoResolveContentProvider == null) {
            return new l(1, null);
        }
        String str2 = providerInfoResolveContentProvider.authority;
        ArrayList arrayList3 = new ArrayList();
        Uri uriBuild = new Uri.Builder().scheme("content").authority(str2).build();
        Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str2).appendPath("file").build();
        try {
            cursorA = a.a(context.getContentResolver(), uriBuild, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{fVar.f7493c}, null, null);
            if (cursorA != null && cursorA.getCount() > 0) {
                int columnIndex = cursorA.getColumnIndex("result_code");
                arrayList3 = new ArrayList();
                int columnIndex2 = cursorA.getColumnIndex("_id");
                int columnIndex3 = cursorA.getColumnIndex("file_id");
                int columnIndex4 = cursorA.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursorA.getColumnIndex("font_weight");
                int columnIndex6 = cursorA.getColumnIndex("font_italic");
                while (cursorA.moveToNext()) {
                    arrayList3.add(new m(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorA.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorA.getLong(columnIndex3)), columnIndex4 != -1 ? cursorA.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorA.getInt(columnIndex5) : HttpStatusCodesKt.HTTP_BAD_REQUEST, columnIndex6 != -1 && cursorA.getInt(columnIndex6) == 1, columnIndex != -1 ? cursorA.getInt(columnIndex) : 0));
                }
            }
            return new l(0, (m[]) arrayList3.toArray(new m[0]));
        } finally {
            if (cursorA != null) {
                cursorA.close();
            }
        }
    }
}
