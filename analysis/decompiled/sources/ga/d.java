package ga;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.s;
import gd.q;
import java.util.Map;
import p4.h;

/* JADX INFO: compiled from: AdaptKitGestureStatistics.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable, eb.d {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7926h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f7927i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7928j;

    /* JADX INFO: compiled from: AdaptKitGestureStatistics.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new d(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(int i10, int i11) {
        this.f7926h = i10;
        this.f7927i = i11;
        this.f7928j = i10 + i11;
    }

    @Override // eb.d
    public final String b() {
        int i10 = this.f7926h;
        int i11 = this.f7927i;
        int i12 = this.f7928j;
        StringBuilder sbB = s.b("counts: invalid ", i10, " valid ", i11, " doubleTaps ");
        sbB.append(i12);
        return sbB.toString();
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
        return this.f7926h == dVar.f7926h && this.f7927i == dVar.f7927i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f7927i) + (Integer.hashCode(this.f7926h) * 31);
    }

    @Override // eb.d
    public final Map<String, Object> m() {
        return q.f8071h;
    }

    public final String toString() {
        return "AdaptKitGestureStatistics(invalidGestures=" + this.f7926h + ", validGestures=" + this.f7927i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.f7926h);
        parcel.writeInt(this.f7927i);
    }
}
