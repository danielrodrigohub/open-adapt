package tb;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: BrowserSelector.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Intent f15589a = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));

    @SuppressLint({"PackageManagerGetSignatures"})
    public static a a(Context context) {
        boolean z10;
        PackageManager packageManager = context.getPackageManager();
        ArrayList<a> arrayList = new ArrayList();
        Intent intent = f15589a;
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        a aVar = null;
        String str = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 131136)) {
            int i10 = 1;
            if (!resolveInfo.filter.hasAction("android.intent.action.VIEW") || ((!resolveInfo.filter.hasCategory("android.intent.category.BROWSABLE") && !resolveInfo.filter.hasCategory("android.intent.category.APP_BROWSER")) || resolveInfo.filter.schemesIterator() == null || resolveInfo.filter.authoritiesIterator() != null)) {
                z10 = false;
                break;
            }
            Iterator<String> itSchemesIterator = resolveInfo.filter.schemesIterator();
            boolean zEquals = false;
            boolean zEquals2 = false;
            while (true) {
                if (!itSchemesIterator.hasNext()) {
                    z10 = false;
                    break;
                }
                String next = itSchemesIterator.next();
                zEquals |= "http".equals(next);
                zEquals2 |= "https".equals(next);
                if (zEquals && zEquals2) {
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(resolveInfo.activityInfo.packageName, 64);
                    String str2 = resolveInfo.activityInfo.packageName;
                    Intent intent2 = new Intent();
                    intent2.setAction("android.support.customtabs.action.CustomTabsService");
                    intent2.setPackage(str2);
                    if (packageManager.resolveService(intent2, 0) != null) {
                        a aVar2 = new a(packageInfo, true);
                        if (resolveInfo.activityInfo.packageName.equals(str)) {
                            arrayList.add(0, aVar2);
                        } else {
                            arrayList.add(aVar2);
                            i10 = 0;
                        }
                    } else {
                        i10 = 0;
                    }
                    a aVar3 = new a(packageInfo, false);
                    if (resolveInfo.activityInfo.packageName.equals(str)) {
                        arrayList.add(i10, aVar3);
                    } else {
                        arrayList.add(aVar3);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        for (a aVar4 : arrayList) {
            if (aVar4.f15588d.booleanValue()) {
                return aVar4;
            }
            if (aVar == null) {
                aVar = aVar4;
            }
        }
        return aVar;
    }
}
