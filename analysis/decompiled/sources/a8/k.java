package a8;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("lacingCt")
    public final int f528h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("latchedCt")
    public final int f529i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @f7.b("sleepCt")
    public final int f530j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @f7.b("idleCt")
    public final int f531k;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        public final k createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new k(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final k[] newArray(int i10) {
            return new k[i10];
        }
    }

    public k(int i10, int i11, int i12, int i13) {
        this.f528h = i10;
        this.f529i = i11;
        this.f530j = i12;
        this.f531k = i13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f528h == kVar.f528h && this.f529i == kVar.f529i && this.f530j == kVar.f530j && this.f531k == kVar.f531k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f531k) + r0.e(this.f530j, r0.e(this.f529i, Integer.hashCode(this.f528h) * 31, 31), 31);
    }

    public final String toString() {
        int i10 = this.f528h;
        int i11 = this.f529i;
        int i12 = this.f530j;
        int i13 = this.f531k;
        StringBuilder sbB = s.b("StateStats(lacingCt=", i10, ", latchedCt=", i11, ", sleepCt=");
        sbB.append(i12);
        sbB.append(", idleCt=");
        sbB.append(i13);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f528h);
        parcel.writeInt(this.f529i);
        parcel.writeInt(this.f530j);
        parcel.writeInt(this.f531k);
    }
}
