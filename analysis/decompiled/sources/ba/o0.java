package ba;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o0 implements Parcelable {
    public static final Parcelable.Creator<o0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3722h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3723i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3724j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3725k;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<o0> {
        @Override // android.os.Parcelable.Creator
        public final o0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o0(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final o0[] newArray(int i10) {
            return new o0[i10];
        }
    }

    public o0(int i10, int i11, int i12, int i13) {
        this.f3722h = i10;
        this.f3723i = i11;
        this.f3724j = i12;
        this.f3725k = i13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return this.f3722h == o0Var.f3722h && this.f3723i == o0Var.f3723i && this.f3724j == o0Var.f3724j && this.f3725k == o0Var.f3725k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3725k) + r0.e(this.f3724j, r0.e(this.f3723i, Integer.hashCode(this.f3722h) * 31, 31), 31);
    }

    public final String toString() {
        int i10 = this.f3722h;
        int i11 = this.f3723i;
        int i12 = this.f3724j;
        int i13 = this.f3725k;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("WakeupStats(bleWakeupCt=", i10, ", buttonWakeupCt=", i11, ", capsenseWakeupCt=");
        sbB.append(i12);
        sbB.append(", chargerWakeupCt=");
        sbB.append(i13);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3722h);
        parcel.writeInt(this.f3723i);
        parcel.writeInt(this.f3724j);
        parcel.writeInt(this.f3725k);
    }
}
