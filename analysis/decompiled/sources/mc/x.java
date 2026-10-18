package mc;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: SessionData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x implements Parcelable {
    public static final Parcelable.Creator<x> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f11106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List<y> f11107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List<w> f11108k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<c0> f11109l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<d0> f11110m;

    /* JADX INFO: compiled from: SessionData.kt */
    public static final class a implements Parcelable.Creator<x> {
        @Override // android.os.Parcelable.Creator
        public final x createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            int i10 = parcel.readInt();
            long j10 = parcel.readLong();
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            int iC = 0;
            int iC2 = 0;
            while (iC2 != i11) {
                iC2 = com.nike.adapt.adk.model.a.c(y.CREATOR, parcel, arrayList, iC2, 1);
            }
            int i12 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i12);
            int iC3 = 0;
            while (iC3 != i12) {
                iC3 = com.nike.adapt.adk.model.a.c(w.CREATOR, parcel, arrayList2, iC3, 1);
            }
            int i13 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList(i13);
            int iC4 = 0;
            while (iC4 != i13) {
                iC4 = com.nike.adapt.adk.model.a.c(c0.CREATOR, parcel, arrayList3, iC4, 1);
            }
            int i14 = parcel.readInt();
            ArrayList arrayList4 = new ArrayList(i14);
            while (iC != i14) {
                iC = com.nike.adapt.adk.model.a.c(d0.CREATOR, parcel, arrayList4, iC, 1);
            }
            return new x(i10, j10, arrayList, arrayList2, arrayList3, arrayList4);
        }

        @Override // android.os.Parcelable.Creator
        public final x[] newArray(int i10) {
            return new x[i10];
        }
    }

    public x(int i10, long j10, List<y> list, List<w> list2, List<c0> list3, List<d0> list4) {
        this.f11105h = i10;
        this.f11106i = j10;
        this.f11107j = list;
        this.f11108k = list2;
        this.f11109l = list3;
        this.f11110m = list4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.f11105h == xVar.f11105h && this.f11106i == xVar.f11106i && p4.h.c(this.f11107j, xVar.f11107j) && p4.h.c(this.f11108k, xVar.f11108k) && p4.h.c(this.f11109l, xVar.f11109l) && p4.h.c(this.f11110m, xVar.f11110m);
    }

    public final int hashCode() {
        return this.f11110m.hashCode() + a4.g.d(this.f11109l, a4.g.d(this.f11108k, a4.g.d(this.f11107j, (Long.hashCode(this.f11106i) + (Integer.hashCode(this.f11105h) * 31)) * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionCompleted(sessionId=");
        sbC.append(this.f11105h);
        sbC.append(", startTime=");
        sbC.append(this.f11106i);
        sbC.append(", stepsMetrics=");
        sbC.append(this.f11107j);
        sbC.append(", capSenseData=");
        sbC.append(this.f11108k);
        sbC.append(", memsData=");
        sbC.append(this.f11109l);
        sbC.append(", temperatureData=");
        sbC.append(this.f11110m);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11105h);
        parcel.writeLong(this.f11106i);
        Iterator itD = ca.a.d(this.f11107j, parcel);
        while (itD.hasNext()) {
            ((y) itD.next()).writeToParcel(parcel, i10);
        }
        Iterator itD2 = ca.a.d(this.f11108k, parcel);
        while (itD2.hasNext()) {
            ((w) itD2.next()).writeToParcel(parcel, i10);
        }
        Iterator itD3 = ca.a.d(this.f11109l, parcel);
        while (itD3.hasNext()) {
            ((c0) itD3.next()).writeToParcel(parcel, i10);
        }
        Iterator itD4 = ca.a.d(this.f11110m, parcel);
        while (itD4.hasNext()) {
            ((d0) itD4.next()).writeToParcel(parcel, i10);
        }
    }
}
