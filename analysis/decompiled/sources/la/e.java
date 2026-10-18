package la;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionAggregateStepInformation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10207h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10208i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10209j;

    /* JADX INFO: compiled from: SessionAggregateStepInformation.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e(parcel.readLong(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(long j10, int i10, int i11) {
        this.f10207h = j10;
        this.f10208i = i10;
        this.f10209j = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f10207h == eVar.f10207h && this.f10208i == eVar.f10208i && this.f10209j == eVar.f10209j;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10209j) + r0.e(this.f10208i, Long.hashCode(this.f10207h) * 31, 31);
    }

    public final String toString() {
        return "SessionAggregateStepInformation(timestamp=" + this.f10207h + ", sessionStepCount=" + this.f10208i + ", intermediateCadenceSpm=" + this.f10209j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f10207h);
        parcel.writeInt(this.f10208i);
        parcel.writeInt(this.f10209j);
    }
}
