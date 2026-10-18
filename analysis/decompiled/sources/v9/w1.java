package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w1 extends f {
    public static final Parcelable.Creator<w1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16893n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16894o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16895p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<w1> {
        @Override // android.os.Parcelable.Creator
        public final w1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new w1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final w1[] newArray(int i10) {
            return new w1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w1(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16893n = str;
        this.f16894o = aVar;
        this.f16895p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16894o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16895p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "BatteryGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w1)) {
            return false;
        }
        w1 w1Var = (w1) obj;
        return p4.h.c(this.f16893n, w1Var.f16893n) && p4.h.c(this.f16894o, w1Var.f16894o) && p4.h.c(this.f16895p, w1Var.f16895p);
    }

    public final int hashCode() {
        return this.f16895p.hashCode() + androidx.appcompat.widget.e0.c(this.f16894o, this.f16893n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16893n;
        v9.a aVar = this.f16894o;
        return d1.c.b(ed.c.a("BatteryGetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16895p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16893n);
        this.f16894o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16895p);
    }
}
