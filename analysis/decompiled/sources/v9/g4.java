package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g4 extends f {
    public static final Parcelable.Creator<g4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16570n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16571o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16572p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<g4> {
        @Override // android.os.Parcelable.Creator
        public final g4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final g4[] newArray(int i10) {
            return new g4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16570n = str;
        this.f16571o = aVar;
        this.f16572p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16571o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16572p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceGetPresetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g4)) {
            return false;
        }
        g4 g4Var = (g4) obj;
        return p4.h.c(this.f16570n, g4Var.f16570n) && p4.h.c(this.f16571o, g4Var.f16571o) && p4.h.c(this.f16572p, g4Var.f16572p);
    }

    public final int hashCode() {
        return this.f16572p.hashCode() + androidx.appcompat.widget.e0.c(this.f16571o, this.f16570n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16570n;
        v9.a aVar = this.f16571o;
        return d1.c.b(ed.c.a("LaceGetPresetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16572p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16570n);
        this.f16571o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16572p);
    }
}
