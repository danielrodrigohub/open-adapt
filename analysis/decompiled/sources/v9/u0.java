package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u0 extends f {
    public static final Parcelable.Creator<u0> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16851n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16852o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16853p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<u0> {
        @Override // android.os.Parcelable.Creator
        public final u0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u0(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final u0[] newArray(int i10) {
            return new u0[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16851n = str;
        this.f16852o = aVar;
        this.f16853p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16852o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16853p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AnimationGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u0)) {
            return false;
        }
        u0 u0Var = (u0) obj;
        return p4.h.c(this.f16851n, u0Var.f16851n) && p4.h.c(this.f16852o, u0Var.f16852o) && p4.h.c(this.f16853p, u0Var.f16853p);
    }

    public final int hashCode() {
        return this.f16853p.hashCode() + androidx.appcompat.widget.e0.c(this.f16852o, this.f16851n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16851n;
        v9.a aVar = this.f16852o;
        return d1.c.b(ed.c.a("AnimationGetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16853p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16851n);
        this.f16852o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16853p);
    }
}
