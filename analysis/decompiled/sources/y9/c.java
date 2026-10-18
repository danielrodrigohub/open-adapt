package y9;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;
import v9.m;

/* JADX INFO: compiled from: BluetoothDisabledException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends m {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f18726i;

    /* JADX INFO: compiled from: BluetoothDisabledException.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new c(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c() {
        this(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str) {
        super(v9.a.f16442j);
        h.j(str, "message");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f18726i = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && h.c(this.f18726i, ((c) obj).f18726i);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f18726i;
    }

    public final int hashCode() {
        return this.f18726i.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return a0.d.c("BluetoothDisabledException(message=", this.f18726i, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.f18726i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str, int i10, rd.h hVar) {
        super(v9.a.f16442j);
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f18726i = "User has disabled the bluetooth connection";
    }
}
