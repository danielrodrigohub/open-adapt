package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: GeobFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends h {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f9669k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final byte[] f9670l;

    /* JADX INFO: compiled from: GeobFrame.java */
    public class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f9667i = str;
        this.f9668j = str2;
        this.f9669k = str3;
        this.f9670l = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return g0.a(this.f9667i, fVar.f9667i) && g0.a(this.f9668j, fVar.f9668j) && g0.a(this.f9669k, fVar.f9669k) && Arrays.equals(this.f9670l, fVar.f9670l);
    }

    public final int hashCode() {
        String str = this.f9667i;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f9668j;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f9669k;
        return Arrays.hashCode(this.f9670l) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // k4.h
    public final String toString() {
        return this.f9676h + ": mimeType=" + this.f9667i + ", filename=" + this.f9668j + ", description=" + this.f9669k;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9667i);
        parcel.writeString(this.f9668j);
        parcel.writeString(this.f9669k);
        parcel.writeByteArray(this.f9670l);
    }

    public f(Parcel parcel) {
        super("GEOB");
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9667i = string;
        this.f9668j = parcel.readString();
        this.f9669k = parcel.readString();
        this.f9670l = parcel.createByteArray();
    }
}
