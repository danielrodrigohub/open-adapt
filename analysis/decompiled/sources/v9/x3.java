package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x3 extends f {
    public static final Parcelable.Creator<x3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16909n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16910o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16911p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<x3> {
        @Override // android.os.Parcelable.Creator
        public final x3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new x3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final x3[] newArray(int i10) {
            return new x3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x3(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16909n = str;
        this.f16910o = aVar;
        this.f16911p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16910o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16911p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LEDSetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x3)) {
            return false;
        }
        x3 x3Var = (x3) obj;
        return p4.h.c(this.f16909n, x3Var.f16909n) && p4.h.c(this.f16910o, x3Var.f16910o) && p4.h.c(this.f16911p, x3Var.f16911p);
    }

    public final int hashCode() {
        return this.f16911p.hashCode() + androidx.appcompat.widget.e0.c(this.f16910o, this.f16909n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16909n;
        v9.a aVar = this.f16910o;
        return d1.c.b(ed.c.a("LEDSetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16911p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16909n);
        this.f16910o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16911p);
    }
}
