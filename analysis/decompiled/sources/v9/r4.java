package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r4 extends f {
    public static final Parcelable.Creator<r4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16799n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16800o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16801p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<r4> {
        @Override // android.os.Parcelable.Creator
        public final r4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final r4[] newArray(int i10) {
            return new r4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16799n = str;
        this.f16800o = aVar;
        this.f16801p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16800o;
    }

    @Override // v9.f
    public final String c() {
        return f();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16801p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceTightenError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r4)) {
            return false;
        }
        r4 r4Var = (r4) obj;
        return p4.h.c(this.f16799n, r4Var.f16799n) && p4.h.c(this.f16800o, r4Var.f16800o) && p4.h.c(this.f16801p, r4Var.f16801p);
    }

    public final int hashCode() {
        return this.f16801p.hashCode() + androidx.appcompat.widget.e0.c(this.f16800o, this.f16799n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16799n;
        v9.a aVar = this.f16800o;
        return d1.c.b(ed.c.a("LaceTightenError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16801p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16799n);
        this.f16800o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16801p);
    }
}
