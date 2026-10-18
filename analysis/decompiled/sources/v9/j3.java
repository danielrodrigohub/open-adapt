package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j3 extends g {
    public static final Parcelable.Creator<j3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16653l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ga.b f16654m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f16655n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<j3> {
        @Override // android.os.Parcelable.Creator
        public final j3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j3(parcel.readString(), ga.b.valueOf(parcel.readString()), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final j3[] newArray(int i10) {
            return new j3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j3(String str, ga.b bVar, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(bVar, "gestureConfigurationResponse");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16653l = str;
        this.f16654m = bVar;
        this.f16655n = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16655n;
    }

    @Override // v9.g
    public final String c() {
        return this.f16654m.b();
    }

    @Override // v9.g
    public final String d() {
        return "GestureConfigurationSetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j3)) {
            return false;
        }
        j3 j3Var = (j3) obj;
        return p4.h.c(this.f16653l, j3Var.f16653l) && this.f16654m == j3Var.f16654m && p4.h.c(this.f16655n, j3Var.f16655n);
    }

    public final int hashCode() {
        return this.f16655n.hashCode() + ((this.f16654m.hashCode() + (this.f16653l.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "GestureConfigurationSetResult(id=" + this.f16653l + ", gestureConfigurationResponse=" + this.f16654m + ", adaptIdentifier=" + this.f16655n + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16653l);
        parcel.writeString(this.f16654m.name());
        this.f16655n.writeToParcel(parcel, i10);
    }
}
