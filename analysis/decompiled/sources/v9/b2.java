package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b2 extends f {
    public static final Parcelable.Creator<b2> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16473n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16474o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16475p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<b2> {
        @Override // android.os.Parcelable.Creator
        public final b2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final b2[] newArray(int i10) {
            return new b2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b2(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16473n = str;
        this.f16474o = aVar;
        this.f16475p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16474o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16475p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "ConnectError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b2)) {
            return false;
        }
        b2 b2Var = (b2) obj;
        return p4.h.c(this.f16473n, b2Var.f16473n) && p4.h.c(this.f16474o, b2Var.f16474o) && p4.h.c(this.f16475p, b2Var.f16475p);
    }

    public final int hashCode() {
        return this.f16475p.hashCode() + androidx.appcompat.widget.e0.c(this.f16474o, this.f16473n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16473n;
        v9.a aVar = this.f16474o;
        return d1.c.b(ed.c.a("ConnectError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16475p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16473n);
        this.f16474o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16475p);
    }
}
