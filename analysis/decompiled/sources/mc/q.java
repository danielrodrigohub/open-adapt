package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: Gesture.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q implements Parcelable {
    public static final Parcelable.Creator<q> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11085h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11086i;

    /* JADX INFO: compiled from: Gesture.kt */
    public static final class a implements Parcelable.Creator<q> {
        @Override // android.os.Parcelable.Creator
        public final q createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final q[] newArray(int i10) {
            return new q[i10];
        }
    }

    public q(int i10, int i11) {
        this.f11085h = i10;
        this.f11086i = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f11085h == qVar.f11085h && this.f11086i == qVar.f11086i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11086i) + (Integer.hashCode(this.f11085h) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("GestureStatistics(totalDoubleTapClassifications=");
        sbC.append(this.f11085h);
        sbC.append(", doubleTapFalsePositives=");
        return a0.b.b(sbC, this.f11086i, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11085h);
        parcel.writeInt(this.f11086i);
    }
}
