package g7;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.view.View;
import android.view.ViewGroup;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.TreeSet;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements q {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static o7.a f7789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f7790i;

    public static int a(Context context, String str) {
        int iC;
        int iMyPid = Process.myPid();
        int iMyUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, iMyPid, iMyUid) == -1) {
            return -1;
        }
        String strD = x.g.d(str);
        if (strD != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(iMyUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            if (!(Process.myUid() == iMyUid && i0.c.a(context.getPackageName(), packageName)) || Build.VERSION.SDK_INT < 29) {
                iC = x.g.c((AppOpsManager) x.g.a(context, AppOpsManager.class), strD, packageName);
            } else {
                AppOpsManager appOpsManagerC = x.h.c(context);
                iC = x.h.a(appOpsManagerC, strD, Binder.getCallingUid(), packageName);
                if (iC == 0) {
                    iC = x.h.a(appOpsManagerC, strD, iMyUid, x.h.b(context));
                }
            }
            if (iC != 0) {
                return -2;
            }
        }
        return 0;
    }

    public static final float b(float f10) {
        return f10 * Resources.getSystem().getDisplayMetrics().density;
    }

    public static final int c(int i10) {
        return (int) (i10 * Resources.getSystem().getDisplayMetrics().density);
    }

    public static View d(View view, int i10) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View viewFindViewById = viewGroup.getChildAt(i11).findViewById(i10);
            if (viewFindViewById != null) {
                return viewFindViewById;
            }
        }
        return null;
    }

    public static final String e(byte[] bArr) {
        p4.h.j(bArr, "<this>");
        String str = String.format("%032X", Arrays.copyOf(new Object[]{new BigInteger(1, bArr)}, 1));
        p4.h.i(str, "format(format, *args)");
        return str;
    }

    public static final byte[] f(String str) {
        p4.h.j(str, "<this>");
        BigInteger bigInteger = new BigInteger(str, 16);
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length > 16) {
            byte[] byteArray2 = bigInteger.toByteArray();
            p4.h.i(byteArray2, "bigInt.toByteArray()");
            return gd.g.m(byteArray2, 1, 17);
        }
        if (byteArray.length >= 16) {
            return byteArray;
        }
        byte[] bArr = new byte[16];
        byte[] byteArray3 = bigInteger.toByteArray();
        p4.h.i(byteArray3, "bigInt.toByteArray()");
        gd.g.j(byteArray3, bArr, 16 - byteArray.length, 0, byteArray.length);
        return bArr;
    }

    public static final int g(int i10, int i11, int i12) {
        if (i12 > 0) {
            if (i10 >= i11) {
                return i11;
            }
            int i13 = i11 % i12;
            if (i13 < 0) {
                i13 += i12;
            }
            int i14 = i10 % i12;
            if (i14 < 0) {
                i14 += i12;
            }
            int i15 = (i13 - i14) % i12;
            if (i15 < 0) {
                i15 += i12;
            }
            return i11 - i15;
        }
        if (i12 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        }
        if (i10 <= i11) {
            return i11;
        }
        int i16 = -i12;
        int i17 = i10 % i16;
        if (i17 < 0) {
            i17 += i16;
        }
        int i18 = i11 % i16;
        if (i18 < 0) {
            i18 += i16;
        }
        int i19 = (i17 - i18) % i16;
        if (i19 < 0) {
            i19 += i16;
        }
        return i11 + i19;
    }

    public static final long h(long j10, long j11) {
        long j12 = j10 % j11;
        return j12 >= 0 ? j12 : j12 + j11;
    }

    public static final int i(Integer num) {
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static final xd.d j(qd.p pVar) {
        return new xd.h(pVar);
    }

    public static o7.r k(Context context) {
        return (o7.r) com.bumptech.glide.c.e(context);
    }

    @Override // g7.q
    public Object construct() {
        return new TreeSet();
    }
}
