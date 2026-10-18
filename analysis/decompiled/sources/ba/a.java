package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0059a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ea.d f3608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d f3609i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s f3610j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3611k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b f3612l;

    /* JADX INFO: renamed from: ba.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitAnimation.kt */
    public static final class C0059a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a(ea.d.CREATOR.createFromParcel(parcel), d.CREATOR.createFromParcel(parcel), s.CREATOR.createFromParcel(parcel), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    static {
        s sVar = new s(0);
        ea.d.a aVar = ea.d.f6620m;
        new a(ea.d.f6621n, new d(new f0(0), new t(0), new e0(80), new u(0), new d0(170)), sVar, 12);
    }

    public a(ea.d dVar, d dVar2, s sVar, int i10) {
        p4.h.j(dVar, "adaptKitDeviceColor");
        p4.h.j(dVar2, "animationDetails");
        p4.h.j(sVar, "duration");
        this.f3608h = dVar;
        this.f3609i = dVar2;
        this.f3610j = sVar;
        this.f3611k = i10;
        this.f3612l = new b(new g0(dVar.f6622h), new x(dVar.f6623i), new o(dVar.f6624j));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f3608h, aVar.f3608h) && p4.h.c(this.f3609i, aVar.f3609i) && p4.h.c(this.f3610j, aVar.f3610j) && this.f3611k == aVar.f3611k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3611k) + ((this.f3610j.hashCode() + ((this.f3609i.hashCode() + (this.f3608h.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdaptKitAnimation(adaptKitDeviceColor=" + this.f3608h + ", animationDetails=" + this.f3609i + ", duration=" + this.f3610j + ", id=" + this.f3611k + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f3608h.writeToParcel(parcel, i10);
        this.f3609i.writeToParcel(parcel, i10);
        this.f3610j.writeToParcel(parcel, i10);
        parcel.writeInt(this.f3611k);
    }
}
