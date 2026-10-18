package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: PrivFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends h {
    public static final Parcelable.Creator<k> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9685i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f9686j;

    /* JADX INFO: compiled from: PrivFrame.java */
    public class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        public final k createFromParcel(Parcel parcel) {
            return new k(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final k[] newArray(int i10) {
            return new k[i10];
        }
    }

    public k(String str, byte[] bArr) {
        super("PRIV");
        this.f9685i = str;
        this.f9686j = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return g0.a(this.f9685i, kVar.f9685i) && Arrays.equals(this.f9686j, kVar.f9686j);
    }

    public final int hashCode() {
        String str = this.f9685i;
        return Arrays.hashCode(this.f9686j) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // k4.h
    public final String toString() {
        return this.f9676h + ": owner=" + this.f9685i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9685i);
        parcel.writeByteArray(this.f9686j);
    }

    public k(Parcel parcel) {
        super("PRIV");
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9685i = string;
        this.f9686j = parcel.createByteArray();
    }
}
