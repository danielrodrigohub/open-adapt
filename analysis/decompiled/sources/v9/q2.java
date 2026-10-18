package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q2 extends f {
    public static final Parcelable.Creator<q2> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16779n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16780o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16781p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<q2> {
        @Override // android.os.Parcelable.Creator
        public final q2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final q2[] newArray(int i10) {
            return new q2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q2(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16779n = str;
        this.f16780o = aVar;
        this.f16781p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16780o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16781p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "FirmwareCancelPushError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q2)) {
            return false;
        }
        q2 q2Var = (q2) obj;
        return p4.h.c(this.f16779n, q2Var.f16779n) && p4.h.c(this.f16780o, q2Var.f16780o) && p4.h.c(this.f16781p, q2Var.f16781p);
    }

    public final int hashCode() {
        return this.f16781p.hashCode() + androidx.appcompat.widget.e0.c(this.f16780o, this.f16779n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16779n;
        v9.a aVar = this.f16780o;
        return d1.c.b(ed.c.a("FirmwareCancelPushError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16781p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16779n);
        this.f16780o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16781p);
    }
}
