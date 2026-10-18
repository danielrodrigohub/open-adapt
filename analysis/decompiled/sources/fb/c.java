package fb;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: AdaptKitFirmwareVersion.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparable<c>, Parcelable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c f7254j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final c f7255k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final c f7256l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f7257h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f7253i = new a();
    public static final Parcelable.Creator<c> CREATOR = new b();

    /* JADX INFO: compiled from: AdaptKitFirmwareVersion.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: AdaptKitFirmwareVersion.kt */
    public static final class b implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    static {
        c cVar = new c("2.0.0");
        c cVar2 = new c("2.1.7");
        f7254j = new c("1.1.0");
        f7255k = cVar;
        f7256l = cVar2;
    }

    public c(String str) {
        p4.h.j(str, "version");
        this.f7257h = str;
        Pattern patternCompile = Pattern.compile("[0-9]+(\\.[0-9]+)*");
        p4.h.i(patternCompile, "compile(pattern)");
        if (!patternCompile.matcher(str).matches()) {
            throw new IllegalArgumentException("Invalid version format".toString());
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(c cVar) {
        Collection collectionJ0;
        Collection collectionJ1;
        p4.h.j(cVar, "other");
        List listB = new yd.g("\\.").b(this.f7257h);
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
        List listB2 = new yd.g("\\.").b(cVar.f7257h);
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

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return p4.h.c(c.class, obj.getClass()) && compareTo((c) obj) == 0;
    }

    public final int hashCode() {
        return this.f7257h.hashCode();
    }

    public final String toString() {
        return this.f7257h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f7257h);
    }
}
