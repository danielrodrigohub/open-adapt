package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n5 extends g {
    public static final Parcelable.Creator<n5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16735l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16736m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16737n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<n5> {
        @Override // android.os.Parcelable.Creator
        public final n5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final n5[] newArray(int i10) {
            return new n5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n5(String str, v9.a aVar, String str2) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(str2, "serialNumber");
        this.f16735l = str;
        this.f16736m = aVar;
        this.f16737n = str2;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16736m;
    }

    @Override // v9.g
    public final String c() {
        return androidx.recyclerview.widget.d.c("serialNumber: ", this.f16737n);
    }

    @Override // v9.g
    public final String d() {
        return "SerialNumberResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n5)) {
            return false;
        }
        n5 n5Var = (n5) obj;
        return p4.h.c(this.f16735l, n5Var.f16735l) && p4.h.c(this.f16736m, n5Var.f16736m) && p4.h.c(this.f16737n, n5Var.f16737n);
    }

    public final int hashCode() {
        return this.f16737n.hashCode() + androidx.appcompat.widget.e0.c(this.f16736m, this.f16735l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16735l;
        v9.a aVar = this.f16736m;
        return a1.f.d(ed.c.a("SerialNumberResult(id=", str, ", adaptIdentifier=", aVar, ", serialNumber="), this.f16737n, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16735l);
        this.f16736m.writeToParcel(parcel, i10);
        parcel.writeString(this.f16737n);
    }
}
