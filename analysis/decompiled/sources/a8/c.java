package a8;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("histo0")
    public final int f498h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("histo1")
    public final int f499i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @f7.b("histo2")
    public final int f500j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @f7.b("histo3")
    public final int f501k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @f7.b("histo4")
    public final int f502l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @f7.b("histo5")
    public final int f503m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @f7.b("histo6")
    public final int f504n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @f7.b("histo7")
    public final int f505o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @f7.b("histo8")
    public final int f506p;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f498h = i10;
        this.f499i = i11;
        this.f500j = i12;
        this.f501k = i13;
        this.f502l = i14;
        this.f503m = i15;
        this.f504n = i16;
        this.f505o = i17;
        this.f506p = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f498h == cVar.f498h && this.f499i == cVar.f499i && this.f500j == cVar.f500j && this.f501k == cVar.f501k && this.f502l == cVar.f502l && this.f503m == cVar.f503m && this.f504n == cVar.f504n && this.f505o == cVar.f505o && this.f506p == cVar.f506p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f506p) + r0.e(this.f505o, r0.e(this.f504n, r0.e(this.f503m, r0.e(this.f502l, r0.e(this.f501k, r0.e(this.f500j, r0.e(this.f499i, Integer.hashCode(this.f498h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        int i10 = this.f498h;
        int i11 = this.f499i;
        int i12 = this.f500j;
        int i13 = this.f501k;
        int i14 = this.f502l;
        int i15 = this.f503m;
        int i16 = this.f504n;
        int i17 = this.f505o;
        int i18 = this.f506p;
        StringBuilder sbB = s.b("CurrentStats(histo0=", i10, ", histo1=", i11, ", histo2=");
        a1.d.e(sbB, i12, ", histo3=", i13, ", histo4=");
        a1.d.e(sbB, i14, ", histo5=", i15, ", histo6=");
        a1.d.e(sbB, i16, ", histo7=", i17, ", histo8=");
        return s.a(sbB, i18, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f498h);
        parcel.writeInt(this.f499i);
        parcel.writeInt(this.f500j);
        parcel.writeInt(this.f501k);
        parcel.writeInt(this.f502l);
        parcel.writeInt(this.f503m);
        parcel.writeInt(this.f504n);
        parcel.writeInt(this.f505o);
        parcel.writeInt(this.f506p);
    }
}
