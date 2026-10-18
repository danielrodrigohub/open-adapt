package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitPairingError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends ha.a {
    public static final Parcelable.Creator<r> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f8391i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f8392j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f8393k;

    /* JADX INFO: compiled from: AdaptKitPairingError.kt */
    public static final class a implements Parcelable.Creator<r> {
        @Override // android.os.Parcelable.Creator
        public final r createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r(v9.a.CREATOR.createFromParcel(parcel), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final r[] newArray(int i10) {
            return new r[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(v9.a aVar, int i10) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        this.f8391i = aVar;
        this.f8392j = i10;
        this.f8393k = a0.d.b("Failed to start BLE Scanner with error code: ", i10, ". The Android OS");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return p4.h.c(this.f8391i, rVar.f8391i) && this.f8392j == rVar.f8392j;
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f8393k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f8392j) + (this.f8391i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "FailedToStartBluetoothScannerError(adaptIdentifier=" + this.f8391i + ", code=" + this.f8392j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f8391i.writeToParcel(parcel, i10);
        parcel.writeInt(this.f8392j);
    }
}
