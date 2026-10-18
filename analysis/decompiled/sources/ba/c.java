package ba;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitCustomAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3621h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<b> f3622i;

    /* JADX INFO: compiled from: AdaptKitCustomAnimation.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            int i10 = parcel.readInt();
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            int iC = 0;
            while (iC != i11) {
                iC = com.nike.adapt.adk.model.a.c(b.CREATOR, parcel, arrayList, iC, 1);
            }
            return new c(i10, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(int i10, List<b> list) {
        this.f3621h = i10;
        this.f3622i = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f3621h == cVar.f3621h && p4.h.c(this.f3622i, cVar.f3622i);
    }

    public final int hashCode() {
        return this.f3622i.hashCode() + (Integer.hashCode(this.f3621h) * 31);
    }

    public final String toString() {
        return "AdaptKitAnimationFrame(duration=" + this.f3621h + ", leds=" + this.f3622i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3621h);
        Iterator itD = ca.a.d(this.f3622i, parcel);
        while (itD.hasNext()) {
            ((b) itD.next()).writeToParcel(parcel, i10);
        }
    }
}
