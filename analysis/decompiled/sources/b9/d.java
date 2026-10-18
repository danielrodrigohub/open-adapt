package b9;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.o;
import com.nike.adapt.R;

/* JADX INFO: compiled from: MessagingCenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends b9.c {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fd.h f3580h = (fd.h) o.x(C0058d.f3586h);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fd.h f3581i = (fd.h) o.x(b.f3584h);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final fd.h f3582j = (fd.h) o.x(c.f3585h);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final i f3583k = i.f3596h;

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return new d();
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class b extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f3584h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.bigfoot_critical_battery_notification_message);
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class c extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f3585h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.bigfoot_dismiss_cta);
        }
    }

    /* JADX INFO: renamed from: b9.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class C0058d extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0058d f3586h = new C0058d();

        public C0058d() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.bigfoot_critical_battery_notification_title);
        }
    }

    @Override // b9.c
    public final String a() {
        return (String) this.f3581i.getValue();
    }

    @Override // b9.c
    public final String b() {
        return (String) this.f3582j.getValue();
    }

    @Override // b9.c
    public final e c() {
        return this.f3583k;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // b9.c
    public final String f() {
        return (String) this.f3580h.getValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(1);
    }
}
