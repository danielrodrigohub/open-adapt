package fa;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FirmwareStage.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class i implements Parcelable {

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class a extends i {
        public static final Parcelable.Creator<a> CREATOR = new C0131a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ba.e f7164h;

        /* JADX INFO: renamed from: fa.i$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class C0131a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new a(ba.e.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a(ba.e eVar) {
            p4.h.j(eVar, "adaptKitBattery");
            this.f7164h = eVar;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && p4.h.c(this.f7164h, ((a) obj).f7164h);
        }

        public final int hashCode() {
            return this.f7164h.hashCode();
        }

        public final String toString() {
            return "BatteryTooLow(adaptKitBattery=" + this.f7164h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7164h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class b extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f7165h = new b();
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return b.f7165h;
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Completed";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class c extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f7166h = new c();
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return c.f7166h;
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "ConnectionLost";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class d extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f7167h = new d();
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return d.f7167h;
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Failure";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class e extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f7168h = new e();
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<e> {
            @Override // android.os.Parcelable.Creator
            public final e createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return e.f7168h;
            }

            @Override // android.os.Parcelable.Creator
            public final e[] newArray(int i10) {
                return new e[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "FetchingData";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class f extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final f f7169h = new f();
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<f> {
            @Override // android.os.Parcelable.Creator
            public final f createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return f.f7169h;
            }

            @Override // android.os.Parcelable.Creator
            public final f[] newArray(int i10) {
                return new f[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Flashing";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class g extends i {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f7170h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final fa.e f7171i;

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<g> {
            @Override // android.os.Parcelable.Creator
            public final g createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new g(parcel.readFloat(), (fa.e) parcel.readParcelable(g.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final g[] newArray(int i10) {
                return new g[i10];
            }
        }

        public g(float f10, fa.e eVar) {
            p4.h.j(eVar, "eta");
            this.f7170h = f10;
            this.f7171i = eVar;
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
            return p4.h.c(Float.valueOf(this.f7170h), Float.valueOf(gVar.f7170h)) && p4.h.c(this.f7171i, gVar.f7171i);
        }

        public final int hashCode() {
            return this.f7171i.hashCode() + (Float.hashCode(this.f7170h) * 31);
        }

        public final String toString() {
            return "InProgress(percent=" + this.f7170h + ", eta=" + this.f7171i + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeFloat(this.f7170h);
            parcel.writeParcelable(this.f7171i, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class h extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final h f7172h = new h();
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<h> {
            @Override // android.os.Parcelable.Creator
            public final h createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return h.f7172h;
            }

            @Override // android.os.Parcelable.Creator
            public final h[] newArray(int i10) {
                return new h[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "NoUpdateAvailable";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: renamed from: fa.i$i, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class C0132i extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0132i f7173h = new C0132i();
        public static final Parcelable.Creator<C0132i> CREATOR = new a();

        /* JADX INFO: renamed from: fa.i$i$a */
        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<C0132i> {
            @Override // android.os.Parcelable.Creator
            public final C0132i createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return C0132i.f7173h;
            }

            @Override // android.os.Parcelable.Creator
            public final C0132i[] newArray(int i10) {
                return new C0132i[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "NotStarted";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareStage.kt */
    public static final class j extends i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final j f7174h = new j();
        public static final Parcelable.Creator<j> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareStage.kt */
        public static final class a implements Parcelable.Creator<j> {
            @Override // android.os.Parcelable.Creator
            public final j createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return j.f7174h;
            }

            @Override // android.os.Parcelable.Creator
            public final j[] newArray(int i10) {
                return new j[i10];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Reconnecting";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }
}
