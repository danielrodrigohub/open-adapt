package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n2 extends f {
    public static final Parcelable.Creator<n2> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16727n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16728o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16729p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<n2> {
        @Override // android.os.Parcelable.Creator
        public final n2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final n2[] newArray(int i10) {
            return new n2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n2(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16727n = str;
        this.f16728o = aVar;
        this.f16729p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16728o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16729p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "DisconnectError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n2)) {
            return false;
        }
        n2 n2Var = (n2) obj;
        return p4.h.c(this.f16727n, n2Var.f16727n) && p4.h.c(this.f16728o, n2Var.f16728o) && p4.h.c(this.f16729p, n2Var.f16729p);
    }

    public final int hashCode() {
        return this.f16729p.hashCode() + androidx.appcompat.widget.e0.c(this.f16728o, this.f16727n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16727n;
        v9.a aVar = this.f16728o;
        return d1.c.b(ed.c.a("DisconnectError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16729p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16727n);
        this.f16728o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16729p);
    }
}
