package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y implements Parcelable {
    public static final Parcelable.Creator<y> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f11111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11112i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11113j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11114k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11115l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f11116m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11117n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f11118o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f11119p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f11120q;

    /* JADX INFO: compiled from: SessionData.kt */
    public static final class a implements Parcelable.Creator<y> {
        @Override // android.os.Parcelable.Creator
        public final y createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y(parcel.readLong(), d1.c.f(parcel.readString()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), androidx.appcompat.widget.e0.j(parcel.readString()), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final y[] newArray(int i10) {
            return new y[i10];
        }
    }

    public y(long j10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        androidx.appcompat.widget.o.d(i10, "footStrikeType");
        androidx.appcompat.widget.o.d(i17, "stepClassification");
        this.f11111h = j10;
        this.f11112i = i10;
        this.f11113j = i11;
        this.f11114k = i12;
        this.f11115l = i13;
        this.f11116m = i14;
        this.f11117n = i15;
        this.f11118o = i16;
        this.f11119p = i17;
        this.f11120q = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f11111h == yVar.f11111h && this.f11112i == yVar.f11112i && this.f11113j == yVar.f11113j && this.f11114k == yVar.f11114k && this.f11115l == yVar.f11115l && this.f11116m == yVar.f11116m && this.f11117n == yVar.f11117n && this.f11118o == yVar.f11118o && this.f11119p == yVar.f11119p && this.f11120q == yVar.f11120q;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11120q) + ((q.g.a(this.f11119p) + r0.e(this.f11118o, r0.e(this.f11117n, r0.e(this.f11116m, r0.e(this.f11115l, r0.e(this.f11114k, r0.e(this.f11113j, (q.g.a(this.f11112i) + (Long.hashCode(this.f11111h) * 31)) * 31, 31), 31), 31), 31), 31), 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionData(timestamp=");
        sbC.append(this.f11111h);
        sbC.append(", footStrikeType=");
        sbC.append(d1.c.d(this.f11112i));
        sbC.append(", impact=");
        sbC.append(this.f11113j);
        sbC.append(", impulse=");
        sbC.append(this.f11114k);
        sbC.append(", contactTime=");
        sbC.append(this.f11115l);
        sbC.append(", swingTime=");
        sbC.append(this.f11116m);
        sbC.append(", stepSpeed=");
        sbC.append(this.f11117n);
        sbC.append(", stepLength=");
        sbC.append(this.f11118o);
        sbC.append(", stepClassification=");
        sbC.append(androidx.appcompat.widget.e0.h(this.f11119p));
        sbC.append(", loadingRate=");
        return a0.b.b(sbC, this.f11120q, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f11111h);
        parcel.writeString(d1.c.c(this.f11112i));
        parcel.writeInt(this.f11113j);
        parcel.writeInt(this.f11114k);
        parcel.writeInt(this.f11115l);
        parcel.writeInt(this.f11116m);
        parcel.writeInt(this.f11117n);
        parcel.writeInt(this.f11118o);
        parcel.writeString(androidx.appcompat.widget.e0.f(this.f11119p));
        parcel.writeInt(this.f11120q);
    }
}
