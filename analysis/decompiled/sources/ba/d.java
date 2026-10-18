package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f0 f3624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final t f3625i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e0 f3626j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final u f3627k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final d0 f3628l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final h0 f3629m;

    /* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d(f0.CREATOR.createFromParcel(parcel), t.CREATOR.createFromParcel(parcel), e0.CREATOR.createFromParcel(parcel), u.CREATOR.createFromParcel(parcel), d0.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(f0 f0Var, t tVar, e0 e0Var, u uVar, d0 d0Var) {
        p4.h.j(f0Var, "prequel");
        p4.h.j(tVar, "enter");
        p4.h.j(e0Var, "on");
        p4.h.j(uVar, "exit");
        p4.h.j(d0Var, "off");
        this.f3624h = f0Var;
        this.f3625i = tVar;
        this.f3626j = e0Var;
        this.f3627k = uVar;
        this.f3628l = d0Var;
        this.f3629m = new h0(0);
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
        return p4.h.c(this.f3624h, dVar.f3624h) && p4.h.c(this.f3625i, dVar.f3625i) && p4.h.c(this.f3626j, dVar.f3626j) && p4.h.c(this.f3627k, dVar.f3627k) && p4.h.c(this.f3628l, dVar.f3628l);
    }

    public final int hashCode() {
        return this.f3628l.hashCode() + ((this.f3627k.hashCode() + ((this.f3626j.hashCode() + ((this.f3625i.hashCode() + (this.f3624h.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdaptKitAnimationSequence(prequel=" + this.f3624h + ", enter=" + this.f3625i + ", on=" + this.f3626j + ", exit=" + this.f3627k + ", off=" + this.f3628l + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f3624h.writeToParcel(parcel, i10);
        this.f3625i.writeToParcel(parcel, i10);
        this.f3626j.writeToParcel(parcel, i10);
        this.f3627k.writeToParcel(parcel, i10);
        this.f3628l.writeToParcel(parcel, i10);
    }
}
