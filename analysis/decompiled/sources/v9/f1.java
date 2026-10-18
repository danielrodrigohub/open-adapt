package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f1 extends f {
    public static final Parcelable.Creator<f1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16543n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16544o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16545p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<f1> {
        @Override // android.os.Parcelable.Creator
        public final f1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final f1[] newArray(int i10) {
            return new f1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f1(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16543n = str;
        this.f16544o = aVar;
        this.f16545p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16544o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16545p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AuthKeyExchangeReadyError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f1)) {
            return false;
        }
        f1 f1Var = (f1) obj;
        return p4.h.c(this.f16543n, f1Var.f16543n) && p4.h.c(this.f16544o, f1Var.f16544o) && p4.h.c(this.f16545p, f1Var.f16545p);
    }

    public final int hashCode() {
        return this.f16545p.hashCode() + androidx.appcompat.widget.e0.c(this.f16544o, this.f16543n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16543n;
        v9.a aVar = this.f16544o;
        return d1.c.b(ed.c.a("AuthKeyExchangeReadyError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16545p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16543n);
        this.f16544o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16545p);
    }
}
