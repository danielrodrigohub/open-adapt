package y9;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;
import v9.m;

/* JADX INFO: compiled from: FailedToScanBluetoothException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends m {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18727i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f18728j;

    /* JADX INFO: compiled from: FailedToScanBluetoothException.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new d(parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(int i10) {
        super(v9.a.f16442j);
        String str = "Failed to start BLE Scanner with error code: " + i10;
        h.j(str, "message");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f18727i = i10;
        this.f18728j = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f18727i == dVar.f18727i && h.c(this.f18728j, dVar.f18728j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f18728j;
    }

    public final int hashCode() {
        return this.f18728j.hashCode() + (Integer.hashCode(this.f18727i) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "FailedToScanBluetoothException(code=" + this.f18727i + ", message=" + this.f18728j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.f18727i);
        parcel.writeString(this.f18728j);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(int i10, String str) {
        super(v9.a.f16442j);
        h.j(str, "message");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f18727i = i10;
        this.f18728j = str;
    }
}
