package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y2 extends f {
    public static final Parcelable.Creator<y2> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16929n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16930o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16931p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<y2> {
        @Override // android.os.Parcelable.Creator
        public final y2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final y2[] newArray(int i10) {
            return new y2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y2(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16929n = str;
        this.f16930o = aVar;
        this.f16931p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16930o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16931p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "FootPresenceSensorDisableError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y2)) {
            return false;
        }
        y2 y2Var = (y2) obj;
        return p4.h.c(this.f16929n, y2Var.f16929n) && p4.h.c(this.f16930o, y2Var.f16930o) && p4.h.c(this.f16931p, y2Var.f16931p);
    }

    public final int hashCode() {
        return this.f16931p.hashCode() + androidx.appcompat.widget.e0.c(this.f16930o, this.f16929n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16929n;
        v9.a aVar = this.f16930o;
        return d1.c.b(ed.c.a("FootPresenceSensorDisableError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16931p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16929n);
        this.f16930o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16931p);
    }
}
