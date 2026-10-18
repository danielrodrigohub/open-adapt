package ea;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Map;

/* JADX INFO: compiled from: AdaptKitLacingPosition.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Parcelable, eb.d {
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final h.c f6648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h.a f6649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6650j;

    /* JADX INFO: compiled from: AdaptKitLacingPosition.kt */
    public static final class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i(h.c.CREATOR.createFromParcel(parcel), h.a.CREATOR.createFromParcel(parcel), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(h.c cVar, h.a aVar, int i10) {
        p4.h.j(cVar, "relative");
        p4.h.j(aVar, "absolute");
        this.f6648h = cVar;
        this.f6649i = aVar;
        this.f6650j = i10;
    }

    @Override // eb.d
    public final String b() {
        int i10 = this.f6648h.f6647j;
        int i11 = this.f6649i.f6646j;
        return androidx.recyclerview.widget.s.a(androidx.recyclerview.widget.s.b("lacePosition: [relative: ", i10, ", absolute: ", i11, ", maxTightness: "), this.f6650j, "]");
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
        return p4.h.c(this.f6648h, iVar.f6648h) && p4.h.c(this.f6649i, iVar.f6649i) && this.f6650j == iVar.f6650j;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f6650j) + ((this.f6649i.hashCode() + (this.f6648h.hashCode() * 31)) * 31);
    }

    @Override // eb.d
    public final Map<String, Object> m() {
        return gd.q.f8071h;
    }

    public final String toString() {
        h.c cVar = this.f6648h;
        h.a aVar = this.f6649i;
        int i10 = this.f6650j;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptKitLacingPosition(relative=");
        sb2.append(cVar);
        sb2.append(", absolute=");
        sb2.append(aVar);
        sb2.append(", maxTightness=");
        return androidx.recyclerview.widget.s.a(sb2, i10, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6648h.writeToParcel(parcel, i10);
        this.f6649i.writeToParcel(parcel, i10);
        parcel.writeInt(this.f6650j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public i(h.c cVar, int i10) {
        int i11 = 0;
        int iL = i10 > 0 ? f1.b.l((cVar.f6647j / 100.0f) * i10) : 0;
        if (iL > 100) {
            i11 = 100;
        } else if (iL >= 0) {
            i11 = iL;
        }
        this(cVar, new h.a(i11), i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public i(h.a aVar, int i10) {
        int iL;
        if (i10 == 0) {
            iL = f1.b.l((aVar.f6646j / 1) * 100);
        } else {
            iL = f1.b.l((aVar.f6646j / i10) * 100);
        }
        if (iL < 1) {
            iL = 0;
        } else {
            float f10 = 100;
            float f11 = i10;
            if ((iL / f10) * f11 > 100.0f) {
                iL = f1.b.l((100.0f / f11) * f10);
            }
        }
        this(new h.c(iL), aVar, i10);
    }
}
