package ea;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitModeResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends l {
    public static final Parcelable.Creator<q> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f6684h;

    /* JADX INFO: compiled from: AdaptKitModeResult.kt */
    public static final class a implements Parcelable.Creator<q> {
        @Override // android.os.Parcelable.Creator
        public final q createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q(parcel.readInt() == 0 ? null : e.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final q[] newArray(int i10) {
            return new q[i10];
        }
    }

    public q(e eVar) {
        this.f6684h = eVar;
        v9.a.C0295a c0295a = v9.a.f16441i;
        v9.a aVar = v9.a.f16443k;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q) && p4.h.c(this.f6684h, ((q) obj).f6684h);
    }

    public final int hashCode() {
        e eVar = this.f6684h;
        if (eVar == null) {
            return 0;
        }
        return eVar.hashCode();
    }

    public final String toString() {
        return "ModeUserIsInNotification(mode=" + this.f6684h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        e eVar = this.f6684h;
        if (eVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            eVar.writeToParcel(parcel, i10);
        }
    }
}
