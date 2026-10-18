package la;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.e0;
import androidx.appcompat.widget.o;
import androidx.fragment.app.r0;
import mc.y;

/* JADX INFO: compiled from: SessionStepInformation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10224h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10225i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10226j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10227k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10228l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f10229m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f10230n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f10231o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f10232p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f10233q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f10223r = new a();
    public static final Parcelable.Creator<i> CREATOR = new b();

    /* JADX INFO: compiled from: SessionStepInformation.kt */
    public static final class a {
        public final i a(y yVar, long j10) {
            int i10;
            int i11;
            p4.h.j(yVar, "sessionData");
            long j11 = j10 + yVar.f11111h;
            int i12 = yVar.f11112i;
            o.d(i12, "sessionStrikeType");
            int iA = q.g.a(i12);
            if (iA == 1) {
                i10 = 1;
            } else if (iA != 2) {
                i10 = iA != 3 ? 4 : 3;
            } else {
                i10 = 2;
            }
            int i13 = yVar.f11113j;
            int i14 = yVar.f11114k;
            int i15 = yVar.f11115l;
            int i16 = yVar.f11116m;
            int i17 = yVar.f11117n;
            int i18 = yVar.f11118o;
            int i19 = yVar.f11120q;
            int i20 = yVar.f11119p;
            o.d(i20, "stepClassification");
            int iA2 = q.g.a(i20);
            if (iA2 == 0) {
                i11 = 1;
            } else if (iA2 == 1) {
                i11 = 2;
            } else if (iA2 == 2) {
                i11 = 3;
            } else if (iA2 == 3) {
                i11 = 4;
            } else {
                if (iA2 != 4) {
                    throw new j2.a();
                }
                i11 = 5;
            }
            return new i(j11, i10, i13, i14, i15, i16, i17, i18, i19, i11);
        }
    }

    /* JADX INFO: compiled from: SessionStepInformation.kt */
    public static final class b implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i(parcel.readLong(), k1.a.f(parcel.readString()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), e0.i(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(long j10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        o.d(i10, "footStrikeClassification");
        o.d(i18, "stepClassification");
        this.f10224h = j10;
        this.f10225i = i10;
        this.f10226j = i11;
        this.f10227k = i12;
        this.f10228l = i13;
        this.f10229m = i14;
        this.f10230n = i15;
        this.f10231o = i16;
        this.f10232p = i17;
        this.f10233q = i18;
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
        return this.f10224h == iVar.f10224h && this.f10225i == iVar.f10225i && this.f10226j == iVar.f10226j && this.f10227k == iVar.f10227k && this.f10228l == iVar.f10228l && this.f10229m == iVar.f10229m && this.f10230n == iVar.f10230n && this.f10231o == iVar.f10231o && this.f10232p == iVar.f10232p && this.f10233q == iVar.f10233q;
    }

    public final int hashCode() {
        return q.g.a(this.f10233q) + r0.e(this.f10232p, r0.e(this.f10231o, r0.e(this.f10230n, r0.e(this.f10229m, r0.e(this.f10228l, r0.e(this.f10227k, r0.e(this.f10226j, (q.g.a(this.f10225i) + (Long.hashCode(this.f10224h) * 31)) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        long j10 = this.f10224h;
        int i10 = this.f10225i;
        return "SessionStepInformation(timestamp=" + j10 + ", footStrikeClassification=" + k1.a.d(i10) + ", impactNewton=" + this.f10226j + ", impulseNewtonSec=" + this.f10227k + ", contactTimeMillis=" + this.f10228l + ", swingTimeMillis=" + this.f10229m + ", stepSpeedCmPerSec=" + this.f10230n + ", stepLengthCm=" + this.f10231o + ", loadingRate=" + this.f10232p + ", stepClassification=" + e0.g(this.f10233q) + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f10224h);
        parcel.writeString(k1.a.b(this.f10225i));
        parcel.writeInt(this.f10226j);
        parcel.writeInt(this.f10227k);
        parcel.writeInt(this.f10228l);
        parcel.writeInt(this.f10229m);
        parcel.writeInt(this.f10230n);
        parcel.writeInt(this.f10231o);
        parcel.writeInt(this.f10232p);
        parcel.writeString(e0.e(this.f10233q));
    }
}
