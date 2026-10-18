package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y1 extends g {
    public static final Parcelable.Creator<y1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16926l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16927m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ba.e f16928n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<y1> {
        @Override // android.os.Parcelable.Creator
        public final y1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), ba.e.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final y1[] newArray(int i10) {
            return new y1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y1(String str, v9.a aVar, ba.e eVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(eVar, "battery");
        this.f16926l = str;
        this.f16927m = aVar;
        this.f16928n = eVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16927m;
    }

    @Override // v9.g
    public final String c() {
        return this.f16928n.a();
    }

    @Override // v9.g
    public final String d() {
        return "BatteryGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y1)) {
            return false;
        }
        y1 y1Var = (y1) obj;
        return p4.h.c(this.f16926l, y1Var.f16926l) && p4.h.c(this.f16927m, y1Var.f16927m) && p4.h.c(this.f16928n, y1Var.f16928n);
    }

    public final int hashCode() {
        return this.f16928n.hashCode() + androidx.appcompat.widget.e0.c(this.f16927m, this.f16926l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16926l;
        v9.a aVar = this.f16927m;
        ba.e eVar = this.f16928n;
        StringBuilder sbA = ed.c.a("BatteryGetResult(id=", str, ", adaptIdentifier=", aVar, ", battery=");
        sbA.append(eVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16926l);
        this.f16927m.writeToParcel(parcel, i10);
        this.f16928n.writeToParcel(parcel, i10);
    }
}
