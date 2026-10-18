package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i2 extends f {
    public static final Parcelable.Creator<i2> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16634n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16635o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16636p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<i2> {
        @Override // android.os.Parcelable.Creator
        public final i2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final i2[] newArray(int i10) {
            return new i2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i2(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16634n = str;
        this.f16635o = aVar;
        this.f16636p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16635o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16636p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "DeleteShoesError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i2)) {
            return false;
        }
        i2 i2Var = (i2) obj;
        return p4.h.c(this.f16634n, i2Var.f16634n) && p4.h.c(this.f16635o, i2Var.f16635o) && p4.h.c(this.f16636p, i2Var.f16636p);
    }

    public final int hashCode() {
        return this.f16636p.hashCode() + androidx.appcompat.widget.e0.c(this.f16635o, this.f16634n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16634n;
        v9.a aVar = this.f16635o;
        return d1.c.b(ed.c.a("DeleteShoesError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16636p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16634n);
        this.f16635o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16636p);
    }
}
