package la;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitSession.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0198a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f10185h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f10186i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List<i> f10187j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List<f> f10188k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<h> f10189l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<d> f10190m;

    /* JADX INFO: renamed from: la.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitSession.kt */
    public static final class C0198a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            b bVarCreateFromParcel = b.CREATOR.createFromParcel(parcel);
            long j10 = parcel.readLong();
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            int iC = 0;
            int iC2 = 0;
            while (iC2 != i10) {
                iC2 = com.nike.adapt.adk.model.a.c(i.CREATOR, parcel, arrayList, iC2, 1);
            }
            int i11 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i11);
            int iC3 = 0;
            while (iC3 != i11) {
                iC3 = com.nike.adapt.adk.model.a.c(f.CREATOR, parcel, arrayList2, iC3, 1);
            }
            int i12 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList(i12);
            int iC4 = 0;
            while (iC4 != i12) {
                iC4 = com.nike.adapt.adk.model.a.c(h.CREATOR, parcel, arrayList3, iC4, 1);
            }
            int i13 = parcel.readInt();
            ArrayList arrayList4 = new ArrayList(i13);
            while (iC != i13) {
                iC = com.nike.adapt.adk.model.a.c(d.CREATOR, parcel, arrayList4, iC, 1);
            }
            return new a(bVarCreateFromParcel, j10, arrayList, arrayList2, arrayList3, arrayList4);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(b bVar, long j10, List<i> list, List<f> list2, List<h> list3, List<d> list4) {
        p4.h.j(bVar, "sessionId");
        this.f10185h = bVar;
        this.f10186i = j10;
        this.f10187j = list;
        this.f10188k = list2;
        this.f10189l = list3;
        this.f10190m = list4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f10185h, aVar.f10185h) && this.f10186i == aVar.f10186i && p4.h.c(this.f10187j, aVar.f10187j) && p4.h.c(this.f10188k, aVar.f10188k) && p4.h.c(this.f10189l, aVar.f10189l) && p4.h.c(this.f10190m, aVar.f10190m);
    }

    public final int hashCode() {
        return this.f10190m.hashCode() + a4.g.d(this.f10189l, a4.g.d(this.f10188k, a4.g.d(this.f10187j, (Long.hashCode(this.f10186i) + (this.f10185h.hashCode() * 31)) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "AdaptKitSession(sessionId=" + this.f10185h + ", startTime=" + this.f10186i + ", stepData=" + this.f10187j + ", capsenseData=" + this.f10188k + ", memsData=" + this.f10189l + ", temperatureData=" + this.f10190m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f10185h.writeToParcel(parcel, i10);
        parcel.writeLong(this.f10186i);
        Iterator itD = ca.a.d(this.f10187j, parcel);
        while (itD.hasNext()) {
            ((i) itD.next()).writeToParcel(parcel, i10);
        }
        Iterator itD2 = ca.a.d(this.f10188k, parcel);
        while (itD2.hasNext()) {
            ((f) itD2.next()).writeToParcel(parcel, i10);
        }
        Iterator itD3 = ca.a.d(this.f10189l, parcel);
        while (itD3.hasNext()) {
            ((h) itD3.next()).writeToParcel(parcel, i10);
        }
        Iterator itD4 = ca.a.d(this.f10190m, parcel);
        while (itD4.hasNext()) {
            ((d) itD4.next()).writeToParcel(parcel, i10);
        }
    }
}
