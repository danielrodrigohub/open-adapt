package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: BigfootStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f11011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final g f11012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final i f11013j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final u f11014k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final f0 f11015l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final i0 f11016m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final q f11017n;

    /* JADX INFO: compiled from: BigfootStats.kt */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f(d.CREATOR.createFromParcel(parcel), g.CREATOR.createFromParcel(parcel), i.CREATOR.createFromParcel(parcel), u.CREATOR.createFromParcel(parcel), f0.CREATOR.createFromParcel(parcel), i0.CREATOR.createFromParcel(parcel), q.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(d dVar, g gVar, i iVar, u uVar, f0 f0Var, i0 i0Var, q qVar) {
        p4.h.j(dVar, "batteryStats");
        p4.h.j(gVar, "bleStats");
        p4.h.j(iVar, "currentStats");
        p4.h.j(uVar, "servoStats");
        p4.h.j(f0Var, "stateStats");
        p4.h.j(i0Var, "wakeupStats");
        p4.h.j(qVar, "gestureStats");
        this.f11011h = dVar;
        this.f11012i = gVar;
        this.f11013j = iVar;
        this.f11014k = uVar;
        this.f11015l = f0Var;
        this.f11016m = i0Var;
        this.f11017n = qVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return p4.h.c(this.f11011h, fVar.f11011h) && p4.h.c(this.f11012i, fVar.f11012i) && p4.h.c(this.f11013j, fVar.f11013j) && p4.h.c(this.f11014k, fVar.f11014k) && p4.h.c(this.f11015l, fVar.f11015l) && p4.h.c(this.f11016m, fVar.f11016m) && p4.h.c(this.f11017n, fVar.f11017n);
    }

    public final int hashCode() {
        return this.f11017n.hashCode() + ((this.f11016m.hashCode() + ((this.f11015l.hashCode() + ((this.f11014k.hashCode() + ((this.f11013j.hashCode() + ((this.f11012i.hashCode() + (this.f11011h.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BigfootStats(batteryStats=");
        sbC.append(this.f11011h);
        sbC.append(", bleStats=");
        sbC.append(this.f11012i);
        sbC.append(", currentStats=");
        sbC.append(this.f11013j);
        sbC.append(", servoStats=");
        sbC.append(this.f11014k);
        sbC.append(", stateStats=");
        sbC.append(this.f11015l);
        sbC.append(", wakeupStats=");
        sbC.append(this.f11016m);
        sbC.append(", gestureStats=");
        sbC.append(this.f11017n);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f11011h.writeToParcel(parcel, i10);
        this.f11012i.writeToParcel(parcel, i10);
        this.f11013j.writeToParcel(parcel, i10);
        this.f11014k.writeToParcel(parcel, i10);
        this.f11015l.writeToParcel(parcel, i10);
        this.f11016m.writeToParcel(parcel, i10);
        this.f11017n.writeToParcel(parcel, i10);
    }
}
