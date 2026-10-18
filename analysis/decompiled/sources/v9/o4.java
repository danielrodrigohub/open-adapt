package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o4 extends f {
    public static final Parcelable.Creator<o4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16747n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16748o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16749p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<o4> {
        @Override // android.os.Parcelable.Creator
        public final o4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final o4[] newArray(int i10) {
            return new o4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16747n = str;
        this.f16748o = aVar;
        this.f16749p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16748o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16749p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceSetPresetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o4)) {
            return false;
        }
        o4 o4Var = (o4) obj;
        return p4.h.c(this.f16747n, o4Var.f16747n) && p4.h.c(this.f16748o, o4Var.f16748o) && p4.h.c(this.f16749p, o4Var.f16749p);
    }

    public final int hashCode() {
        return this.f16749p.hashCode() + androidx.appcompat.widget.e0.c(this.f16748o, this.f16747n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16747n;
        v9.a aVar = this.f16748o;
        return d1.c.b(ed.c.a("LaceSetPresetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16749p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16747n);
        this.f16748o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16749p);
    }
}
