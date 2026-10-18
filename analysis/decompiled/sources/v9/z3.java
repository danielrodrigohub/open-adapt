package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z3 extends g {
    public static final Parcelable.Creator<z3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16952l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16953m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ea.d f16954n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<z3> {
        @Override // android.os.Parcelable.Creator
        public final z3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new z3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), ea.d.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final z3[] newArray(int i10) {
            return new z3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z3(String str, v9.a aVar, ea.d dVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(dVar, "color");
        this.f16952l = str;
        this.f16953m = aVar;
        this.f16954n = dVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16953m;
    }

    @Override // v9.g
    public final String c() {
        return this.f16954n.a();
    }

    @Override // v9.g
    public final String d() {
        return "LEDSetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z3)) {
            return false;
        }
        z3 z3Var = (z3) obj;
        return p4.h.c(this.f16952l, z3Var.f16952l) && p4.h.c(this.f16953m, z3Var.f16953m) && p4.h.c(this.f16954n, z3Var.f16954n);
    }

    public final int hashCode() {
        return this.f16954n.hashCode() + androidx.appcompat.widget.e0.c(this.f16953m, this.f16952l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16952l;
        v9.a aVar = this.f16953m;
        ea.d dVar = this.f16954n;
        StringBuilder sbA = ed.c.a("LEDSetResult(id=", str, ", adaptIdentifier=", aVar, ", color=");
        sbA.append(dVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16952l);
        this.f16953m.writeToParcel(parcel, i10);
        this.f16954n.writeToParcel(parcel, i10);
    }
}
