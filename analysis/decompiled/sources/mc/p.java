package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: Gesture.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p implements Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f11082h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f11083i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final n f11084j;

    /* JADX INFO: compiled from: Gesture.kt */
    public static final class a implements Parcelable.Creator<p> {
        @Override // android.os.Parcelable.Creator
        public final p createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new p(parcel.readLong(), parcel.readInt() != 0, n.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final p[] newArray(int i10) {
            return new p[i10];
        }
    }

    public p(long j10, boolean z10, n nVar) {
        p4.h.j(nVar, "configuration");
        this.f11082h = j10;
        this.f11083i = z10;
        this.f11084j = nVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f11082h == pVar.f11082h && this.f11083i == pVar.f11083i && p4.h.c(this.f11084j, pVar.f11084j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public final int hashCode() {
        int iHashCode = Long.hashCode(this.f11082h) * 31;
        boolean z10 = this.f11083i;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return this.f11084j.hashCode() + ((iHashCode + r10) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("GestureNotification(timestamp=");
        sbC.append(this.f11082h);
        sbC.append(", value=");
        sbC.append(this.f11083i);
        sbC.append(", configuration=");
        sbC.append(this.f11084j);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f11082h);
        parcel.writeInt(this.f11083i ? 1 : 0);
        this.f11084j.writeToParcel(parcel, i10);
    }
}
