package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Parcelable {
    public static final Parcelable.Creator<c0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10980i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10981j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10982k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10983l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f10984m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f10985n;

    /* JADX INFO: compiled from: SessionData.kt */
    public static final class a implements Parcelable.Creator<c0> {
        @Override // android.os.Parcelable.Creator
        public final c0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c0(parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final c0[] newArray(int i10) {
            return new c0[i10];
        }
    }

    public c0(long j10, int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f10979h = j10;
        this.f10980i = i10;
        this.f10981j = i11;
        this.f10982k = i12;
        this.f10983l = i13;
        this.f10984m = i14;
        this.f10985n = i15;
    }

    public final int a() {
        return this.f10983l;
    }

    public final int b() {
        return this.f10984m;
    }

    public final int c() {
        return this.f10985n;
    }

    public final int d() {
        return this.f10980i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final int e() {
        return this.f10981j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f10979h == c0Var.f10979h && this.f10980i == c0Var.f10980i && this.f10981j == c0Var.f10981j && this.f10982k == c0Var.f10982k && this.f10983l == c0Var.f10983l && this.f10984m == c0Var.f10984m && this.f10985n == c0Var.f10985n;
    }

    public final int f() {
        return this.f10982k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10985n) + r0.e(this.f10984m, r0.e(this.f10983l, r0.e(this.f10982k, r0.e(this.f10981j, r0.e(this.f10980i, Long.hashCode(this.f10979h) * 31, 31), 31), 31), 31), 31);
    }

    public final long m() {
        return this.f10979h;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionRawData(timestamp=");
        sbC.append(this.f10979h);
        sbC.append(", gyroX=");
        sbC.append(this.f10980i);
        sbC.append(", gyroY=");
        sbC.append(this.f10981j);
        sbC.append(", gyroZ=");
        sbC.append(this.f10982k);
        sbC.append(", accelX=");
        sbC.append(this.f10983l);
        sbC.append(", accelY=");
        sbC.append(this.f10984m);
        sbC.append(", accelZ=");
        return a0.b.b(sbC, this.f10985n, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f10979h);
        parcel.writeInt(this.f10980i);
        parcel.writeInt(this.f10981j);
        parcel.writeInt(this.f10982k);
        parcel.writeInt(this.f10983l);
        parcel.writeInt(this.f10984m);
        parcel.writeInt(this.f10985n);
    }
}
