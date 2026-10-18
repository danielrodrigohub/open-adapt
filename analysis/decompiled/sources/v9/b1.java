package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b1 extends f {
    public static final Parcelable.Creator<b1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16470n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16471o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16472p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<b1> {
        @Override // android.os.Parcelable.Creator
        public final b1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final b1[] newArray(int i10) {
            return new b1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b1(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16470n = str;
        this.f16471o = aVar;
        this.f16472p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16471o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16472p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AnimationStopError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b1)) {
            return false;
        }
        b1 b1Var = (b1) obj;
        return p4.h.c(this.f16470n, b1Var.f16470n) && p4.h.c(this.f16471o, b1Var.f16471o) && p4.h.c(this.f16472p, b1Var.f16472p);
    }

    public final int hashCode() {
        return this.f16472p.hashCode() + androidx.appcompat.widget.e0.c(this.f16471o, this.f16470n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16470n;
        v9.a aVar = this.f16471o;
        return d1.c.b(ed.c.a("AnimationStopError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16472p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16470n);
        this.f16471o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16472p);
    }
}
