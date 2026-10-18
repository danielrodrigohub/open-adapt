package v7;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: OnBoarding.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends j {
    public static final Parcelable.Creator<a> CREATOR = new C0293a();

    /* JADX INFO: renamed from: v7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OnBoarding.kt */
    public static final class C0293a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return new a();
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* JADX INFO: compiled from: OnBoarding.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f16362a;

        static {
            int[] iArr = new int[g.values().length];
            iArr[4] = 1;
            iArr[5] = 2;
            iArr[6] = 3;
            iArr[7] = 4;
            iArr[8] = 5;
            iArr[9] = 6;
            iArr[11] = 7;
            f16362a = iArr;
        }
    }

    public a() {
        c(g.MY_SHOES);
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
        g gVar = g.MY_SHOES;
        g gVar2 = this.f16418j;
        switch (gVar2 == null ? -1 : b.f16362a[gVar2.ordinal()]) {
            case 1:
            case 2:
            case 3:
                iD = this.f16416h.d(this.f16418j);
                iD2 = this.f16416h.d(gVar);
                break;
            case 4:
                return 1;
            case 5:
                return 0;
            case 6:
                return -1;
            case 7:
                iD = this.f16416h.d(this.f16418j);
                iD2 = this.f16416h.d(gVar);
                break;
            default:
                return -50;
        }
        return (-1) * (iD - iD2);
    }

    @Override // v7.j
    public final int b() {
        return 1;
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
