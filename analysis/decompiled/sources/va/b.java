package va;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import p4.h;

/* JADX INFO: compiled from: AdaptKitColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16967h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16968i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16969j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f16970k;

    /* JADX INFO: compiled from: AdaptKitColor.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new b(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(int i10, int i11, int i12, int i13) {
        this.f16967h = i10;
        this.f16968i = i11;
        this.f16969j = i12;
        this.f16970k = i13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f16967h == bVar.f16967h && this.f16968i == bVar.f16968i && this.f16969j == bVar.f16969j && this.f16970k == bVar.f16970k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f16970k) + r0.e(this.f16969j, r0.e(this.f16968i, Integer.hashCode(this.f16967h) * 31, 31), 31);
    }

    public final String toString() {
        int i10 = this.f16967h;
        int i11 = this.f16968i;
        int i12 = this.f16969j;
        int i13 = this.f16970k;
        StringBuilder sbB = s.b("AdaptKitColor(red=", i10, ", green=", i11, ", blue=");
        sbB.append(i12);
        sbB.append(", brightness=");
        sbB.append(i13);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.f16967h);
        parcel.writeInt(this.f16968i);
        parcel.writeInt(this.f16969j);
        parcel.writeInt(this.f16970k);
    }
}
