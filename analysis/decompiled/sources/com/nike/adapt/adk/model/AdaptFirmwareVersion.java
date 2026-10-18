package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import gd.n;
import gd.p;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import rd.h;
import yd.g;

/* JADX INFO: compiled from: AdaptFirmwareVersion.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptFirmwareVersion implements Parcelable, Comparable<AdaptFirmwareVersion> {
    private final String version;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<AdaptFirmwareVersion> CREATOR = new Creator();

    /* JADX INFO: compiled from: AdaptFirmwareVersion.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final AdaptFirmwareVersion toAdaptVersion(String str) {
            p4.h.j(str, "<this>");
            return new AdaptFirmwareVersion(str);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareVersion.kt */
    public static final class Creator implements Parcelable.Creator<AdaptFirmwareVersion> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptFirmwareVersion createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new AdaptFirmwareVersion(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptFirmwareVersion[] newArray(int i10) {
            return new AdaptFirmwareVersion[i10];
        }
    }

    public AdaptFirmwareVersion(String str) {
        p4.h.j(str, "version");
        this.version = str;
    }

    public static /* synthetic */ AdaptFirmwareVersion copy$default(AdaptFirmwareVersion adaptFirmwareVersion, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = adaptFirmwareVersion.version;
        }
        return adaptFirmwareVersion.copy(str);
    }

    public final String component1() {
        return this.version;
    }

    public final AdaptFirmwareVersion copy(String str) {
        p4.h.j(str, "version");
        return new AdaptFirmwareVersion(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AdaptFirmwareVersion) && p4.h.c(this.version, ((AdaptFirmwareVersion) obj).version);
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return this.version.hashCode();
    }

    public String toString() {
        return this.version;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.version);
    }

    @Override // java.lang.Comparable
    public int compareTo(AdaptFirmwareVersion adaptFirmwareVersion) {
        Collection collectionJ0;
        Collection collectionJ1;
        p4.h.j(adaptFirmwareVersion, "other");
        List listB = new g("\\.").b(this.version);
        if (!listB.isEmpty()) {
            ListIterator listIterator = listB.listIterator(listB.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    collectionJ0 = p.f8070h;
                    break;
                }
                if (!(((String) listIterator.previous()).length() == 0)) {
                    collectionJ0 = n.j0(listB, listIterator.nextIndex() + 1);
                    break;
                }
            }
        } else {
            collectionJ0 = p.f8070h;
            break;
        }
        Object[] array = collectionJ0.toArray(new String[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr = (String[]) array;
        List listB2 = new g("\\.").b(adaptFirmwareVersion.version);
        if (!listB2.isEmpty()) {
            ListIterator listIterator2 = listB2.listIterator(listB2.size());
            while (true) {
                if (!listIterator2.hasPrevious()) {
                    collectionJ1 = p.f8070h;
                    break;
                }
                if (!(((String) listIterator2.previous()).length() == 0)) {
                    collectionJ1 = n.j0(listB2, listIterator2.nextIndex() + 1);
                    break;
                }
            }
        } else {
            collectionJ1 = p.f8070h;
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
}
