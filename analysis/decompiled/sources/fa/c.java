package fa;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: compiled from: AdaptKitFirmwareUpdate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fb.c f7134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n f7135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final k f7136j;

    /* JADX INFO: compiled from: AdaptKitFirmwareUpdate.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c(fb.c.CREATOR.createFromParcel(parcel), (n) parcel.readParcelable(c.class.getClassLoader()), (k) parcel.readParcelable(c.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(fb.c cVar, n nVar, k kVar) {
        p4.h.j(cVar, "currentFirmwareVersion");
        p4.h.j(nVar, "updatingToFirmwareVersion");
        p4.h.j(kVar, "state");
        this.f7134h = cVar;
        this.f7135i = nVar;
        this.f7136j = kVar;
    }

    public static c a(c cVar, fb.c cVar2, n nVar, k kVar, int i10) {
        if ((i10 & 1) != 0) {
            cVar2 = cVar.f7134h;
        }
        if ((i10 & 2) != 0) {
            nVar = cVar.f7135i;
        }
        if ((i10 & 4) != 0) {
            kVar = cVar.f7136j;
        }
        Objects.requireNonNull(cVar);
        p4.h.j(cVar2, "currentFirmwareVersion");
        p4.h.j(nVar, "updatingToFirmwareVersion");
        p4.h.j(kVar, "state");
        return new c(cVar2, nVar, kVar);
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
        return p4.h.c(this.f7134h, cVar.f7134h) && p4.h.c(this.f7135i, cVar.f7135i) && p4.h.c(this.f7136j, cVar.f7136j);
    }

    public final int hashCode() {
        return this.f7136j.hashCode() + ((this.f7135i.hashCode() + (this.f7134h.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "AdaptKitFirmwareUpdate(currentFirmwareVersion=" + this.f7134h + ", updatingToFirmwareVersion=" + this.f7135i + ", state=" + this.f7136j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f7134h.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.f7135i, i10);
        parcel.writeParcelable(this.f7136j, i10);
    }
}
