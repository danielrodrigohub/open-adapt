package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.y0;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: UserAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11025h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11026i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11027j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11028k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f11029l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f11024m = new a();
    public static final Parcelable.Creator<g0> CREATOR = new b();

    /* JADX INFO: compiled from: UserAnimation.kt */
    public static final class a {
        public final g0 a(gc.j0 j0Var) {
            int i10;
            int iY = j0Var.y();
            int iB = j0Var.B();
            int iOrdinal = j0Var.A().ordinal();
            int i11 = 5;
            if (iOrdinal == 0) {
                i10 = 1;
            } else if (iOrdinal == 1) {
                i10 = 2;
            } else if (iOrdinal == 2) {
                i10 = 3;
            } else if (iOrdinal == 3) {
                i10 = 4;
            } else {
                if (iOrdinal != 4) {
                    throw new j2.a();
                }
                i10 = 5;
            }
            int iOrdinal2 = j0Var.z().ordinal();
            if (iOrdinal2 == 0) {
                i11 = 1;
            } else if (iOrdinal2 == 1) {
                i11 = 2;
            } else if (iOrdinal2 == 2) {
                i11 = 3;
            } else if (iOrdinal2 == 3) {
                i11 = 4;
            } else if (iOrdinal2 != 4) {
                if (iOrdinal2 != 5) {
                    throw new j2.a();
                }
                i11 = 6;
            }
            return new g0(iY, iB, i10, i11);
        }
    }

    /* JADX INFO: compiled from: UserAnimation.kt */
    public static final class b implements Parcelable.Creator<g0> {
        @Override // android.os.Parcelable.Creator
        public final g0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g0(parcel.readInt(), parcel.readInt(), y0.h(parcel.readString()), ed.c.g(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final g0[] newArray(int i10) {
            return new g0[i10];
        }
    }

    public g0(int i10, int i11, int i12, int i13) {
        androidx.appcompat.widget.o.d(i12, "runningState");
        androidx.appcompat.widget.o.d(i13, "endingState");
        this.f11025h = i10;
        this.f11026i = i11;
        this.f11027j = i12;
        this.f11028k = i13;
        boolean z10 = true;
        if (i12 != 1 && i12 != 3) {
            z10 = false;
        }
        this.f11029l = z10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.f11025h == g0Var.f11025h && this.f11026i == g0Var.f11026i && this.f11027j == g0Var.f11027j && this.f11028k == g0Var.f11028k;
    }

    public final int hashCode() {
        return q.g.a(this.f11028k) + ((q.g.a(this.f11027j) + r0.e(this.f11026i, Integer.hashCode(this.f11025h) * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("UserAnimation(id=");
        sbC.append(this.f11025h);
        sbC.append(", secondsRemaining=");
        sbC.append(this.f11026i);
        sbC.append(", runningState=");
        sbC.append(y0.f(this.f11027j));
        sbC.append(", endingState=");
        sbC.append(ed.c.d(this.f11028k));
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11025h);
        parcel.writeInt(this.f11026i);
        parcel.writeString(y0.e(this.f11027j));
        parcel.writeString(ed.c.b(this.f11028k));
    }
}
