package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v implements Parcelable {
    public static final Parcelable.Creator<v> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f11098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11100j;

    /* JADX INFO: compiled from: SessionData.kt */
    public static final class a implements Parcelable.Creator<v> {
        @Override // android.os.Parcelable.Creator
        public final v createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new v(parcel.readLong(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final v[] newArray(int i10) {
            return new v[i10];
        }
    }

    public v(long j10, int i10, int i11) {
        this.f11098h = j10;
        this.f11099i = i10;
        this.f11100j = i11;
    }

    public final int a() {
        return this.f11100j;
    }

    public final int b() {
        return this.f11099i;
    }

    public final long c() {
        return this.f11098h;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f11098h == vVar.f11098h && this.f11099i == vVar.f11099i && this.f11100j == vVar.f11100j;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11100j) + r0.e(this.f11099i, Long.hashCode(this.f11098h) * 31, 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionAggregateData(timestamp=");
        sbC.append(this.f11098h);
        sbC.append(", sessionStepCount=");
        sbC.append(this.f11099i);
        sbC.append(", intermediateCadenceSpm=");
        return a0.b.b(sbC, this.f11100j, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f11098h);
        parcel.writeInt(this.f11099i);
        parcel.writeInt(this.f11100j);
    }
}
