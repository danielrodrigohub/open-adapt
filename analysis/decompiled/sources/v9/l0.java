package v9;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends n0 {
    public static final Parcelable.Creator<l0> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w9.a f16691i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List<String> f16692j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16693k;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<l0> {
        @Override // android.os.Parcelable.Creator
        public final l0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l0(w9.a.CREATOR.createFromParcel(parcel), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        public final l0[] newArray(int i10) {
            return new l0[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(w9.a aVar, List<String> list) throws IOException {
        super(aVar.f17253h);
        p4.h.j(aVar, "shoe");
        p4.h.j(list, "notGrantedPermissions");
        this.f16691i = aVar;
        this.f16692j = list;
        this.f16693k = "The connect request of: " + aVar.f17254i + " for devices cannot be granted. The user needs to accept " + gd.n.d0(list, null, null, null, null, 63) + " permissions.";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return p4.h.c(this.f16691i, l0Var.f16691i) && p4.h.c(this.f16692j, l0Var.f16692j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16693k;
    }

    public final int hashCode() {
        return this.f16692j.hashCode() + (this.f16691i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitPermissionNotGranted(shoe=" + this.f16691i + ", notGrantedPermissions=" + this.f16692j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16691i.writeToParcel(parcel, i10);
        parcel.writeStringList(this.f16692j);
    }
}
