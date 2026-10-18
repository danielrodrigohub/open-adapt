package fa;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: SlotInfo.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class l implements Parcelable {

    /* JADX INFO: compiled from: SlotInfo.kt */
    public static final class a extends l {
        public static final Parcelable.Creator<a> CREATOR = new C0136a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final c f7232h;

        /* JADX INFO: renamed from: fa.l$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class C0136a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new a((c) parcel.readParcelable(a.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a(c cVar) {
            p4.h.j(cVar, "errorType");
            this.f7232h = cVar;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && p4.h.c(this.f7232h, ((a) obj).f7232h);
        }

        public final int hashCode() {
            return this.f7232h.hashCode();
        }

        public final String toString() {
            return "Ble(errorType=" + this.f7232h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeParcelable(this.f7232h, i10);
        }
    }

    /* JADX INFO: compiled from: SlotInfo.kt */
    public static final class b extends l {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final c f7233h;

        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new b((c) parcel.readParcelable(b.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(c cVar) {
            p4.h.j(cVar, "errorType");
            this.f7233h = cVar;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && p4.h.c(this.f7233h, ((b) obj).f7233h);
        }

        public final int hashCode() {
            return this.f7233h.hashCode();
        }

        public final String toString() {
            return "Capsense(errorType=" + this.f7233h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeParcelable(this.f7233h, i10);
        }
    }

    /* JADX INFO: compiled from: SlotInfo.kt */
    public static abstract class c implements Parcelable {

        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class a extends c {
            public static final Parcelable.Creator<a> CREATOR = new C0137a();

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final int f7234h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final int f7235i;

            /* JADX INFO: renamed from: fa.l$c$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: SlotInfo.kt */
            public static final class C0137a implements Parcelable.Creator<a> {
                @Override // android.os.Parcelable.Creator
                public final a createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    return new a(parcel.readInt(), parcel.readInt());
                }

                @Override // android.os.Parcelable.Creator
                public final a[] newArray(int i10) {
                    return new a[i10];
                }
            }

            public a(int i10, int i11) {
                this.f7234h = i10;
                this.f7235i = i11;
            }

            @Override // fa.l.c
            public final String a() {
                return "CHECKSUM_MISMATCH [expected: " + this.f7234h + ", actual: " + this.f7235i + "]";
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
                return this.f7234h == aVar.f7234h && this.f7235i == aVar.f7235i;
            }

            public final int hashCode() {
                return Integer.hashCode(this.f7235i) + (Integer.hashCode(this.f7234h) * 31);
            }

            public final String toString() {
                return a();
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                parcel.writeInt(this.f7234h);
                parcel.writeInt(this.f7235i);
            }
        }

        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class b extends c {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public static final b f7236h = new b();
            public static final Parcelable.Creator<b> CREATOR = new a();

            /* JADX INFO: compiled from: SlotInfo.kt */
            public static final class a implements Parcelable.Creator<b> {
                @Override // android.os.Parcelable.Creator
                public final b createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    parcel.readInt();
                    return b.f7236h;
                }

                @Override // android.os.Parcelable.Creator
                public final b[] newArray(int i10) {
                    return new b[i10];
                }
            }

            @Override // fa.l.c
            public final String a() {
                return "COULD_NOT_DETERMINE_STATUS";
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "COULD_NOT_DETERMINE_STATUS";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                parcel.writeInt(1);
            }
        }

        /* JADX INFO: renamed from: fa.l$c$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class C0138c extends c {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public static final C0138c f7237h = new C0138c();
            public static final Parcelable.Creator<C0138c> CREATOR = new a();

            /* JADX INFO: renamed from: fa.l$c$c$a */
            /* JADX INFO: compiled from: SlotInfo.kt */
            public static final class a implements Parcelable.Creator<C0138c> {
                @Override // android.os.Parcelable.Creator
                public final C0138c createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    parcel.readInt();
                    return C0138c.f7237h;
                }

                @Override // android.os.Parcelable.Creator
                public final C0138c[] newArray(int i10) {
                    return new C0138c[i10];
                }
            }

            @Override // fa.l.c
            public final String a() {
                return "EMPTY";
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "EMPTY";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                parcel.writeInt(1);
            }
        }

        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class d extends c {
            public static final Parcelable.Creator<d> CREATOR = new a();

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final String f7238h;

            /* JADX INFO: compiled from: SlotInfo.kt */
            public static final class a implements Parcelable.Creator<d> {
                @Override // android.os.Parcelable.Creator
                public final d createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    return new d(parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final d[] newArray(int i10) {
                    return new d[i10];
                }
            }

            public d(String str) {
                p4.h.j(str, "status");
                this.f7238h = str;
            }

            @Override // fa.l.c
            public final String a() {
                return a0.d.c("INVALID_FW_STATUS [status: ", this.f7238h, "]");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof d) && p4.h.c(this.f7238h, ((d) obj).f7238h);
            }

            public final int hashCode() {
                return this.f7238h.hashCode();
            }

            public final String toString() {
                return a();
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                parcel.writeString(this.f7238h);
            }
        }

        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class e extends c {
            public static final Parcelable.Creator<e> CREATOR = new a();

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final fb.c f7239h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final fb.c f7240i;

            /* JADX INFO: compiled from: SlotInfo.kt */
            public static final class a implements Parcelable.Creator<e> {
                @Override // android.os.Parcelable.Creator
                public final e createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    Parcelable.Creator<fb.c> creator = fb.c.CREATOR;
                    return new e(creator.createFromParcel(parcel), creator.createFromParcel(parcel));
                }

                @Override // android.os.Parcelable.Creator
                public final e[] newArray(int i10) {
                    return new e[i10];
                }
            }

            public e(fb.c cVar, fb.c cVar2) {
                p4.h.j(cVar, "expected");
                p4.h.j(cVar2, "actual");
                this.f7239h = cVar;
                this.f7240i = cVar2;
            }

            @Override // fa.l.c
            public final String a() {
                return "INVALID_FW_STATUS [expected: " + this.f7239h + ", actual: " + this.f7240i + "]";
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof e)) {
                    return false;
                }
                e eVar = (e) obj;
                return p4.h.c(this.f7239h, eVar.f7239h) && p4.h.c(this.f7240i, eVar.f7240i);
            }

            public final int hashCode() {
                return this.f7240i.hashCode() + (this.f7239h.hashCode() * 31);
            }

            public final String toString() {
                return a();
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                this.f7239h.writeToParcel(parcel, i10);
                this.f7240i.writeToParcel(parcel, i10);
            }
        }

        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class f extends c {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public static final f f7241h = new f();
            public static final Parcelable.Creator<f> CREATOR = new a();

            /* JADX INFO: compiled from: SlotInfo.kt */
            public static final class a implements Parcelable.Creator<f> {
                @Override // android.os.Parcelable.Creator
                public final f createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    parcel.readInt();
                    return f.f7241h;
                }

                @Override // android.os.Parcelable.Creator
                public final f[] newArray(int i10) {
                    return new f[i10];
                }
            }

            @Override // fa.l.c
            public final String a() {
                return "SLOT_IS_OKAY";
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "SLOT_IS_OKAY";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                parcel.writeInt(1);
            }
        }

        public abstract String a();
    }

    /* JADX INFO: compiled from: SlotInfo.kt */
    public static final class d extends l {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final c f7242h;

        /* JADX INFO: compiled from: SlotInfo.kt */
        public static final class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new d((c) parcel.readParcelable(d.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d(c cVar) {
            p4.h.j(cVar, "errorType");
            this.f7242h = cVar;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && p4.h.c(this.f7242h, ((d) obj).f7242h);
        }

        public final int hashCode() {
            return this.f7242h.hashCode();
        }

        public final String toString() {
            return "Mcu(errorType=" + this.f7242h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeParcelable(this.f7242h, i10);
        }
    }
}
