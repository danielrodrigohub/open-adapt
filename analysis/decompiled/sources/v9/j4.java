package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j4 extends f {
    public static final Parcelable.Creator<j4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16656n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16657o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16658p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<j4> {
        @Override // android.os.Parcelable.Creator
        public final j4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final j4[] newArray(int i10) {
            return new j4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16656n = str;
        this.f16657o = aVar;
        this.f16658p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16657o;
    }

    @Override // v9.f
    public final String c() {
        return f();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16658p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceLoosenError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j4)) {
            return false;
        }
        j4 j4Var = (j4) obj;
        return p4.h.c(this.f16656n, j4Var.f16656n) && p4.h.c(this.f16657o, j4Var.f16657o) && p4.h.c(this.f16658p, j4Var.f16658p);
    }

    public final int hashCode() {
        return this.f16658p.hashCode() + androidx.appcompat.widget.e0.c(this.f16657o, this.f16656n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16656n;
        v9.a aVar = this.f16657o;
        return d1.c.b(ed.c.a("LaceLoosenError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16658p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16656n);
        this.f16657o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16658p);
    }
}
