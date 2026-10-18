package ea;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitDeviceAttributes.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f6618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d f6619i;

    /* JADX INFO: compiled from: AdaptKitDeviceAttributes.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c(i.CREATOR.createFromParcel(parcel), d.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(i iVar, d dVar) {
        p4.h.j(iVar, "lacingPosition");
        p4.h.j(dVar, "adaptKitDeviceColor");
        this.f6618h = iVar;
        this.f6619i = dVar;
    }

    public final String a() {
        return "DeviceAttributes[lacePosition: " + this.f6618h + " " + this.f6619i.a() + "]";
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
        return p4.h.c(this.f6618h, cVar.f6618h) && p4.h.c(this.f6619i, cVar.f6619i);
    }

    public final int hashCode() {
        return this.f6619i.hashCode() + (this.f6618h.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptKitDeviceAttributes(lacingPosition=" + this.f6618h + ", adaptKitDeviceColor=" + this.f6619i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6618h.writeToParcel(parcel, i10);
        this.f6619i.writeToParcel(parcel, i10);
    }
}
