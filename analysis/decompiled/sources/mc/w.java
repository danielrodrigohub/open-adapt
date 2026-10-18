package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w implements Parcelable {
    public static final Parcelable.Creator<w> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f11101h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11102i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11103j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11104k;

    /* JADX INFO: compiled from: SessionData.kt */
    public static final class a implements Parcelable.Creator<w> {
        @Override // android.os.Parcelable.Creator
        public final w createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new w(parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final w[] newArray(int i10) {
            return new w[i10];
        }
    }

    public w(long j10, int i10, int i11, int i12) {
        this.f11101h = j10;
        this.f11102i = i10;
        this.f11103j = i11;
        this.f11104k = i12;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f11101h == wVar.f11101h && this.f11102i == wVar.f11102i && this.f11103j == wVar.f11103j && this.f11104k == wVar.f11104k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11104k) + r0.e(this.f11103j, r0.e(this.f11102i, Long.hashCode(this.f11101h) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionCapSenseData(timestamp=");
        sbC.append(this.f11101h);
        sbC.append(", signal=");
        sbC.append(this.f11102i);
        sbC.append(", reference=");
        sbC.append(this.f11103j);
        sbC.append(", cc=");
        return a0.b.b(sbC, this.f11104k, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f11101h);
        parcel.writeInt(this.f11102i);
        parcel.writeInt(this.f11103j);
        parcel.writeInt(this.f11104k);
    }
}
