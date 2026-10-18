package a8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("stateStats")
    public final k f532h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("bleStats")
    public final b f533i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @f7.b("wakeupStats")
    public final m f534j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @f7.b("currentStats")
    public final c f535k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @f7.b("gestureStats")
    public final e f536l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @f7.b("servoStats")
    public final g f537m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @f7.b("batteryStats")
    public final a8.a f538n;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        public final l createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l(k.CREATOR.createFromParcel(parcel), b.CREATOR.createFromParcel(parcel), m.CREATOR.createFromParcel(parcel), c.CREATOR.createFromParcel(parcel), e.CREATOR.createFromParcel(parcel), g.CREATOR.createFromParcel(parcel), a8.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final l[] newArray(int i10) {
            return new l[i10];
        }
    }

    public l(k kVar, b bVar, m mVar, c cVar, e eVar, g gVar, a8.a aVar) {
        p4.h.j(kVar, "stateStats");
        p4.h.j(bVar, "bleStats");
        p4.h.j(mVar, "wakeupStats");
        p4.h.j(cVar, "currentStats");
        p4.h.j(eVar, "gestureStats");
        p4.h.j(gVar, "servoStats");
        p4.h.j(aVar, "batteryStats");
        this.f532h = kVar;
        this.f533i = bVar;
        this.f534j = mVar;
        this.f535k = cVar;
        this.f536l = eVar;
        this.f537m = gVar;
        this.f538n = aVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return p4.h.c(this.f532h, lVar.f532h) && p4.h.c(this.f533i, lVar.f533i) && p4.h.c(this.f534j, lVar.f534j) && p4.h.c(this.f535k, lVar.f535k) && p4.h.c(this.f536l, lVar.f536l) && p4.h.c(this.f537m, lVar.f537m) && p4.h.c(this.f538n, lVar.f538n);
    }

    public final int hashCode() {
        return this.f538n.hashCode() + ((this.f537m.hashCode() + ((this.f536l.hashCode() + ((this.f535k.hashCode() + ((this.f534j.hashCode() + ((this.f533i.hashCode() + (this.f532h.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Stats(stateStats=" + this.f532h + ", bleStats=" + this.f533i + ", wakeupStats=" + this.f534j + ", currentStats=" + this.f535k + ", gestureStats=" + this.f536l + ", servoStats=" + this.f537m + ", batteryStats=" + this.f538n + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f532h.writeToParcel(parcel, i10);
        this.f533i.writeToParcel(parcel, i10);
        this.f534j.writeToParcel(parcel, i10);
        this.f535k.writeToParcel(parcel, i10);
        this.f536l.writeToParcel(parcel, i10);
        this.f537m.writeToParcel(parcel, i10);
        this.f538n.writeToParcel(parcel, i10);
    }
}
