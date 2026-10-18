package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;
import n3.a1;

/* JADX INFO: compiled from: ApicFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends h {
    public static final Parcelable.Creator<a> CREATOR = new C0186a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9649j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9650k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final byte[] f9651l;

    /* JADX INFO: renamed from: k4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ApicFrame.java */
    public class C0186a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(String str, String str2, int i10, byte[] bArr) {
        super("APIC");
        this.f9648i = str;
        this.f9649j = str2;
        this.f9650k = i10;
        this.f9651l = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9650k == aVar.f9650k && g0.a(this.f9648i, aVar.f9648i) && g0.a(this.f9649j, aVar.f9649j) && Arrays.equals(this.f9651l, aVar.f9651l);
    }

    public final int hashCode() {
        int i10 = (527 + this.f9650k) * 31;
        String str = this.f9648i;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f9649j;
        return Arrays.hashCode(this.f9651l) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // f4.a.b
    public final void i(a1.a aVar) {
        aVar.b(this.f9651l, this.f9650k);
    }

    @Override // k4.h
    public final String toString() {
        return this.f9676h + ": mimeType=" + this.f9648i + ", description=" + this.f9649j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9648i);
        parcel.writeString(this.f9649j);
        parcel.writeInt(this.f9650k);
        parcel.writeByteArray(this.f9651l);
    }

    public a(Parcel parcel) {
        super("APIC");
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9648i = string;
        this.f9649j = parcel.readString();
        this.f9650k = parcel.readInt();
        this.f9651l = parcel.createByteArray();
    }
}
