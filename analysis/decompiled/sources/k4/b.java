package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: BinaryFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends h {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f9652i;

    /* JADX INFO: compiled from: BinaryFrame.java */
    public class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(String str, byte[] bArr) {
        super(str);
        this.f9652i = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f9676h.equals(bVar.f9676h) && Arrays.equals(this.f9652i, bVar.f9652i);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f9652i) + a1.f.c(this.f9676h, 527, 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9676h);
        parcel.writeByteArray(this.f9652i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(Parcel parcel) {
        String string = parcel.readString();
        int i10 = g0.f10384a;
        super(string);
        this.f9652i = parcel.createByteArray();
    }
}
