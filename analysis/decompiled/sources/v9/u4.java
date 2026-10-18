package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u4 extends f {
    public static final Parcelable.Creator<u4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16859n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16861p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<u4> {
        @Override // android.os.Parcelable.Creator
        public final u4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final u4[] newArray(int i10) {
            return new u4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16859n = str;
        this.f16860o = aVar;
        this.f16861p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16860o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16861p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceToPercentError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u4)) {
            return false;
        }
        u4 u4Var = (u4) obj;
        return p4.h.c(this.f16859n, u4Var.f16859n) && p4.h.c(this.f16860o, u4Var.f16860o) && p4.h.c(this.f16861p, u4Var.f16861p);
    }

    public final int hashCode() {
        return this.f16861p.hashCode() + androidx.appcompat.widget.e0.c(this.f16860o, this.f16859n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16859n;
        v9.a aVar = this.f16860o;
        return d1.c.b(ed.c.a("LaceToPercentError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16861p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16859n);
        this.f16860o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16861p);
    }
}
