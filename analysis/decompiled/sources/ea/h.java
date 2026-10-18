package ea;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitLaceTightness.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class h implements Parcelable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f6644i = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6645h;

    /* JADX INFO: compiled from: AdaptKitLaceTightness.kt */
    public static final class a extends h {
        public static final Parcelable.Creator<a> CREATOR = new C0121a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f6646j;

        /* JADX INFO: renamed from: ea.h$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitLaceTightness.kt */
        public static final class C0121a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new a(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a(int i10) {
            super(i10);
            this.f6646j = i10;
        }

        @Override // ea.h
        public final int a() {
            return this.f6646j;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f6646j == ((a) obj).f6646j;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f6646j);
        }

        public final String toString() {
            return a0.d.b("Absolute(percent=", this.f6646j, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(this.f6646j);
        }
    }

    /* JADX INFO: compiled from: AdaptKitLaceTightness.kt */
    public static final class b {
    }

    /* JADX INFO: compiled from: AdaptKitLaceTightness.kt */
    public static final class c extends h {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f6647j;

        /* JADX INFO: compiled from: AdaptKitLaceTightness.kt */
        public static final class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new c(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(int i10) {
            super(i10);
            this.f6647j = i10;
        }

        @Override // ea.h
        public final int a() {
            return this.f6647j;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.f6647j == ((c) obj).f6647j;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f6647j);
        }

        public final String toString() {
            return a0.d.b("Relative(percent=", this.f6647j, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(this.f6647j);
        }
    }

    public h(int i10) {
        this.f6645h = i10;
    }

    public abstract int a();
}
