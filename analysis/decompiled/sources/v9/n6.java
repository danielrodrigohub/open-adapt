package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n6 extends f {
    public static final Parcelable.Creator<n6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16738n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16739o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16740p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<n6> {
        @Override // android.os.Parcelable.Creator
        public final n6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final n6[] newArray(int i10) {
            return new n6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n6(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16738n = str;
        this.f16739o = aVar;
        this.f16740p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16739o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16740p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionStartError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n6)) {
            return false;
        }
        n6 n6Var = (n6) obj;
        return p4.h.c(this.f16738n, n6Var.f16738n) && p4.h.c(this.f16739o, n6Var.f16739o) && p4.h.c(this.f16740p, n6Var.f16740p);
    }

    public final int hashCode() {
        return this.f16740p.hashCode() + androidx.appcompat.widget.e0.c(this.f16739o, this.f16738n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16738n;
        v9.a aVar = this.f16739o;
        return d1.c.b(ed.c.a("SessionStartError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16740p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16738n);
        this.f16739o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16740p);
    }
}
