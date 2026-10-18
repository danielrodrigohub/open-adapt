package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v6 extends f {
    public static final Parcelable.Creator<v6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16886n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16887o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16888p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<v6> {
        @Override // android.os.Parcelable.Creator
        public final v6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new v6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final v6[] newArray(int i10) {
            return new v6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v6(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16886n = str;
        this.f16887o = aVar;
        this.f16888p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16887o;
    }

    @Override // v9.f
    public final String c() {
        return androidx.recyclerview.widget.d.c("Get Sessions Error: ", this.f16888p.getMessage());
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16888p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionsGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v6)) {
            return false;
        }
        v6 v6Var = (v6) obj;
        return p4.h.c(this.f16886n, v6Var.f16886n) && p4.h.c(this.f16887o, v6Var.f16887o) && p4.h.c(this.f16888p, v6Var.f16888p);
    }

    public final int hashCode() {
        return this.f16888p.hashCode() + androidx.appcompat.widget.e0.c(this.f16887o, this.f16886n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16886n;
        v9.a aVar = this.f16887o;
        return d1.c.b(ed.c.a("SessionsGetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16888p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16886n);
        this.f16887o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16888p);
    }
}
