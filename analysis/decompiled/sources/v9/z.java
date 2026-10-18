package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z extends n0 {
    public static final Parcelable.Creator<z> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f16942i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16943j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16944k;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<z> {
        @Override // android.os.Parcelable.Creator
        public final z createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new z(v9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final z[] newArray(int i10) {
            return new z[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(v9.a aVar, String str) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(str, "pairId");
        this.f16942i = aVar;
        this.f16943j = str;
        this.f16944k = a0.d.c("The Adapt Kit Pair with ", str, " has been deleted.  Functions can no longer be called on this pair");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return p4.h.c(this.f16942i, zVar.f16942i) && p4.h.c(this.f16943j, zVar.f16943j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16944k;
    }

    public final int hashCode() {
        return this.f16943j.hashCode() + (this.f16942i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitPairNoLongerExists(adaptIdentifier=" + this.f16942i + ", pairId=" + this.f16943j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16942i.writeToParcel(parcel, i10);
        parcel.writeString(this.f16943j);
    }
}
