package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u3 extends f {
    public static final Parcelable.Creator<u3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16856n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16857o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16858p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<u3> {
        @Override // android.os.Parcelable.Creator
        public final u3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final u3[] newArray(int i10) {
            return new u3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u3(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16856n = str;
        this.f16857o = aVar;
        this.f16858p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16857o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16858p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LEDGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u3)) {
            return false;
        }
        u3 u3Var = (u3) obj;
        return p4.h.c(this.f16856n, u3Var.f16856n) && p4.h.c(this.f16857o, u3Var.f16857o) && p4.h.c(this.f16858p, u3Var.f16858p);
    }

    public final int hashCode() {
        return this.f16858p.hashCode() + androidx.appcompat.widget.e0.c(this.f16857o, this.f16856n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16856n;
        v9.a aVar = this.f16857o;
        return d1.c.b(ed.c.a("LEDGetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16858p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16856n);
        this.f16857o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16858p);
    }
}
