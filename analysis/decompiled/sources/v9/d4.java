package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d4 extends f {
    public static final Parcelable.Creator<d4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16510n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16511o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16512p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<d4> {
        @Override // android.os.Parcelable.Creator
        public final d4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final d4[] newArray(int i10) {
            return new d4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16510n = str;
        this.f16511o = aVar;
        this.f16512p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16511o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16512p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceGetPercentError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d4)) {
            return false;
        }
        d4 d4Var = (d4) obj;
        return p4.h.c(this.f16510n, d4Var.f16510n) && p4.h.c(this.f16511o, d4Var.f16511o) && p4.h.c(this.f16512p, d4Var.f16512p);
    }

    public final int hashCode() {
        return this.f16512p.hashCode() + androidx.appcompat.widget.e0.c(this.f16511o, this.f16510n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16510n;
        v9.a aVar = this.f16511o;
        return d1.c.b(ed.c.a("LaceGetPercentError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16512p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16510n);
        this.f16511o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16512p);
    }
}
