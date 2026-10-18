package j4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import n3.a1;

/* JADX INFO: compiled from: IcyInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements f4.a.b {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f9270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9271i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9272j;

    /* JADX INFO: compiled from: IcyInfo.java */
    public class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(byte[] bArr, String str, String str2) {
        this.f9270h = bArr;
        this.f9271i = str;
        this.f9272j = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f9270h, ((c) obj).f9270h);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f9270h);
    }

    @Override // f4.a.b
    public final void i(a1.a aVar) {
        String str = this.f9271i;
        if (str != null) {
            aVar.f11242a = str;
        }
    }

    public final String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f9271i, this.f9272j, Integer.valueOf(this.f9270h.length));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByteArray(this.f9270h);
        parcel.writeString(this.f9271i);
        parcel.writeString(this.f9272j);
    }

    public c(Parcel parcel) {
        byte[] bArrCreateByteArray = parcel.createByteArray();
        Objects.requireNonNull(bArrCreateByteArray);
        this.f9270h = bArrCreateByteArray;
        this.f9271i = parcel.readString();
        this.f9272j = parcel.readString();
    }
}
