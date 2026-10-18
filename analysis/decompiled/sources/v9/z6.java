package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z6 extends f {
    public static final Parcelable.Creator<z6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16958n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16959o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16960p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<z6> {
        @Override // android.os.Parcelable.Creator
        public final z6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new z6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final z6[] newArray(int i10) {
            return new z6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z6(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16958n = str;
        this.f16959o = aVar;
        this.f16960p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16959o;
    }

    @Override // v9.f
    public final String c() {
        String str = this.f16958n;
        String message = this.f16960p.getMessage();
        if (message == null) {
            message = this.f16960p.toString();
        }
        return a0.b.a("An Unexpected error for deviceId: ", str, ". Wrapped error: [", message, "]");
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16960p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "UnexpectedAdaptKitError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z6)) {
            return false;
        }
        z6 z6Var = (z6) obj;
        return p4.h.c(this.f16958n, z6Var.f16958n) && p4.h.c(this.f16959o, z6Var.f16959o) && p4.h.c(this.f16960p, z6Var.f16960p);
    }

    public final int hashCode() {
        return this.f16960p.hashCode() + androidx.appcompat.widget.e0.c(this.f16959o, this.f16958n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16958n;
        v9.a aVar = this.f16959o;
        return d1.c.b(ed.c.a("UnexpectedAdaptKitError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16960p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16958n);
        this.f16959o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16960p);
    }
}
