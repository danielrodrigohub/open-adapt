package q8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: BatteryEventAnimator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f14161h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f14162i;

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            Parcelable.Creator<e> creator = e.CREATOR;
            return new f(creator.createFromParcel(parcel), creator.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(e eVar, e eVar2) {
        p4.h.j(eVar, "leftShoeBatteryInfoState");
        p4.h.j(eVar2, "rightShoeBatteryInfoState");
        this.f14161h = eVar;
        this.f14162i = eVar2;
        if (eVar.f14159h) {
            throw new IllegalArgumentException("Left shoe cannot be right shoe");
        }
        if (!eVar2.f14159h) {
            throw new IllegalArgumentException("Left shoe cannot be right shoe");
        }
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
        return p4.h.c(this.f14161h, fVar.f14161h) && p4.h.c(this.f14162i, fVar.f14162i);
    }

    public final int hashCode() {
        return this.f14162i.hashCode() + (this.f14161h.hashCode() * 31);
    }

    public final String toString() {
        return "BatteryInfoStates(leftShoeBatteryInfoState=" + this.f14161h + ", rightShoeBatteryInfoState=" + this.f14162i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f14161h.writeToParcel(parcel, i10);
        this.f14162i.writeToParcel(parcel, i10);
    }
}
