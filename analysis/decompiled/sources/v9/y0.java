package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y0 extends f {
    public static final Parcelable.Creator<y0> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16923n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16924o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16925p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<y0> {
        @Override // android.os.Parcelable.Creator
        public final y0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y0(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final y0[] newArray(int i10) {
            return new y0[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16923n = str;
        this.f16924o = aVar;
        this.f16925p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16924o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16925p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AnimationStartError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        return p4.h.c(this.f16923n, y0Var.f16923n) && p4.h.c(this.f16924o, y0Var.f16924o) && p4.h.c(this.f16925p, y0Var.f16925p);
    }

    public final int hashCode() {
        return this.f16925p.hashCode() + androidx.appcompat.widget.e0.c(this.f16924o, this.f16923n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16923n;
        v9.a aVar = this.f16924o;
        return d1.c.b(ed.c.a("AnimationStartError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16925p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16923n);
        this.f16924o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16925p);
    }
}
