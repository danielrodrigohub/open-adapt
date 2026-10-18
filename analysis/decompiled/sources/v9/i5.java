package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i5 extends f {
    public static final Parcelable.Creator<i5> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16643n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16644o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16645p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<i5> {
        @Override // android.os.Parcelable.Creator
        public final i5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final i5[] newArray(int i10) {
            return new i5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i5(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16643n = str;
        this.f16644o = aVar;
        this.f16645p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16644o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16645p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "ResetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i5)) {
            return false;
        }
        i5 i5Var = (i5) obj;
        return p4.h.c(this.f16643n, i5Var.f16643n) && p4.h.c(this.f16644o, i5Var.f16644o) && p4.h.c(this.f16645p, i5Var.f16645p);
    }

    public final int hashCode() {
        return this.f16645p.hashCode() + androidx.appcompat.widget.e0.c(this.f16644o, this.f16643n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16643n;
        v9.a aVar = this.f16644o;
        return d1.c.b(ed.c.a("ResetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16645p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16643n);
        this.f16644o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16645p);
    }
}
