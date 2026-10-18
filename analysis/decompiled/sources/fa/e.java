package fa;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class e implements Parcelable, Comparable<e> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f7141h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f7142i = (int) TimeUnit.MINUTES.toSeconds(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f7143j = (int) TimeUnit.HOURS.toSeconds(1);

    /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
    public static final class a {
        public final e a(float f10, e eVar) {
            float fB;
            long jCurrentTimeMillis = System.currentTimeMillis();
            float fM = (jCurrentTimeMillis - eVar.m()) / (f10 - eVar.o());
            float f11 = 100 - f10;
            if (eVar instanceof C0130e) {
                fB = fM;
            } else {
                fB = (eVar.b() * 0.25f) + (0.75f * fM);
            }
            int i10 = ((int) (f11 * fB)) / 1000;
            return i10 > 10 ? new b(f10, fM, fB, jCurrentTimeMillis, (i10 % e.f7143j) / 60, i10 % e.f7142i) : new d(f10, fM, fB, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
    public static final class b extends e {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float f7144k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final float f7145l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final float f7146m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f7147n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final int f7148o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final int f7149p;

        /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
        public static final class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new b(parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readLong(), parcel.readInt(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(float f10, float f11, float f12, long j10, int i10, int i11) {
            this.f7144k = f10;
            this.f7145l = f11;
            this.f7146m = f12;
            this.f7147n = j10;
            this.f7148o = i10;
            this.f7149p = i11;
        }

        @Override // fa.e
        public final float b() {
            return this.f7146m;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return p4.h.c(Float.valueOf(this.f7144k), Float.valueOf(bVar.f7144k)) && p4.h.c(Float.valueOf(this.f7145l), Float.valueOf(bVar.f7145l)) && p4.h.c(Float.valueOf(this.f7146m), Float.valueOf(bVar.f7146m)) && this.f7147n == bVar.f7147n && this.f7148o == bVar.f7148o && this.f7149p == bVar.f7149p;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f7149p) + r0.e(this.f7148o, (Long.hashCode(this.f7147n) + ((Float.hashCode(this.f7146m) + ((Float.hashCode(this.f7145l) + (Float.hashCode(this.f7144k) * 31)) * 31)) * 31)) * 31, 31);
        }

        @Override // fa.e
        public final long m() {
            return this.f7147n;
        }

        @Override // fa.e
        public final float o() {
            return this.f7144k;
        }

        @Override // fa.e
        public final int p() {
            return 1;
        }

        public final String toString() {
            return "EducatedGuess(percent=" + this.f7144k + ", lastSpeed=" + this.f7145l + ", averageSpeed=" + this.f7146m + ", lastTimestamp=" + this.f7147n + ", minutes=" + this.f7148o + ", seconds=" + this.f7149p + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeFloat(this.f7144k);
            parcel.writeFloat(this.f7145l);
            parcel.writeFloat(this.f7146m);
            parcel.writeLong(this.f7147n);
            parcel.writeInt(this.f7148o);
            parcel.writeInt(this.f7149p);
        }
    }

    /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
    public static final class c extends e {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final c f7150k = new c();
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
        public static final class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return c.f7150k;
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        @Override // fa.e
        public final float b() {
            return 0.0f;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.e
        public final long m() {
            return 0L;
        }

        @Override // fa.e
        public final float o() {
            return 100.0f;
        }

        @Override // fa.e
        public final int p() {
            return 3;
        }

        public final String toString() {
            return "Finished";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
    public static final class d extends e {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float f7151k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final float f7152l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final float f7153m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f7154n;

        /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
        public static final class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new d(parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readLong());
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d(float f10, float f11, float f12, long j10) {
            this.f7151k = f10;
            this.f7152l = f11;
            this.f7153m = f12;
            this.f7154n = j10;
        }

        @Override // fa.e
        public final float b() {
            return this.f7153m;
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
            return p4.h.c(Float.valueOf(this.f7151k), Float.valueOf(dVar.f7151k)) && p4.h.c(Float.valueOf(this.f7152l), Float.valueOf(dVar.f7152l)) && p4.h.c(Float.valueOf(this.f7153m), Float.valueOf(dVar.f7153m)) && this.f7154n == dVar.f7154n;
        }

        public final int hashCode() {
            return Long.hashCode(this.f7154n) + ((Float.hashCode(this.f7153m) + ((Float.hashCode(this.f7152l) + (Float.hashCode(this.f7151k) * 31)) * 31)) * 31);
        }

        @Override // fa.e
        public final long m() {
            return this.f7154n;
        }

        @Override // fa.e
        public final float o() {
            return this.f7151k;
        }

        @Override // fa.e
        public final int p() {
            return 2;
        }

        public final String toString() {
            return "LessThanNSeconds(percent=" + this.f7151k + ", lastSpeed=" + this.f7152l + ", averageSpeed=" + this.f7153m + ", lastTimestamp=" + this.f7154n + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeFloat(this.f7151k);
            parcel.writeFloat(this.f7152l);
            parcel.writeFloat(this.f7153m);
            parcel.writeLong(this.f7154n);
        }
    }

    /* JADX INFO: renamed from: fa.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
    public static final class C0130e extends e {
        public static final Parcelable.Creator<C0130e> CREATOR = new a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float f7155k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final float f7156l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final float f7157m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f7158n;

        /* JADX INFO: renamed from: fa.e$e$a */
        /* JADX INFO: compiled from: EstimatedTimeRemaining.kt */
        public static final class a implements Parcelable.Creator<C0130e> {
            @Override // android.os.Parcelable.Creator
            public final C0130e createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new C0130e(parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readLong());
            }

            @Override // android.os.Parcelable.Creator
            public final C0130e[] newArray(int i10) {
                return new C0130e[i10];
            }
        }

        public C0130e(float f10, float f11, float f12, long j10) {
            this.f7155k = f10;
            this.f7156l = f11;
            this.f7157m = f12;
            this.f7158n = j10;
        }

        @Override // fa.e
        public final float b() {
            return this.f7157m;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0130e)) {
                return false;
            }
            C0130e c0130e = (C0130e) obj;
            return p4.h.c(Float.valueOf(this.f7155k), Float.valueOf(c0130e.f7155k)) && p4.h.c(Float.valueOf(this.f7156l), Float.valueOf(c0130e.f7156l)) && p4.h.c(Float.valueOf(this.f7157m), Float.valueOf(c0130e.f7157m)) && this.f7158n == c0130e.f7158n;
        }

        public final int hashCode() {
            return Long.hashCode(this.f7158n) + ((Float.hashCode(this.f7157m) + ((Float.hashCode(this.f7156l) + (Float.hashCode(this.f7155k) * 31)) * 31)) * 31);
        }

        @Override // fa.e
        public final long m() {
            return this.f7158n;
        }

        @Override // fa.e
        public final float o() {
            return this.f7155k;
        }

        @Override // fa.e
        public final int p() {
            return 0;
        }

        public final String toString() {
            return "WaitingForMoreData(percent=" + this.f7155k + ", lastSpeed=" + this.f7156l + ", averageSpeed=" + this.f7157m + ", lastTimestamp=" + this.f7158n + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeFloat(this.f7155k);
            parcel.writeFloat(this.f7156l);
            parcel.writeFloat(this.f7157m);
            parcel.writeLong(this.f7158n);
        }
    }

    public abstract float b();

    @Override // java.lang.Comparable
    public final int compareTo(e eVar) {
        e eVar2 = eVar;
        p4.h.j(eVar2, "other");
        if (!(this instanceof b) || !(eVar2 instanceof b)) {
            return p4.h.l(p(), eVar2.p());
        }
        b bVar = (b) this;
        b bVar2 = (b) eVar2;
        return p4.h.l((bVar2.f7148o * 60) + bVar2.f7149p, (bVar.f7148o * 60) + bVar.f7149p);
    }

    public abstract long m();

    public abstract float o();

    public abstract int p();
}
