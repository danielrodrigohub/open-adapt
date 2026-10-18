package l4;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: MdtaMetadataEntry.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements f4.a.b {
    public static final Parcelable.Creator<a> CREATOR = new C0194a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f9950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9952k;

    /* JADX INFO: renamed from: l4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MdtaMetadataEntry.java */
    public class C0194a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(String str, byte[] bArr, int i10, int i11) {
        this.f9949h = str;
        this.f9950i = bArr;
        this.f9951j = i10;
        this.f9952k = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9949h.equals(aVar.f9949h) && Arrays.equals(this.f9950i, aVar.f9950i) && this.f9951j == aVar.f9951j && this.f9952k == aVar.f9952k;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f9950i) + f.c(this.f9949h, 527, 31)) * 31) + this.f9951j) * 31) + this.f9952k;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("mdta: key=");
        sbC.append(this.f9949h);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9949h);
        parcel.writeByteArray(this.f9950i);
        parcel.writeInt(this.f9951j);
        parcel.writeInt(this.f9952k);
    }

    public a(Parcel parcel) {
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9949h = string;
        this.f9950i = parcel.createByteArray();
        this.f9951j = parcel.readInt();
        this.f9952k = parcel.readInt();
    }
}
