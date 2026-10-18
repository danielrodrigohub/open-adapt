package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w3 extends g {
    public static final Parcelable.Creator<w3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16897l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16898m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ea.d f16899n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<w3> {
        @Override // android.os.Parcelable.Creator
        public final w3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new w3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), ea.d.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final w3[] newArray(int i10) {
            return new w3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w3(String str, v9.a aVar, ea.d dVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(dVar, "color");
        this.f16897l = str;
        this.f16898m = aVar;
        this.f16899n = dVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16898m;
    }

    @Override // v9.g
    public final String c() {
        return this.f16899n.a();
    }

    @Override // v9.g
    public final String d() {
        return "LEDGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w3)) {
            return false;
        }
        w3 w3Var = (w3) obj;
        return p4.h.c(this.f16897l, w3Var.f16897l) && p4.h.c(this.f16898m, w3Var.f16898m) && p4.h.c(this.f16899n, w3Var.f16899n);
    }

    public final int hashCode() {
        return this.f16899n.hashCode() + androidx.appcompat.widget.e0.c(this.f16898m, this.f16897l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16897l;
        v9.a aVar = this.f16898m;
        ea.d dVar = this.f16899n;
        StringBuilder sbA = ed.c.a("LEDGetResult(id=", str, ", adaptIdentifier=", aVar, ", color=");
        sbA.append(dVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16897l);
        this.f16898m.writeToParcel(parcel, i10);
        this.f16899n.writeToParcel(parcel, i10);
    }
}
