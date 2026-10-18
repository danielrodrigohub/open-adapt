package a8;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("bleWakeupCt")
    public final int f539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("capsenseWakeupCt")
    public final int f540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @f7.b("chargerWakeupCt")
    public final int f541j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @f7.b("buttonWakeupCt")
    public final int f542k;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<m> {
        @Override // android.os.Parcelable.Creator
        public final m createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new m(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    }

    public m(int i10, int i11, int i12, int i13) {
        this.f539h = i10;
        this.f540i = i11;
        this.f541j = i12;
        this.f542k = i13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f539h == mVar.f539h && this.f540i == mVar.f540i && this.f541j == mVar.f541j && this.f542k == mVar.f542k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f542k) + r0.e(this.f541j, r0.e(this.f540i, Integer.hashCode(this.f539h) * 31, 31), 31);
    }

    public final String toString() {
        int i10 = this.f539h;
        int i11 = this.f540i;
        int i12 = this.f541j;
        int i13 = this.f542k;
        StringBuilder sbB = s.b("WakeUpStats(bleWakeupCt=", i10, ", capsenseWakeupCt=", i11, ", chargerWakeupCt=");
        sbB.append(i12);
        sbB.append(", buttonWakeupCt=");
        sbB.append(i13);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f539h);
        parcel.writeInt(this.f540i);
        parcel.writeInt(this.f541j);
        parcel.writeInt(this.f542k);
    }
}
