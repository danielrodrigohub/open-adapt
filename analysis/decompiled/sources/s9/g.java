package s9;

import android.os.Build;
import android.util.Pair;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: FirmwareUpdateUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f15196b = 20;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f15195a = new g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final fd.d f15197c = androidx.lifecycle.o.w(3, a.f15198h);

    /* JADX INFO: compiled from: FirmwareUpdateUtil.kt */
    public static final class a extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f15198h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0085  */
    public final int a(String str, String str2) {
        p4.h.j(str, "version1");
        try {
            if (p4.h.c(str, str2)) {
                return 0;
            }
            List listB = new yd.g("\\.").b(str);
            List listB2 = new yd.g("\\.").b(str2);
            int iMax = Integer.max(listB.size(), listB2.size());
            int i10 = 0;
            for (int i11 = 0; i11 < iMax; i11++) {
                if (i11 < listB.size()) {
                    if (i11 >= listB2.size()) {
                        if (Integer.parseInt((String) listB.get(i11)) == 0) {
                            i10 = 0;
                        }
                    } else if (Integer.parseInt((String) listB.get(i11)) != Integer.parseInt((String) listB2.get(i11))) {
                        if (Integer.parseInt((String) listB.get(i11)) < Integer.parseInt((String) listB2.get(i11))) {
                            i10 = -1;
                        }
                    }
                    i10 = 1;
                } else if (Integer.parseInt((String) listB2.get(i11)) == 0) {
                    i10 = 0;
                } else {
                    i10 = -1;
                }
                if (i10 != 0) {
                    return i10;
                }
            }
            return i10;
        } catch (Exception unused) {
            return -2;
        }
    }

    public final int b() {
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        if (a(inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion(), "2.2.0") > -1 && a(inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion(), "2.2.0") > -1) {
            return 1;
        }
        return a(inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion(), "1.5.0") > -1 && a(inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion(), "1.5.0") > -1 ? 2 : 3;
    }

    public final String c(String str, String str2) {
        if (g(str, str2)) {
            if (str2 != null) {
                return str2;
            }
        } else if (str != null) {
            return str;
        }
        return "";
    }

    public final boolean d() {
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        return a(inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion(), "2.2.0") > -1 && a(inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion(), "2.2.0") > -1;
    }

    public final boolean e() {
        for (String str : h.f15199a) {
            String str2 = Build.MODEL;
            p4.h.i(str2, "MODEL");
            if (yd.s.i0(str2, str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        return a(inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion(), "2.4.0") > -1 && a(inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion(), "2.4.0") > -1;
    }

    public final boolean g(String str, String str2) {
        Collection collectionJ0;
        Collection collectionJ1;
        if (str != null && str2 != null) {
            try {
                List listB = new yd.g("[.]").b(str);
                if (listB.isEmpty()) {
                    collectionJ0 = gd.p.f8070h;
                    break;
                }
                ListIterator listIterator = listB.listIterator(listB.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        collectionJ0 = gd.p.f8070h;
                        break;
                    }
                    if (!(((String) listIterator.previous()).length() == 0)) {
                        collectionJ0 = gd.n.j0(listB, listIterator.nextIndex() + 1);
                        break;
                    }
                }
                Object[] array = collectionJ0.toArray(new String[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                String[] strArr = (String[]) array;
                int[] iArr = new int[strArr.length];
                int length = strArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    iArr[i10] = Integer.parseInt(strArr[i10]);
                }
                List listB2 = new yd.g("[.]").b(str2);
                if (listB2.isEmpty()) {
                    collectionJ1 = gd.p.f8070h;
                    break;
                }
                ListIterator listIterator2 = listB2.listIterator(listB2.size());
                while (true) {
                    if (!listIterator2.hasPrevious()) {
                        collectionJ1 = gd.p.f8070h;
                        break;
                    }
                    if (!(((String) listIterator2.previous()).length() == 0)) {
                        collectionJ1 = gd.n.j0(listB2, listIterator2.nextIndex() + 1);
                        break;
                    }
                }
                Object[] array2 = collectionJ1.toArray(new String[0]);
                p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                String[] strArr2 = (String[]) array2;
                int[] iArr2 = new int[strArr2.length];
                int length2 = strArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    iArr2[i11] = Integer.parseInt(strArr2[i11]);
                }
                if (!(iArr2[0] < iArr[0])) {
                    if (iArr2[0] > iArr[0]) {
                        return false;
                    }
                    if (!(iArr2[1] < iArr[1])) {
                        if (iArr2[0] < iArr[0] || iArr2[1] <= iArr[1]) {
                            return iArr2[2] < iArr[2];
                        }
                        return false;
                    }
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public final boolean h() {
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        return a(inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion(), "2.2.2") > -1 && a(inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion(), "2.2.2") > -1;
    }

    public final String i(float f10, long j10) {
        if (f10 < 2.0f) {
            String strB = e.b(BigfootApplication.f5638p.b().getString(R.string.adapt_settings_firmware_updating_realtime_progress_time_copy), new Pair("time", "20"));
            p4.h.i(strB, "format(application, R.st…r(\"time\", 20.toString()))");
            return strB;
        }
        int iCeil = (int) Math.ceil(((100 - f10) * (((System.currentTimeMillis() - j10) / ((long) 1000)) / f10)) / 60);
        int i10 = f15196b;
        if (iCeil > i10 && iCeil - 1 == i10) {
            iCeil = i10;
        } else if (iCeil < i10) {
            f15196b = iCeil;
        }
        if (iCeil < 2) {
            return androidx.lifecycle.o.r(R.string.adapt_settings_firmware_updating_realtime_progress_time_less_than_a_minute_copy);
        }
        String strB2 = e.b(BigfootApplication.f5638p.b().getString(R.string.adapt_settings_firmware_updating_realtime_progress_time_copy), new Pair("time", String.valueOf(iCeil)));
        p4.h.i(strB2, "format(application, R.st…tesRemaining.toString()))");
        return strB2;
    }
}
