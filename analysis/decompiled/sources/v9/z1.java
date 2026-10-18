package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z1 extends f {
    public static final Parcelable.Creator<z1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16948n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16949o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16950p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<z1> {
        @Override // android.os.Parcelable.Creator
        public final z1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new z1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final z1[] newArray(int i10) {
            return new z1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z1(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16948n = str;
        this.f16949o = aVar;
        this.f16950p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16949o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16950p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "BatteryNotificationError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z1)) {
            return false;
        }
        z1 z1Var = (z1) obj;
        return p4.h.c(this.f16948n, z1Var.f16948n) && p4.h.c(this.f16949o, z1Var.f16949o) && p4.h.c(this.f16950p, z1Var.f16950p);
    }

    public final int hashCode() {
        return this.f16950p.hashCode() + androidx.appcompat.widget.e0.c(this.f16949o, this.f16948n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16948n;
        v9.a aVar = this.f16949o;
        return d1.c.b(ed.c.a("BatteryNotificationError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16950p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16948n);
        this.f16949o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16950p);
    }
}
