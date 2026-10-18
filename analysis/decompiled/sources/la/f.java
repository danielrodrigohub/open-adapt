package la;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionCapsenseData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10210h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10211i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10212j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10213k;

    /* JADX INFO: compiled from: SessionCapsenseData.kt */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f(parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(long j10, int i10, int i11, int i12) {
        this.f10210h = j10;
        this.f10211i = i10;
        this.f10212j = i11;
        this.f10213k = i12;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f10210h == fVar.f10210h && this.f10211i == fVar.f10211i && this.f10212j == fVar.f10212j && this.f10213k == fVar.f10213k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10213k) + r0.e(this.f10212j, r0.e(this.f10211i, Long.hashCode(this.f10210h) * 31, 31), 31);
    }

    public final String toString() {
        return "SessionCapsenseData(timestamp=" + this.f10210h + ", signal=" + this.f10211i + ", reference=" + this.f10212j + ", cc=" + this.f10213k + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f10210h);
        parcel.writeInt(this.f10211i);
        parcel.writeInt(this.f10212j);
        parcel.writeInt(this.f10213k);
    }
}
