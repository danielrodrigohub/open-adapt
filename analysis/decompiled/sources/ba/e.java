package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitBattery.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f3632i;

    /* JADX INFO: compiled from: AdaptKitBattery.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e(parcel.readInt(), b.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    /* JADX INFO: compiled from: AdaptKitBattery.kt */
    public enum b {
        ON_CHARGER("ON_CHARGER"),
        OFF_CHARGER("OFF_CHARGER"),
        ON_CHARGING("ON_CHARGING"),
        CHARGING_ERROR("CHARGING_ERROR"),
        ERROR("ERROR");


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f3639h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final fd.h f3640i = (fd.h) androidx.lifecycle.o.x(new C0060b());

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final fd.h f3641j = (fd.h) androidx.lifecycle.o.x(new c());

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final fd.h f3642k = (fd.h) androidx.lifecycle.o.x(new a());

        /* JADX INFO: compiled from: AdaptKitBattery.kt */
        public static final class a extends rd.o implements qd.a<Boolean> {
            public a() {
                super(0);
            }

            @Override // qd.a
            public final Boolean invoke() {
                b bVar = b.this;
                return Boolean.valueOf(bVar == b.ON_CHARGER || bVar == b.ON_CHARGING);
            }
        }

        /* JADX INFO: renamed from: ba.e$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitBattery.kt */
        public static final class C0060b extends rd.o implements qd.a<Boolean> {
            public C0060b() {
                super(0);
            }

            @Override // qd.a
            public final Boolean invoke() {
                b bVar = b.this;
                return Boolean.valueOf(bVar == b.CHARGING_ERROR || bVar == b.ERROR);
            }
        }

        /* JADX INFO: compiled from: AdaptKitBattery.kt */
        public static final class c extends rd.o implements qd.a<Boolean> {
            public c() {
                super(0);
            }

            @Override // qd.a
            public final Boolean invoke() {
                b bVar = b.this;
                return Boolean.valueOf((bVar == b.CHARGING_ERROR || bVar == b.ERROR) ? false : true);
            }
        }

        b(String str) {
            this.f3639h = str;
        }
    }

    public e(int i10, b bVar) {
        p4.h.j(bVar, "state");
        this.f3631h = i10;
        this.f3632i = bVar;
    }

    public final String a() {
        return "Battery[percent: " + this.f3631h + ", state: " + this.f3632i.f3639h + "]";
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
        return this.f3631h == eVar.f3631h && this.f3632i == eVar.f3632i;
    }

    public final int hashCode() {
        return this.f3632i.hashCode() + (Integer.hashCode(this.f3631h) * 31);
    }

    public final String toString() {
        return "AdaptKitBattery(percent=" + this.f3631h + ", state=" + this.f3632i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3631h);
        parcel.writeString(this.f3632i.name());
    }

    public e() {
        this(0, b.ERROR);
    }
}
