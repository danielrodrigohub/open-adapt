package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r3 extends f {
    public static final Parcelable.Creator<r3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16796n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16797o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16798p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<r3> {
        @Override // android.os.Parcelable.Creator
        public final r3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final r3[] newArray(int i10) {
            return new r3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16796n = str;
        this.f16797o = aVar;
        this.f16798p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16797o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16798p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LEDBlinkError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r3)) {
            return false;
        }
        r3 r3Var = (r3) obj;
        return p4.h.c(this.f16796n, r3Var.f16796n) && p4.h.c(this.f16797o, r3Var.f16797o) && p4.h.c(this.f16798p, r3Var.f16798p);
    }

    public final int hashCode() {
        return this.f16798p.hashCode() + androidx.appcompat.widget.e0.c(this.f16797o, this.f16796n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16796n;
        v9.a aVar = this.f16797o;
        return d1.c.b(ed.c.a("LEDBlinkError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16798p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16796n);
        this.f16797o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16798p);
    }
}
