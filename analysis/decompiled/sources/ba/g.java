package ba;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: AdaptKitCurrentAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3658h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3659i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d f3660j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final c f3661k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f3657l = new a();
    public static final Parcelable.Creator<g> CREATOR = new b();

    /* JADX INFO: compiled from: AdaptKitCurrentAnimation.kt */
    public static final class a {
        public final g a(mc.j jVar) {
            d dVar;
            c cVar;
            p4.h.j(jVar, "animation");
            int i10 = jVar.f11045h;
            int i11 = jVar.f11046i / 1000;
            int i12 = jVar.f11047j;
            androidx.appcompat.widget.o.d(i12, "state");
            int iA = q.g.a(i12);
            if (iA == 0) {
                dVar = d.RUNNING;
            } else if (iA == 1) {
                dVar = d.STOPPED;
            } else if (iA == 2) {
                dVar = d.QUEUED;
            } else if (iA == 3) {
                dVar = d.INTERRUPTED;
            } else {
                if (iA != 4) {
                    throw new j2.a();
                }
                dVar = d.UNRECOGNIZED;
            }
            int i13 = jVar.f11048k;
            androidx.appcompat.widget.o.d(i13, "endStatus");
            int iA2 = q.g.a(i13);
            if (iA2 == 0) {
                cVar = c.NOT_SET;
            } else if (iA2 == 1) {
                cVar = c.TIMEOUT;
            } else if (iA2 == 2) {
                cVar = c.CANCELED;
            } else if (iA2 == 3) {
                cVar = c.BATTERY_OVERTEMP;
            } else if (iA2 == 4) {
                cVar = c.CRITICAL_BATTERY;
            } else {
                if (iA2 != 5) {
                    throw new j2.a();
                }
                cVar = c.UNRECOGNIZED;
            }
            return new g(i10, i11, dVar, cVar);
        }

        public final g b(mc.g0 g0Var) {
            d dVar;
            c cVar;
            p4.h.j(g0Var, "animation");
            int i10 = g0Var.f11025h;
            int i11 = g0Var.f11026i;
            int i12 = g0Var.f11027j;
            androidx.appcompat.widget.o.d(i12, "runningState");
            int iA = q.g.a(i12);
            if (iA == 0) {
                dVar = d.RUNNING;
            } else if (iA == 1) {
                dVar = d.STOPPED;
            } else if (iA == 2) {
                dVar = d.QUEUED;
            } else if (iA == 3) {
                dVar = d.INTERRUPTED;
            } else {
                if (iA != 4) {
                    throw new j2.a();
                }
                dVar = d.UNRECOGNIZED;
            }
            int i13 = g0Var.f11028k;
            androidx.appcompat.widget.o.d(i13, "endStatus");
            int iA2 = q.g.a(i13);
            if (iA2 == 0) {
                cVar = c.NOT_SET;
            } else if (iA2 == 1) {
                cVar = c.TIMEOUT;
            } else if (iA2 == 2) {
                cVar = c.CANCELED;
            } else if (iA2 == 3) {
                cVar = c.BATTERY_OVERTEMP;
            } else if (iA2 == 4) {
                cVar = c.CRITICAL_BATTERY;
            } else {
                if (iA2 != 5) {
                    throw new j2.a();
                }
                cVar = c.UNRECOGNIZED;
            }
            return new g(i10, i11, dVar, cVar);
        }
    }

    /* JADX INFO: compiled from: AdaptKitCurrentAnimation.kt */
    public static final class b implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g(parcel.readInt(), parcel.readInt(), d.valueOf(parcel.readString()), c.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    /* JADX INFO: compiled from: AdaptKitCurrentAnimation.kt */
    public enum c {
        NOT_SET,
        TIMEOUT,
        CANCELED,
        BATTERY_OVERTEMP,
        CRITICAL_BATTERY,
        UNRECOGNIZED
    }

    /* JADX INFO: compiled from: AdaptKitCurrentAnimation.kt */
    public enum d {
        RUNNING,
        STOPPED,
        QUEUED,
        INTERRUPTED,
        UNRECOGNIZED
    }

    public g(int i10, int i11, d dVar, c cVar) {
        p4.h.j(dVar, "runningState");
        p4.h.j(cVar, "endingState");
        this.f3658h = i10;
        this.f3659i = i11;
        this.f3660j = dVar;
        this.f3661k = cVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f3658h == gVar.f3658h && this.f3659i == gVar.f3659i && this.f3660j == gVar.f3660j && this.f3661k == gVar.f3661k;
    }

    public final int hashCode() {
        return this.f3661k.hashCode() + ((this.f3660j.hashCode() + r0.e(this.f3659i, Integer.hashCode(this.f3658h) * 31, 31)) * 31);
    }

    public final String toString() {
        int i10 = this.f3658h;
        int i11 = this.f3659i;
        d dVar = this.f3660j;
        c cVar = this.f3661k;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("AdaptKitCurrentAnimation(id=", i10, ", secondsRemaining=", i11, ", runningState=");
        sbB.append(dVar);
        sbB.append(", endingState=");
        sbB.append(cVar);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3658h);
        parcel.writeInt(this.f3659i);
        parcel.writeString(this.f3660j.name());
        parcel.writeString(this.f3661k.name());
    }
}
