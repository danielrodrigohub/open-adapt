package s9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: BigfootOnboardingShoe.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f15186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f15187i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f15188j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f15189k;

    /* JADX INFO: compiled from: BigfootOnboardingShoe.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(String str, String str2, String str3, String str4) {
        p4.h.j(str, "id");
        p4.h.j(str2, "address");
        p4.h.j(str3, "authKey");
        p4.h.j(str4, "scanDesignation");
        this.f15186h = str;
        this.f15187i = str2;
        this.f15188j = str3;
        this.f15189k = str4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return p4.h.c(this.f15186h, dVar.f15186h) && p4.h.c(this.f15187i, dVar.f15187i) && p4.h.c(this.f15188j, dVar.f15188j) && p4.h.c(this.f15189k, dVar.f15189k);
    }

    public final int hashCode() {
        return this.f15189k.hashCode() + a1.f.c(this.f15188j, a1.f.c(this.f15187i, this.f15186h.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        String str = this.f15186h;
        String str2 = this.f15187i;
        String str3 = this.f15188j;
        String str4 = this.f15189k;
        StringBuilder sbA = k1.a.a("BigfootOnboardingShoe(id=", str, ", address=", str2, ", authKey=");
        sbA.append(str3);
        sbA.append(", scanDesignation=");
        sbA.append(str4);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f15186h);
        parcel.writeString(this.f15187i);
        parcel.writeString(this.f15188j);
        parcel.writeString(this.f15189k);
    }
}
