package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m f3683h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n f3684i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final r f3685j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final i0 f3686k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final k0 f3687l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final o0 f3688m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final w f3689n;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i(m.CREATOR.createFromParcel(parcel), n.CREATOR.createFromParcel(parcel), r.CREATOR.createFromParcel(parcel), i0.CREATOR.createFromParcel(parcel), k0.CREATOR.createFromParcel(parcel), o0.CREATOR.createFromParcel(parcel), w.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(m mVar, n nVar, r rVar, i0 i0Var, k0 k0Var, o0 o0Var, w wVar) {
        p4.h.j(mVar, "batteryStats");
        p4.h.j(nVar, "bleStats");
        p4.h.j(rVar, "currentStats");
        p4.h.j(i0Var, "servoStats");
        p4.h.j(k0Var, "stateStats");
        p4.h.j(o0Var, "wakeupStats");
        p4.h.j(wVar, "gestureStats");
        this.f3683h = mVar;
        this.f3684i = nVar;
        this.f3685j = rVar;
        this.f3686k = i0Var;
        this.f3687l = k0Var;
        this.f3688m = o0Var;
        this.f3689n = wVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return p4.h.c(this.f3683h, iVar.f3683h) && p4.h.c(this.f3684i, iVar.f3684i) && p4.h.c(this.f3685j, iVar.f3685j) && p4.h.c(this.f3686k, iVar.f3686k) && p4.h.c(this.f3687l, iVar.f3687l) && p4.h.c(this.f3688m, iVar.f3688m) && p4.h.c(this.f3689n, iVar.f3689n);
    }

    public final int hashCode() {
        return this.f3689n.hashCode() + ((this.f3688m.hashCode() + ((this.f3687l.hashCode() + ((this.f3686k.hashCode() + ((this.f3685j.hashCode() + ((this.f3684i.hashCode() + (this.f3683h.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdaptKitLaceEngineStats(batteryStats=" + this.f3683h + ", bleStats=" + this.f3684i + ", currentStats=" + this.f3685j + ", servoStats=" + this.f3686k + ", stateStats=" + this.f3687l + ", wakeupStats=" + this.f3688m + ", gestureStats=" + this.f3689n + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f3683h.writeToParcel(parcel, i10);
        this.f3684i.writeToParcel(parcel, i10);
        this.f3685j.writeToParcel(parcel, i10);
        this.f3686k.writeToParcel(parcel, i10);
        this.f3687l.writeToParcel(parcel, i10);
        this.f3688m.writeToParcel(parcel, i10);
        this.f3689n.writeToParcel(parcel, i10);
    }
}
