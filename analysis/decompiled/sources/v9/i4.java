package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i4 extends g {
    public static final Parcelable.Creator<i4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16640l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16641m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ea.i f16642n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<i4> {
        @Override // android.os.Parcelable.Creator
        public final i4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), ea.i.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final i4[] newArray(int i10) {
            return new i4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i4(String str, v9.a aVar, ea.i iVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(iVar, "lacingPosition");
        this.f16640l = str;
        this.f16641m = aVar;
        this.f16642n = iVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16641m;
    }

    @Override // v9.g
    public final String c() {
        return "lacePosition: " + this.f16642n;
    }

    @Override // v9.g
    public final String d() {
        return "LaceGetPresetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i4)) {
            return false;
        }
        i4 i4Var = (i4) obj;
        return p4.h.c(this.f16640l, i4Var.f16640l) && p4.h.c(this.f16641m, i4Var.f16641m) && p4.h.c(this.f16642n, i4Var.f16642n);
    }

    public final int hashCode() {
        return this.f16642n.hashCode() + androidx.appcompat.widget.e0.c(this.f16641m, this.f16640l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16640l;
        v9.a aVar = this.f16641m;
        ea.i iVar = this.f16642n;
        StringBuilder sbA = ed.c.a("LaceGetPresetResult(id=", str, ", adaptIdentifier=", aVar, ", lacingPosition=");
        sbA.append(iVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16640l);
        this.f16641m.writeToParcel(parcel, i10);
        this.f16642n.writeToParcel(parcel, i10);
    }
}
