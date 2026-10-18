package ea;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitPairedDevicesResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x extends p {
    public static final Parcelable.Creator<x> CREATOR = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final v9.a f6703j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List<m> f6704k;

    /* JADX INFO: compiled from: AdaptKitPairedDevicesResult.kt */
    public static final class a implements Parcelable.Creator<x> {
        @Override // android.os.Parcelable.Creator
        public final x createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            v9.a aVarCreateFromParcel = v9.a.CREATOR.createFromParcel(parcel);
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            int iC = 0;
            while (iC != i10) {
                iC = com.nike.adapt.adk.model.a.c(m.CREATOR, parcel, arrayList, iC, 1);
            }
            return new x(aVarCreateFromParcel, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final x[] newArray(int i10) {
            return new x[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(v9.a aVar, List<m> list) {
        super(aVar, list, null);
        p4.h.j(aVar, "adaptIdentifier");
        this.f6703j = aVar;
        this.f6704k = list;
    }

    @Override // ea.p
    public final v9.a a() {
        return this.f6703j;
    }

    @Override // ea.p
    public final List<m> b() {
        return this.f6704k;
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
        return p4.h.c(this.f6703j, xVar.f6703j) && p4.h.c(this.f6704k, xVar.f6704k);
    }

    public final int hashCode() {
        return this.f6704k.hashCode() + (this.f6703j.hashCode() * 31);
    }

    public final String toString() {
        return "RetrievedRemotely(adaptIdentifier=" + this.f6703j + ", devices=" + this.f6704k + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6703j.writeToParcel(parcel, i10);
        Iterator itD = ca.a.d(this.f6704k, parcel);
        while (itD.hasNext()) {
            ((m) itD.next()).writeToParcel(parcel, i10);
        }
    }
}
