package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b3 extends f {
    public static final Parcelable.Creator<b3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16476n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16477o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16478p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<b3> {
        @Override // android.os.Parcelable.Creator
        public final b3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final b3[] newArray(int i10) {
            return new b3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b3(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16476n = str;
        this.f16477o = aVar;
        this.f16478p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16477o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16478p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "FootPresenceSensorEnableError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b3)) {
            return false;
        }
        b3 b3Var = (b3) obj;
        return p4.h.c(this.f16476n, b3Var.f16476n) && p4.h.c(this.f16477o, b3Var.f16477o) && p4.h.c(this.f16478p, b3Var.f16478p);
    }

    public final int hashCode() {
        return this.f16478p.hashCode() + androidx.appcompat.widget.e0.c(this.f16477o, this.f16476n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16476n;
        v9.a aVar = this.f16477o;
        return d1.c.b(ed.c.a("FootPresenceSensorEnableError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16478p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16476n);
        this.f16477o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16478p);
    }
}
