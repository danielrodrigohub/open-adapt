package fa;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class n implements Parcelable, Comparable<n> {

    /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
    public static final class a extends n {
        public static final Parcelable.Creator<a> CREATOR = new C0139a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fb.c f7243h;

        /* JADX INFO: renamed from: fa.n$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
        public static final class C0139a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new a(fb.c.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a(fb.c cVar) {
            p4.h.j(cVar, "version");
            this.f7243h = cVar;
        }

        @Override // fa.n
        public final String b() {
            return toString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && p4.h.c(this.f7243h, ((a) obj).f7243h);
        }

        public final int hashCode() {
            return this.f7243h.hashCode();
        }

        public final String toString() {
            return "STAGED [" + this.f7243h + "]";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7243h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
    public static final class b extends n {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fb.c f7244h;

        /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
        public static final class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new b(fb.c.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(fb.c cVar) {
            p4.h.j(cVar, "version");
            this.f7244h = cVar;
        }

        @Override // fa.n
        public final String b() {
            return toString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && p4.h.c(this.f7244h, ((b) obj).f7244h);
        }

        public final int hashCode() {
            return this.f7244h.hashCode();
        }

        public final String toString() {
            return "UP_TO_DATE [" + this.f7244h + "]";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7244h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
    public static final class c extends n {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fb.c f7245h;

        /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
        public static final class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new c(fb.c.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(fb.c cVar) {
            p4.h.j(cVar, "version");
            this.f7245h = cVar;
        }

        @Override // fa.n
        public final String b() {
            return toString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && p4.h.c(this.f7245h, ((c) obj).f7245h);
        }

        public final int hashCode() {
            return this.f7245h.hashCode();
        }

        public final String toString() {
            return "PRE_FW_CHECK [" + this.f7245h + "]";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7245h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
    public static final class d extends n {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fb.c f7246h;

        /* JADX INFO: compiled from: StateBasedFirmwareVersion.kt */
        public static final class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new d(fb.c.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d(fb.c cVar) {
            p4.h.j(cVar, "version");
            this.f7246h = cVar;
        }

        @Override // fa.n
        public final String b() {
            return this.f7246h.f7257h;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && p4.h.c(this.f7246h, ((d) obj).f7246h);
        }

        public final int hashCode() {
            return this.f7246h.hashCode();
        }

        public final String toString() {
            return "Version(version=" + this.f7246h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7246h.writeToParcel(parcel, i10);
        }
    }

    public abstract String b();

    @Override // java.lang.Comparable
    public final int compareTo(n nVar) {
        n nVar2 = nVar;
        p4.h.j(nVar2, "other");
        boolean z10 = this instanceof d;
        if (z10 && (nVar2 instanceof d)) {
            return ((d) this).f7246h.compareTo(((d) nVar2).f7246h);
        }
        if (!z10) {
            if (nVar2 instanceof d) {
                return -1;
            }
            if (!(this instanceof b)) {
                return nVar2 instanceof b ? -1 : 0;
            }
        }
        return 1;
    }
}
