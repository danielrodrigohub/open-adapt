package b9;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.o;
import com.nike.adapt.R;

/* JADX INFO: compiled from: MessagingCenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends b9.c {
    public static final Parcelable.Creator<h> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fd.h f3589h = (fd.h) o.x(d.f3595h);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fd.h f3590i = (fd.h) o.x(b.f3593h);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final fd.h f3591j = (fd.h) o.x(c.f3594h);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final i f3592k = i.f3596h;

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class a implements Parcelable.Creator<h> {
        @Override // android.os.Parcelable.Creator
        public final h createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return new h();
        }

        @Override // android.os.Parcelable.Creator
        public final h[] newArray(int i10) {
            return new h[i10];
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class b extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f3593h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.bigfoot_low_battery_notification_message);
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class c extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f3594h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.bigfoot_dismiss_cta);
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class d extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f3595h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.bigfoot_low_battery_notification_title);
        }
    }

    @Override // b9.c
    public final String a() {
        return (String) this.f3590i.getValue();
    }

    @Override // b9.c
    public final String b() {
        return (String) this.f3591j.getValue();
    }

    @Override // b9.c
    public final e c() {
        return this.f3592k;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // b9.c
    public final String f() {
        return (String) this.f3589h.getValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(1);
    }
}
