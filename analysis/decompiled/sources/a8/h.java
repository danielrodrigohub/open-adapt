package a8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("time_stamp")
    public final String f521h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("nuid")
    public final String f522i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @f7.b("stats")
    public final l f523j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @f7.b("shoe_id_left")
    public final String f524k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @f7.b("shoe_id_right")
    public final String f525l;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<h> {
        @Override // android.os.Parcelable.Creator
        public final h createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h(parcel.readString(), parcel.readString(), l.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final h[] newArray(int i10) {
            return new h[i10];
        }
    }

    public h(String str, String str2, l lVar, String str3, String str4) {
        p4.h.j(str, "timeStamp");
        p4.h.j(str2, "nuid");
        p4.h.j(lVar, "stats");
        this.f521h = str;
        this.f522i = str2;
        this.f523j = lVar;
        this.f524k = str3;
        this.f525l = str4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return p4.h.c(this.f521h, hVar.f521h) && p4.h.c(this.f522i, hVar.f522i) && p4.h.c(this.f523j, hVar.f523j) && p4.h.c(this.f524k, hVar.f524k) && p4.h.c(this.f525l, hVar.f525l);
    }

    public final int hashCode() {
        int iHashCode = (this.f523j.hashCode() + a1.f.c(this.f522i, this.f521h.hashCode() * 31, 31)) * 31;
        String str = this.f524k;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f525l;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f521h;
        String str2 = this.f522i;
        l lVar = this.f523j;
        String str3 = this.f524k;
        String str4 = this.f525l;
        StringBuilder sbA = k1.a.a("ShoeStats(timeStamp=", str, ", nuid=", str2, ", stats=");
        sbA.append(lVar);
        sbA.append(", shoeIdLeft=");
        sbA.append(str3);
        sbA.append(", shoeIdRight=");
        return a1.f.d(sbA, str4, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f521h);
        parcel.writeString(this.f522i);
        this.f523j.writeToParcel(parcel, i10);
        parcel.writeString(this.f524k);
        parcel.writeString(this.f525l);
    }
}
