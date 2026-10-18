package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e5 extends g {
    public static final Parcelable.Creator<e5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16535l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16536m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16537n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<e5> {
        @Override // android.os.Parcelable.Creator
        public final e5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final e5[] newArray(int i10) {
            return new e5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e5(String str, v9.a aVar, String str2) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(str2, "productInformation");
        this.f16535l = str;
        this.f16536m = aVar;
        this.f16537n = str2;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16536m;
    }

    @Override // v9.g
    public final String c() {
        return androidx.recyclerview.widget.d.c("productionInformation: ", this.f16537n);
    }

    @Override // v9.g
    public final String d() {
        return "ProductInformationGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e5)) {
            return false;
        }
        e5 e5Var = (e5) obj;
        return p4.h.c(this.f16535l, e5Var.f16535l) && p4.h.c(this.f16536m, e5Var.f16536m) && p4.h.c(this.f16537n, e5Var.f16537n);
    }

    public final int hashCode() {
        return this.f16537n.hashCode() + androidx.appcompat.widget.e0.c(this.f16536m, this.f16535l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16535l;
        v9.a aVar = this.f16536m;
        return a1.f.d(ed.c.a("ProductInformationGetResult(id=", str, ", adaptIdentifier=", aVar, ", productInformation="), this.f16537n, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16535l);
        this.f16536m.writeToParcel(parcel, i10);
        parcel.writeString(this.f16537n);
    }
}
