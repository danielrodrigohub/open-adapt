package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l5 extends f {
    public static final Parcelable.Creator<l5> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16705n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16706o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16707p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<l5> {
        @Override // android.os.Parcelable.Creator
        public final l5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final l5[] newArray(int i10) {
            return new l5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l5(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16705n = str;
        this.f16706o = aVar;
        this.f16707p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16706o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16707p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SerialNumberError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l5)) {
            return false;
        }
        l5 l5Var = (l5) obj;
        return p4.h.c(this.f16705n, l5Var.f16705n) && p4.h.c(this.f16706o, l5Var.f16706o) && p4.h.c(this.f16707p, l5Var.f16707p);
    }

    public final int hashCode() {
        return this.f16707p.hashCode() + androidx.appcompat.widget.e0.c(this.f16706o, this.f16705n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16705n;
        v9.a aVar = this.f16706o;
        return d1.c.b(ed.c.a("SerialNumberError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16707p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16705n);
        this.f16706o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16707p);
    }
}
