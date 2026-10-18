package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u2 extends g {
    public static final Parcelable.Creator<u2> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final fa.c f16854l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16855m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<u2> {
        @Override // android.os.Parcelable.Creator
        public final u2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u2(fa.c.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final u2[] newArray(int i10) {
            return new u2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u2(fa.c cVar, String str) {
        super(str, v9.a.f16442j);
        p4.h.j(cVar, "firmwareUpdate");
        p4.h.j(str, "id");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16854l = cVar;
        this.f16855m = str;
    }

    @Override // v9.g
    public final String d() {
        return "FirmwareUpdateResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u2)) {
            return false;
        }
        u2 u2Var = (u2) obj;
        return p4.h.c(this.f16854l, u2Var.f16854l) && p4.h.c(this.f16855m, u2Var.f16855m);
    }

    public final int hashCode() {
        return this.f16855m.hashCode() + (this.f16854l.hashCode() * 31);
    }

    public final String toString() {
        return "FirmwareUpdateResult(firmwareUpdate=" + this.f16854l + ", id=" + this.f16855m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16854l.writeToParcel(parcel, i10);
        parcel.writeString(this.f16855m);
    }
}
