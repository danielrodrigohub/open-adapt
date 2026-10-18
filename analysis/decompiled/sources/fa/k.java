package fa;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FirmwareUpdateState.kt */
/* JADX INFO: loaded from: classes.dex */
public interface k extends Parcelable, Comparable<k> {

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class a implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f7178h = new a();
        public static final Parcelable.Creator<a> CREATOR = new C0133a();

        /* JADX INFO: renamed from: fa.k$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class C0133a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return a.f7178h;
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.NO_UPDATE_AVAILABLE;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static abstract class a0 implements k, fa.h {

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a extends a0 implements fa.o {
            public static final Parcelable.Creator<a> CREATOR = new C0134a();

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final fa.l.d f7179h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final fa.l.a f7180i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final fa.l.b f7181j;

            /* JADX INFO: renamed from: fa.k$a0$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: FirmwareUpdateState.kt */
            public static final class C0134a implements Parcelable.Creator<a> {
                @Override // android.os.Parcelable.Creator
                public final a createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    return new a(fa.l.d.CREATOR.createFromParcel(parcel), fa.l.a.CREATOR.createFromParcel(parcel), fa.l.b.CREATOR.createFromParcel(parcel));
                }

                @Override // android.os.Parcelable.Creator
                public final a[] newArray(int i10) {
                    return new a[i10];
                }
            }

            public a(fa.l.d dVar, fa.l.a aVar, fa.l.b bVar) {
                p4.h.j(dVar, "mcu");
                p4.h.j(aVar, "ble");
                p4.h.j(bVar, "capsense");
                this.f7179h = dVar;
                this.f7180i = aVar;
                this.f7181j = bVar;
            }

            @Override // fa.o
            public final boolean A() {
                return fa.o.a.a(this);
            }

            @Override // fa.h
            public final String b() {
                return "SlotCheck[invalidSlotDetected, check other columns]";
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
                return p4.h.c(this.f7179h, aVar.f7179h) && p4.h.c(this.f7180i, aVar.f7180i) && p4.h.c(this.f7181j, aVar.f7181j);
            }

            public final int hashCode() {
                return this.f7181j.hashCode() + ((this.f7180i.hashCode() + (this.f7179h.hashCode() * 31)) * 31);
            }

            @Override // fa.k.a0
            public final float m() {
                return 100.0f;
            }

            @Override // fa.o
            public final fa.l.b o() {
                return this.f7181j;
            }

            @Override // fa.o
            public final fa.l.a p() {
                return this.f7180i;
            }

            public final String toString() {
                return "SlotCheck(mcu=" + this.f7179h + ", ble=" + this.f7180i + ", capsense=" + this.f7181j + ")";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                this.f7179h.writeToParcel(parcel, i10);
                this.f7180i.writeToParcel(parcel, i10);
                this.f7181j.writeToParcel(parcel, i10);
            }

            @Override // fa.o
            public final fa.l.d y() {
                return this.f7179h;
            }
        }

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class b extends a0 {
            public static final Parcelable.Creator<b> CREATOR = new a();

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final float f7182h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final String f7183i;

            /* JADX INFO: compiled from: FirmwareUpdateState.kt */
            public static final class a implements Parcelable.Creator<b> {
                @Override // android.os.Parcelable.Creator
                public final b createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    return new b(parcel.readFloat(), parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final b[] newArray(int i10) {
                    return new b[i10];
                }
            }

            public b(float f10, String str) {
                p4.h.j(str, "reason");
                this.f7182h = f10;
                this.f7183i = str;
            }

            @Override // fa.h
            public final String b() {
                return "TransferStopped[reason: " + this.f7183i + " uploadPercent: " + this.f7182h + "]";
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
                return p4.h.c(Float.valueOf(this.f7182h), Float.valueOf(bVar.f7182h)) && p4.h.c(this.f7183i, bVar.f7183i);
            }

            public final int hashCode() {
                return this.f7183i.hashCode() + (Float.hashCode(this.f7182h) * 31);
            }

            @Override // fa.k.a0
            public final float m() {
                return this.f7182h;
            }

            public final String toString() {
                return "TransferStopped(lastKnownPercent=" + this.f7182h + ", reason=" + this.f7183i + ")";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                parcel.writeFloat(this.f7182h);
                parcel.writeString(this.f7183i);
            }
        }

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class c extends a0 {
            public static final Parcelable.Creator<c> CREATOR = new a();

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final float f7184h;

            /* JADX INFO: compiled from: FirmwareUpdateState.kt */
            public static final class a implements Parcelable.Creator<c> {
                @Override // android.os.Parcelable.Creator
                public final c createFromParcel(Parcel parcel) {
                    p4.h.j(parcel, "parcel");
                    return new c(parcel.readFloat());
                }

                @Override // android.os.Parcelable.Creator
                public final c[] newArray(int i10) {
                    return new c[i10];
                }
            }

            public c(float f10) {
                this.f7184h = f10;
            }

            @Override // fa.h
            public final String b() {
                return "UserCanceled[uploadPercent: " + this.f7184h + "]";
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof c) && p4.h.c(Float.valueOf(this.f7184h), Float.valueOf(((c) obj).f7184h));
            }

            public final int hashCode() {
                return Float.hashCode(this.f7184h);
            }

            @Override // fa.k.a0
            public final float m() {
                return this.f7184h;
            }

            public final String toString() {
                return "UserCanceled(lastKnownPercent=" + this.f7184h + ")";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                p4.h.j(parcel, "out");
                parcel.writeFloat(this.f7184h);
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.UPDATING_ERROR;
        }

        public abstract float m();
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class b implements k, fa.h, fa.f {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ba.e f7185h;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new b(ba.e.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(ba.e eVar) {
            p4.h.j(eVar, "battery");
            this.f7185h = eVar;
        }

        @Override // fa.h
        public final String b() {
            return a0.d.b("BatteryTooLow[minimum = 30, actual = ", this.f7185h.f3631h, "]");
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && p4.h.c(this.f7185h, ((b) obj).f7185h);
        }

        @Override // fa.f
        public final ba.e getBattery() {
            return this.f7185h;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FAILURE;
        }

        public final int hashCode() {
            return this.f7185h.hashCode();
        }

        public final String toString() {
            return "BatteryTooLow(battery=" + this.f7185h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7185h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class b0 implements k, fa.p {
        public static final Parcelable.Creator<b0> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f7186h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final fa.e f7187i;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<b0> {
            @Override // android.os.Parcelable.Creator
            public final b0 createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new b0(parcel.readFloat(), (fa.e) parcel.readParcelable(b0.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final b0[] newArray(int i10) {
                return new b0[i10];
            }
        }

        public b0(float f10, fa.e eVar) {
            p4.h.j(eVar, "estimatedTimeRemaining");
            this.f7186h = f10;
            this.f7187i = eVar;
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b0)) {
                return false;
            }
            b0 b0Var = (b0) obj;
            return p4.h.c(Float.valueOf(this.f7186h), Float.valueOf(b0Var.f7186h)) && p4.h.c(this.f7187i, b0Var.f7187i);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.IN_PROGRESS;
        }

        public final int hashCode() {
            return this.f7187i.hashCode() + (Float.hashCode(this.f7186h) * 31);
        }

        @Override // fa.p
        public final float m() {
            return this.f7186h;
        }

        public final String toString() {
            return "UploadProgress(percent=" + this.f7186h + ", estimatedTimeRemaining=" + this.f7187i + ")";
        }

        @Override // fa.p
        public final fa.e w() {
            return this.f7187i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeFloat(this.f7186h);
            parcel.writeParcelable(this.f7187i, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class c implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f7188h = new c();
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return c.f7188h;
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public enum c0 {
        CONNECTION_LOST(-1),
        BATTERY_TOO_LOW(0),
        FAILURE(1),
        NOT_STARTED(2),
        FETCHING_DATA(3),
        IN_PROGRESS(4),
        UPDATING_ERROR(5),
        STAGED_FOR_FLASH(6),
        RECONNECTING(7),
        COMPLETED_FAILURE(8),
        COMPLETED_SUCCESS(9),
        NO_UPDATE_AVAILABLE(10);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7202h;

        c0(int i10) {
            this.f7202h = i10;
        }

        public final boolean b() {
            return androidx.appcompat.widget.p.g(this, CONNECTION_LOST, BATTERY_TOO_LOW, FAILURE, COMPLETED_FAILURE, COMPLETED_SUCCESS);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class d implements k, fa.h {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.b.a f7203h;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new d(fa.b.a.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d(fa.b.a aVar) {
            p4.h.j(aVar, "firmwareUpdate");
            this.f7203h = aVar;
        }

        @Override // fa.h
        public final String b() {
            fa.b.a aVar = this.f7203h;
            return "FirmwareStatus.ErrorOccurred[currentVersion: " + aVar.f7124h + ", errorMessage: " + aVar.f7125i + "]";
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && p4.h.c(this.f7203h, ((d) obj).f7203h);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FAILURE;
        }

        public final int hashCode() {
            return this.f7203h.hashCode();
        }

        public final String toString() {
            return "CheckUpdateStatusError(firmwareUpdate=" + this.f7203h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7203h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class e implements k, fa.o {
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.l.d f7204h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final fa.l.a f7205i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final fa.l.b f7206j;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<e> {
            @Override // android.os.Parcelable.Creator
            public final e createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new e(fa.l.d.CREATOR.createFromParcel(parcel), fa.l.a.CREATOR.createFromParcel(parcel), fa.l.b.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final e[] newArray(int i10) {
                return new e[i10];
            }
        }

        public e(fa.l.d dVar, fa.l.a aVar, fa.l.b bVar) {
            p4.h.j(dVar, "mcu");
            p4.h.j(aVar, "ble");
            p4.h.j(bVar, "capsense");
            this.f7204h = dVar;
            this.f7205i = aVar;
            this.f7206j = bVar;
        }

        @Override // fa.o
        public final boolean A() {
            return fa.o.a.a(this);
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
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
            return p4.h.c(this.f7204h, eVar.f7204h) && p4.h.c(this.f7205i, eVar.f7205i) && p4.h.c(this.f7206j, eVar.f7206j);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.STAGED_FOR_FLASH;
        }

        public final int hashCode() {
            return this.f7206j.hashCode() + ((this.f7205i.hashCode() + (this.f7204h.hashCode() * 31)) * 31);
        }

        @Override // fa.o
        public final fa.l.b o() {
            return this.f7206j;
        }

        @Override // fa.o
        public final fa.l.a p() {
            return this.f7205i;
        }

        public final String toString() {
            return "CheckUpgradeSlotsAlreadyStaged(mcu=" + this.f7204h + ", ble=" + this.f7205i + ", capsense=" + this.f7206j + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7204h.writeToParcel(parcel, i10);
            this.f7205i.writeToParcel(parcel, i10);
            this.f7206j.writeToParcel(parcel, i10);
        }

        @Override // fa.o
        public final fa.l.d y() {
            return this.f7204h;
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class f implements k, fa.o {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.l.d f7207h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final fa.l.a f7208i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final fa.l.b f7209j;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<f> {
            @Override // android.os.Parcelable.Creator
            public final f createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new f(fa.l.d.CREATOR.createFromParcel(parcel), fa.l.a.CREATOR.createFromParcel(parcel), fa.l.b.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final f[] newArray(int i10) {
                return new f[i10];
            }
        }

        public f(fa.l.d dVar, fa.l.a aVar, fa.l.b bVar) {
            p4.h.j(dVar, "mcu");
            p4.h.j(aVar, "ble");
            p4.h.j(bVar, "capsense");
            this.f7207h = dVar;
            this.f7208i = aVar;
            this.f7209j = bVar;
        }

        @Override // fa.o
        public final boolean A() {
            return fa.o.a.a(this);
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return p4.h.c(this.f7207h, fVar.f7207h) && p4.h.c(this.f7208i, fVar.f7208i) && p4.h.c(this.f7209j, fVar.f7209j);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        public final int hashCode() {
            return this.f7209j.hashCode() + ((this.f7208i.hashCode() + (this.f7207h.hashCode() * 31)) * 31);
        }

        @Override // fa.o
        public final fa.l.b o() {
            return this.f7209j;
        }

        @Override // fa.o
        public final fa.l.a p() {
            return this.f7208i;
        }

        public final String toString() {
            return "CheckUpgradeSlotsUploadRequired(mcu=" + this.f7207h + ", ble=" + this.f7208i + ", capsense=" + this.f7209j + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7207h.writeToParcel(parcel, i10);
            this.f7208i.writeToParcel(parcel, i10);
            this.f7209j.writeToParcel(parcel, i10);
        }

        @Override // fa.o
        public final fa.l.d y() {
            return this.f7207h;
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class g implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final g f7210h = new g();
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<g> {
            @Override // android.os.Parcelable.Creator
            public final g createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return g.f7210h;
            }

            @Override // android.os.Parcelable.Creator
            public final g[] newArray(int i10) {
                return new g[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class h implements k, fa.h {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.c f7211h;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<h> {
            @Override // android.os.Parcelable.Creator
            public final h createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new h(fa.c.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final h[] newArray(int i10) {
                return new h[i10];
            }
        }

        public h(fa.c cVar) {
            p4.h.j(cVar, "lastKnownState");
            this.f7211h = cVar;
        }

        @Override // fa.h
        public final String b() {
            return "ConnectionLost[lastKnownPercent: " + this.f7211h + "]";
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof h) && p4.h.c(this.f7211h, ((h) obj).f7211h);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FAILURE;
        }

        public final int hashCode() {
            return this.f7211h.hashCode();
        }

        public final String toString() {
            return "ConnectionLost(lastKnownState=" + this.f7211h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7211h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class i {
        public static int a(k kVar, k kVar2) {
            p4.h.j(kVar2, "other");
            return ((kVar instanceof b0) && (kVar2 instanceof b0)) ? Float.compare(((b0) kVar).f7186h, ((b0) kVar2).f7186h) : p4.h.l(kVar.h().f7202h, kVar2.h().f7202h);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class j implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final j f7212h = new j();
        public static final Parcelable.Creator<j> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<j> {
            @Override // android.os.Parcelable.Creator
            public final j createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return j.f7212h;
            }

            @Override // android.os.Parcelable.Creator
            public final j[] newArray(int i10) {
                return new j[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: renamed from: fa.k$k, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class C0135k implements k, fa.h {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0135k f7213h = new C0135k();
        public static final Parcelable.Creator<C0135k> CREATOR = new a();

        /* JADX INFO: renamed from: fa.k$k$a */
        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<C0135k> {
            @Override // android.os.Parcelable.Creator
            public final C0135k createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return C0135k.f7213h;
            }

            @Override // android.os.Parcelable.Creator
            public final C0135k[] newArray(int i10) {
                return new C0135k[i10];
            }
        }

        @Override // fa.h
        public final String b() {
            return "Download FW Failed";
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FAILURE;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class l implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final l f7214h = new l();
        public static final Parcelable.Creator<l> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<l> {
            @Override // android.os.Parcelable.Creator
            public final l createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return l.f7214h;
            }

            @Override // android.os.Parcelable.Creator
            public final l[] newArray(int i10) {
                return new l[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class m implements k, fa.p, fa.h {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final m f7215h = new m();
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<m> {
            @Override // android.os.Parcelable.Creator
            public final m createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return m.f7215h;
            }

            @Override // android.os.Parcelable.Creator
            public final m[] newArray(int i10) {
                return new m[i10];
            }
        }

        @Override // fa.h
        public final String b() {
            return "FlashError";
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FAILURE;
        }

        @Override // fa.p
        public final float m() {
            return 100.0f;
        }

        @Override // fa.p
        public final fa.e w() {
            return fa.e.c.f7150k;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class n implements k, fa.p {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final n f7216h = new n();
        public static final Parcelable.Creator<n> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<n> {
            @Override // android.os.Parcelable.Creator
            public final n createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return n.f7216h;
            }

            @Override // android.os.Parcelable.Creator
            public final n[] newArray(int i10) {
                return new n[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.RECONNECTING;
        }

        @Override // fa.p
        public final float m() {
            return 100.0f;
        }

        @Override // fa.p
        public final fa.e w() {
            return fa.e.c.f7150k;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class o implements k, fa.f {
        public static final Parcelable.Creator<o> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ba.e f7217h;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<o> {
            @Override // android.os.Parcelable.Creator
            public final o createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new o(ba.e.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final o[] newArray(int i10) {
                return new o[i10];
            }
        }

        public o(ba.e eVar) {
            p4.h.j(eVar, "battery");
            this.f7217h = eVar;
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof o) && p4.h.c(this.f7217h, ((o) obj).f7217h);
        }

        @Override // fa.f
        public final ba.e getBattery() {
            return this.f7217h;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        public final int hashCode() {
            return this.f7217h.hashCode();
        }

        public final String toString() {
            return "KickoffFirmwareProcess(battery=" + this.f7217h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7217h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class p implements k, fa.h {
        public static final Parcelable.Creator<p> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f7218h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f7219i;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<p> {
            @Override // android.os.Parcelable.Creator
            public final p createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new p(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final p[] newArray(int i10) {
                return new p[i10];
            }
        }

        public p(String str, String str2) {
            p4.h.j(str, "expected");
            p4.h.j(str2, "actual");
            this.f7218h = str;
            this.f7219i = str2;
        }

        @Override // fa.h
        public final String b() {
            return a0.b.a("Md5CheckFailed[expected: ", this.f7218h, "\tactual: ", this.f7219i, "]");
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof p)) {
                return false;
            }
            p pVar = (p) obj;
            return p4.h.c(this.f7218h, pVar.f7218h) && p4.h.c(this.f7219i, pVar.f7219i);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FAILURE;
        }

        public final int hashCode() {
            return this.f7219i.hashCode() + (this.f7218h.hashCode() * 31);
        }

        public final String toString() {
            return a0.b.a("Md5CheckFailed(expected=", this.f7218h, ", actual=", this.f7219i, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeString(this.f7218h);
            parcel.writeString(this.f7219i);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class q implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final q f7220h = new q();
        public static final Parcelable.Creator<q> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<q> {
            @Override // android.os.Parcelable.Creator
            public final q createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return q.f7220h;
            }

            @Override // android.os.Parcelable.Creator
            public final q[] newArray(int i10) {
                return new q[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class r implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final r f7221h = new r();
        public static final Parcelable.Creator<r> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<r> {
            @Override // android.os.Parcelable.Creator
            public final r createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return r.f7221h;
            }

            @Override // android.os.Parcelable.Creator
            public final r[] newArray(int i10) {
                return new r[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.NOT_STARTED;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class s implements k, fa.p, fa.o {
        public static final Parcelable.Creator<s> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.l.d f7222h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final fa.l.a f7223i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final fa.l.b f7224j;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<s> {
            @Override // android.os.Parcelable.Creator
            public final s createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new s(fa.l.d.CREATOR.createFromParcel(parcel), fa.l.a.CREATOR.createFromParcel(parcel), fa.l.b.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final s[] newArray(int i10) {
                return new s[i10];
            }
        }

        public s(fa.l.d dVar, fa.l.a aVar, fa.l.b bVar) {
            p4.h.j(dVar, "mcu");
            p4.h.j(aVar, "ble");
            p4.h.j(bVar, "capsense");
            this.f7222h = dVar;
            this.f7223i = aVar;
            this.f7224j = bVar;
        }

        @Override // fa.o
        public final boolean A() {
            return fa.o.a.a(this);
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof s)) {
                return false;
            }
            s sVar = (s) obj;
            return p4.h.c(this.f7222h, sVar.f7222h) && p4.h.c(this.f7223i, sVar.f7223i) && p4.h.c(this.f7224j, sVar.f7224j);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.IN_PROGRESS;
        }

        public final int hashCode() {
            return this.f7224j.hashCode() + ((this.f7223i.hashCode() + (this.f7222h.hashCode() * 31)) * 31);
        }

        @Override // fa.p
        public final float m() {
            return 100.0f;
        }

        @Override // fa.o
        public final fa.l.b o() {
            return this.f7224j;
        }

        @Override // fa.o
        public final fa.l.a p() {
            return this.f7223i;
        }

        public final String toString() {
            return "PostUploadSlotCheck(mcu=" + this.f7222h + ", ble=" + this.f7223i + ", capsense=" + this.f7224j + ")";
        }

        @Override // fa.p
        public final fa.e w() {
            return fa.e.c.f7150k;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7222h.writeToParcel(parcel, i10);
            this.f7223i.writeToParcel(parcel, i10);
            this.f7224j.writeToParcel(parcel, i10);
        }

        @Override // fa.o
        public final fa.l.d y() {
            return this.f7222h;
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class t implements k, fa.p {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final t f7225h = new t();
        public static final Parcelable.Creator<t> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<t> {
            @Override // android.os.Parcelable.Creator
            public final t createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return t.f7225h;
            }

            @Override // android.os.Parcelable.Creator
            public final t[] newArray(int i10) {
                return new t[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.STAGED_FOR_FLASH;
        }

        @Override // fa.p
        public final float m() {
            return 100.0f;
        }

        @Override // fa.p
        public final fa.e w() {
            return fa.e.c.f7150k;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class u implements k, fa.p {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final u f7226h = new u();
        public static final Parcelable.Creator<u> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<u> {
            @Override // android.os.Parcelable.Creator
            public final u createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return u.f7226h;
            }

            @Override // android.os.Parcelable.Creator
            public final u[] newArray(int i10) {
                return new u[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.COMPLETED_SUCCESS;
        }

        @Override // fa.p
        public final float m() {
            return 100.0f;
        }

        @Override // fa.p
        public final fa.e w() {
            return fa.e.c.f7150k;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class v implements k {
        public static final Parcelable.Creator<v> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.b.C0129b f7227h;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<v> {
            @Override // android.os.Parcelable.Creator
            public final v createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new v(fa.b.C0129b.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final v[] newArray(int i10) {
                return new v[i10];
            }
        }

        public v(fa.b.C0129b c0129b) {
            p4.h.j(c0129b, "firmwareUpdate");
            this.f7227h = c0129b;
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof v) && p4.h.c(this.f7227h, ((v) obj).f7227h);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.NO_UPDATE_AVAILABLE;
        }

        public final int hashCode() {
            return this.f7227h.hashCode();
        }

        public final String toString() {
            return "UpToDate(firmwareUpdate=" + this.f7227h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7227h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class w implements k {
        public static final Parcelable.Creator<w> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fa.b.c f7228h;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<w> {
            @Override // android.os.Parcelable.Creator
            public final w createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new w(fa.b.c.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final w[] newArray(int i10) {
                return new w[i10];
            }
        }

        public w(fa.b.c cVar) {
            p4.h.j(cVar, "firmwareUpdate");
            this.f7228h = cVar;
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof w) && p4.h.c(this.f7228h, ((w) obj).f7228h);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.FETCHING_DATA;
        }

        public final int hashCode() {
            return this.f7228h.hashCode();
        }

        public final String toString() {
            return "UpdateAvailable(firmwareUpdate=" + this.f7228h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7228h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class x implements k, fa.h {
        public static final Parcelable.Creator<x> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f7229h;

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<x> {
            @Override // android.os.Parcelable.Creator
            public final x createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new x(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final x[] newArray(int i10) {
                return new x[i10];
            }
        }

        public x(String str) {
            p4.h.j(str, "errorMessage");
            this.f7229h = str;
        }

        @Override // fa.h
        public final String b() {
            return this.f7229h;
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof x) && p4.h.c(this.f7229h, ((x) obj).f7229h);
        }

        @Override // fa.k
        public final c0 h() {
            return c0.COMPLETED_FAILURE;
        }

        public final int hashCode() {
            return this.f7229h.hashCode();
        }

        public final String toString() {
            return a0.d.c("UpgradeFailed(errorMessage=", this.f7229h, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeString(this.f7229h);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class y implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final y f7230h = new y();
        public static final Parcelable.Creator<y> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<y> {
            @Override // android.os.Parcelable.Creator
            public final y createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return y.f7230h;
            }

            @Override // android.os.Parcelable.Creator
            public final y[] newArray(int i10) {
                return new y[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.COMPLETED_SUCCESS;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateState.kt */
    public static final class z implements k, fa.p {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final z f7231h = new z();
        public static final Parcelable.Creator<z> CREATOR = new a();

        /* JADX INFO: compiled from: FirmwareUpdateState.kt */
        public static final class a implements Parcelable.Creator<z> {
            @Override // android.os.Parcelable.Creator
            public final z createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                parcel.readInt();
                return z.f7231h;
            }

            @Override // android.os.Parcelable.Creator
            public final z[] newArray(int i10) {
                return new z[i10];
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(k kVar) {
            return i.a(this, kVar);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // fa.k
        public final c0 h() {
            return c0.IN_PROGRESS;
        }

        @Override // fa.p
        public final float m() {
            return 100.0f;
        }

        @Override // fa.p
        public final fa.e w() {
            return fa.e.c.f7150k;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    c0 h();
}
