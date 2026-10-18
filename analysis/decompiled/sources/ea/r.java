package ea;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitModeResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends l {
    public static final Parcelable.Creator<r> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v9.a f6685h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m f6686i;

    /* JADX INFO: compiled from: AdaptKitModeResult.kt */
    public static final class a implements Parcelable.Creator<r> {
        @Override // android.os.Parcelable.Creator
        public final r createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r(v9.a.CREATOR.createFromParcel(parcel), m.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final r[] newArray(int i10) {
            return new r[i10];
        }
    }

    public r(v9.a aVar, m mVar) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(mVar, "updatedModesInPairedDevice");
        this.f6685h = aVar;
        this.f6686i = mVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return p4.h.c(this.f6685h, rVar.f6685h) && p4.h.c(this.f6686i, rVar.f6686i);
    }

    public final int hashCode() {
        return this.f6686i.hashCode() + (this.f6685h.hashCode() * 31);
    }

    public final String toString() {
        return "ModesUpdatedResult(adaptIdentifier=" + this.f6685h + ", updatedModesInPairedDevice=" + this.f6686i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6685h.writeToParcel(parcel, i10);
        this.f6686i.writeToParcel(parcel, i10);
    }
}
