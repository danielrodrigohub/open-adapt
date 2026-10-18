package fa;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitFirmwareUpdateStates.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c f7137h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f7138i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f7139j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final i f7140k;

    /* JADX INFO: compiled from: AdaptKitFirmwareUpdateStates.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            Parcelable.Creator<c> creator = c.CREATOR;
            return new d(creator.createFromParcel(parcel), creator.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(c cVar, c cVar2) {
        i aVar;
        p4.h.j(cVar, "leftFirmwareUpdate");
        p4.h.j(cVar2, "rightFirmwareUpdate");
        this.f7137h = cVar;
        this.f7138i = cVar2;
        fb.c cVar3 = (fb.c) hd.b.c(cVar.f7134h, cVar2.f7134h);
        n nVar = cVar.f7135i;
        n nVar2 = cVar2.f7135i;
        p4.h.j(nVar, "a");
        p4.h.j(nVar2, "b");
        this.f7139j = new c(cVar3, nVar.compareTo(nVar2) < 0 ? nVar2 : nVar, (k) hd.b.c(cVar.f7136j, cVar2.f7136j));
        k kVar = cVar.f7136j;
        k kVar2 = cVar2.f7136j;
        k kVar3 = (k) hd.b.c(kVar, kVar2);
        switch (kVar3.h()) {
            case CONNECTION_LOST:
                aVar = i.c.f7166h;
                break;
            case BATTERY_TOO_LOW:
                aVar = new i.a(((k.b) kVar3).f7185h);
                break;
            case FAILURE:
                aVar = i.d.f7167h;
                break;
            case NOT_STARTED:
                aVar = i.C0132i.f7173h;
                break;
            case FETCHING_DATA:
                aVar = i.e.f7168h;
                break;
            case IN_PROGRESS:
                p pVar = (p) kVar3;
                aVar = new i.g(pVar.m(), ((kVar instanceof p) && (kVar2 instanceof p)) ? (e) hd.b.c(((p) kVar).w(), ((p) kVar2).w()) : pVar.w());
                break;
            case UPDATING_ERROR:
                aVar = i.d.f7167h;
                break;
            case STAGED_FOR_FLASH:
                aVar = i.f.f7169h;
                break;
            case RECONNECTING:
                aVar = i.j.f7174h;
                break;
            case COMPLETED_FAILURE:
                aVar = i.d.f7167h;
                break;
            case COMPLETED_SUCCESS:
                aVar = i.b.f7165h;
                break;
            case NO_UPDATE_AVAILABLE:
                aVar = i.h.f7172h;
                break;
            default:
                throw new j2.a();
        }
        this.f7140k = aVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return p4.h.c(this.f7137h, dVar.f7137h) && p4.h.c(this.f7138i, dVar.f7138i);
    }

    public final int hashCode() {
        return this.f7138i.hashCode() + (this.f7137h.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptKitFirmwareUpdateStates(leftFirmwareUpdate=" + this.f7137h + ", rightFirmwareUpdate=" + this.f7138i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f7137h.writeToParcel(parcel, i10);
        this.f7138i.writeToParcel(parcel, i10);
    }
}
