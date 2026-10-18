package ea;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitPairedDevicesResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y extends p {
    public static final Parcelable.Creator<y> CREATOR = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final v9.a f6705j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List<m> f6706k;

    /* JADX INFO: compiled from: AdaptKitPairedDevicesResult.kt */
    public static final class a implements Parcelable.Creator<y> {
        @Override // android.os.Parcelable.Creator
        public final y createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            v9.a aVarCreateFromParcel = v9.a.CREATOR.createFromParcel(parcel);
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            int iC = 0;
            while (iC != i10) {
                iC = com.nike.adapt.adk.model.a.c(m.CREATOR, parcel, arrayList, iC, 1);
            }
            return new y(aVarCreateFromParcel, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final y[] newArray(int i10) {
            return new y[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(v9.a aVar, List<m> list) {
        super(aVar, list, null);
        p4.h.j(aVar, "adaptIdentifier");
        this.f6705j = aVar;
        this.f6706k = list;
    }

    @Override // ea.p
    public final v9.a a() {
        return this.f6705j;
    }

    @Override // ea.p
    public final List<m> b() {
        return this.f6706k;
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
        return p4.h.c(this.f6705j, yVar.f6705j) && p4.h.c(this.f6706k, yVar.f6706k);
    }

    public final int hashCode() {
        return this.f6706k.hashCode() + (this.f6705j.hashCode() * 31);
    }

    public final String toString() {
        return "UpdatedLocally(adaptIdentifier=" + this.f6705j + ", devices=" + this.f6706k + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6705j.writeToParcel(parcel, i10);
        Iterator itD = ca.a.d(this.f6706k, parcel);
        while (itD.hasNext()) {
            ((m) itD.next()).writeToParcel(parcel, i10);
        }
    }
}
