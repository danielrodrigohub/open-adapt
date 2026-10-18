package mc;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: BigfootFirmwareVersion.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Comparable<e> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f10997i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final e f10998j = new e("1.1.0");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final e f10999k = new e("1.4.1");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final e f11000l = new e("1.5.0");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final e f11001m = new e("2.0.0");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final e f11002n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final e f11003o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final e f11004p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final e f11005q;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f11006h;

    /* JADX INFO: compiled from: BigfootFirmwareVersion.kt */
    public static final class a {
    }

    static {
        new e("2.1.1");
        f11002n = new e("2.1.3");
        new e("2.1.7");
        new e("2.2.0");
        f11003o = new e("2.3.0");
        f11004p = new e("2.4.0");
        f11005q = new e("999.999.999");
    }

    public e(String str) {
        p4.h.j(str, "version");
        this.f11006h = str;
        Pattern patternCompile = Pattern.compile("[0-9]+(\\.[0-9]+)*");
        p4.h.i(patternCompile, "compile(pattern)");
        if (!patternCompile.matcher(str).matches()) {
            throw new IllegalArgumentException("Invalid version format");
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(e eVar) {
        Collection collectionJ0;
        Collection collectionJ1;
        p4.h.j(eVar, "other");
        List listB = new yd.g("\\.").b(this.f11006h);
        if (!listB.isEmpty()) {
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
        } else {
            collectionJ0 = gd.p.f8070h;
            break;
        }
        Object[] array = collectionJ0.toArray(new String[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr = (String[]) array;
        List listB2 = new yd.g("\\.").b(eVar.f11006h);
        if (!listB2.isEmpty()) {
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
        } else {
            collectionJ1 = gd.p.f8070h;
            break;
        }
        Object[] array2 = collectionJ1.toArray(new String[0]);
        p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr2 = (String[]) array2;
        int iMax = Math.max(strArr.length, strArr2.length);
        int i10 = 0;
        while (i10 < iMax) {
            int i11 = i10 < strArr.length ? Integer.parseInt(strArr[i10]) : 0;
            int i12 = i10 < strArr2.length ? Integer.parseInt(strArr2[i10]) : 0;
            if (i11 < i12) {
                return -1;
            }
            if (i11 > i12) {
                return 1;
            }
            i10++;
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return p4.h.c(e.class, obj.getClass()) && compareTo((e) obj) == 0;
    }

    public final int hashCode() {
        return this.f11006h.hashCode();
    }

    public final String toString() {
        return this.f11006h;
    }
}
