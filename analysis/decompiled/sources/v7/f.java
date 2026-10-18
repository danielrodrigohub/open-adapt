package v7;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: OnBoarding.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends j {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final fd.d f16386k = androidx.lifecycle.o.w(3, c.f16388h);

    /* JADX INFO: compiled from: OnBoarding.kt */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return new f();
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    /* JADX INFO: compiled from: OnBoarding.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f16387a;

        static {
            int[] iArr = new int[g.values().length];
            iArr[2] = 1;
            iArr[3] = 2;
            iArr[4] = 3;
            iArr[5] = 4;
            iArr[6] = 5;
            iArr[7] = 6;
            iArr[8] = 7;
            iArr[9] = 8;
            iArr[11] = 9;
            f16387a = iArr;
        }
    }

    /* JADX INFO: compiled from: OnBoarding.kt */
    public static final class c extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f16388h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    public f() {
        c(g.FETCH_PROFILE);
        c(g.WELCOME);
        c(g.PAIR_FIRST_SHOE);
        c(g.CONNECTED_FIRST_SHOE);
        c(g.PAIR_SECOND_SHOE);
        c(g.CONNECTED_SECOND_SHOE);
        c(g.PUT_SHOES_ON);
        c(g.ADAPT_SHOE);
        c(g.COMPLETED);
    }

    @Override // v7.j
    public final int a() {
        int iD;
        int iD2;
        g gVar = g.WELCOME;
        g gVar2 = this.f16418j;
        switch (gVar2 == null ? -1 : b.f16387a[gVar2.ordinal()]) {
            case 1:
            case 8:
                return -1;
            case 2:
            default:
                return -50;
            case 3:
            case 4:
            case 5:
                iD = this.f16416h.d(this.f16418j);
                iD2 = this.f16416h.d(gVar);
                break;
            case 6:
                return 1;
            case 7:
                return 0;
            case 9:
                iD = this.f16416h.d(this.f16418j);
                iD2 = this.f16416h.d(gVar);
                break;
        }
        return (-1) * (iD - iD2);
    }

    @Override // v7.j
    public final int b() {
        if (this.f16418j != g.WELCOME || ((h8.d) this.f16386k.getValue()).b(h8.d.a.LEFT) == null || ((h8.d) this.f16386k.getValue()).b(h8.d.a.RIGHT) == null) {
            return 1;
        }
        return this.f16416h.d(g.PUT_SHOES_ON) - this.f16416h.d(this.f16418j);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(1);
    }
}
