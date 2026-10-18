package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: BigfootStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11031h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11032i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11033j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11034k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11035l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f11036m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11037n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f11038o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f11039p;

    /* JADX INFO: compiled from: BigfootStats.kt */
    public static final class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f11031h = i10;
        this.f11032i = i11;
        this.f11033j = i12;
        this.f11034k = i13;
        this.f11035l = i14;
        this.f11036m = i15;
        this.f11037n = i16;
        this.f11038o = i17;
        this.f11039p = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f11031h == iVar.f11031h && this.f11032i == iVar.f11032i && this.f11033j == iVar.f11033j && this.f11034k == iVar.f11034k && this.f11035l == iVar.f11035l && this.f11036m == iVar.f11036m && this.f11037n == iVar.f11037n && this.f11038o == iVar.f11038o && this.f11039p == iVar.f11039p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11039p) + r0.e(this.f11038o, r0.e(this.f11037n, r0.e(this.f11036m, r0.e(this.f11035l, r0.e(this.f11034k, r0.e(this.f11033j, r0.e(this.f11032i, Integer.hashCode(this.f11031h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("CurrentStats(histo0=");
        sbC.append(this.f11031h);
        sbC.append(", histo1=");
        sbC.append(this.f11032i);
        sbC.append(", histo2=");
        sbC.append(this.f11033j);
        sbC.append(", histo3=");
        sbC.append(this.f11034k);
        sbC.append(", histo4=");
        sbC.append(this.f11035l);
        sbC.append(", histo5=");
        sbC.append(this.f11036m);
        sbC.append(", histo6=");
        sbC.append(this.f11037n);
        sbC.append(", histo7=");
        sbC.append(this.f11038o);
        sbC.append(", histo8=");
        return a0.b.b(sbC, this.f11039p, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11031h);
        parcel.writeInt(this.f11032i);
        parcel.writeInt(this.f11033j);
        parcel.writeInt(this.f11034k);
        parcel.writeInt(this.f11035l);
        parcel.writeInt(this.f11036m);
        parcel.writeInt(this.f11037n);
        parcel.writeInt(this.f11038o);
        parcel.writeInt(this.f11039p);
    }
}
