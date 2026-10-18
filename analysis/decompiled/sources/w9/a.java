package w9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0304a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v9.a f17253h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u1 f17254i;

    /* JADX INFO: renamed from: w9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class C0304a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a(v9.a.CREATOR.createFromParcel(parcel), u1.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(v9.a aVar, u1 u1Var) {
        p4.h.j(aVar, "identifier");
        p4.h.j(u1Var, "shoe");
        this.f17253h = aVar;
        this.f17254i = u1Var;
        u1Var.b();
        ((Boolean) u1Var.f17374h.getValue()).booleanValue();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f17253h, aVar.f17253h) && this.f17254i == aVar.f17254i;
    }

    public final int hashCode() {
        return this.f17254i.hashCode() + (this.f17253h.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptKitIdentifierShoe(identifier=" + this.f17253h + ", shoe=" + this.f17254i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f17253h.writeToParcel(parcel, i10);
        parcel.writeString(this.f17254i.name());
    }
}
