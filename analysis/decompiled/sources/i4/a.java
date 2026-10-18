package i4;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;
import m5.w;
import n3.a1;
import t6.c;

/* JADX INFO: compiled from: PictureFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements f4.a.b {
    public static final Parcelable.Creator<a> CREATOR = new C0171a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8750h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f8751i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f8752j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f8753k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f8754l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f8755m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f8756n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final byte[] f8757o;

    /* JADX INFO: renamed from: i4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PictureFrame.java */
    public class C0171a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.f8750h = i10;
        this.f8751i = str;
        this.f8752j = str2;
        this.f8753k = i11;
        this.f8754l = i12;
        this.f8755m = i13;
        this.f8756n = i14;
        this.f8757o = bArr;
    }

    public static a a(w wVar) {
        int iE = wVar.e();
        String strR = wVar.r(wVar.e(), c.f15536a);
        String strQ = wVar.q(wVar.e());
        int iE2 = wVar.e();
        int iE3 = wVar.e();
        int iE4 = wVar.e();
        int iE5 = wVar.e();
        int iE6 = wVar.e();
        byte[] bArr = new byte[iE6];
        wVar.d(bArr, 0, iE6);
        return new a(iE, strR, strQ, iE2, iE3, iE4, iE5, bArr);
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
        return this.f8750h == aVar.f8750h && this.f8751i.equals(aVar.f8751i) && this.f8752j.equals(aVar.f8752j) && this.f8753k == aVar.f8753k && this.f8754l == aVar.f8754l && this.f8755m == aVar.f8755m && this.f8756n == aVar.f8756n && Arrays.equals(this.f8757o, aVar.f8757o);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f8757o) + ((((((((f.c(this.f8752j, f.c(this.f8751i, (this.f8750h + 527) * 31, 31), 31) + this.f8753k) * 31) + this.f8754l) * 31) + this.f8755m) * 31) + this.f8756n) * 31);
    }

    @Override // f4.a.b
    public final void i(a1.a aVar) {
        aVar.b(this.f8757o, this.f8750h);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Picture: mimeType=");
        sbC.append(this.f8751i);
        sbC.append(", description=");
        sbC.append(this.f8752j);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f8750h);
        parcel.writeString(this.f8751i);
        parcel.writeString(this.f8752j);
        parcel.writeInt(this.f8753k);
        parcel.writeInt(this.f8754l);
        parcel.writeInt(this.f8755m);
        parcel.writeInt(this.f8756n);
        parcel.writeByteArray(this.f8757o);
    }

    public a(Parcel parcel) {
        this.f8750h = parcel.readInt();
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f8751i = string;
        this.f8752j = parcel.readString();
        this.f8753k = parcel.readInt();
        this.f8754l = parcel.readInt();
        this.f8755m = parcel.readInt();
        this.f8756n = parcel.readInt();
        this.f8757o = parcel.createByteArray();
    }
}
