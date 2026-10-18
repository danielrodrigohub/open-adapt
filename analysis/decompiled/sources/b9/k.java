package b9;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.o;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.FirmwareUpdateActivity;
import h9.g0;

/* JADX INFO: compiled from: MessagingCenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k extends b9.c {
    public static final Parcelable.Creator<k> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fd.h f3598h = (fd.h) o.x(e.f3607h);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fd.h f3599i = (fd.h) o.x(b.f3604h);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final fd.h f3600j = (fd.h) o.x(c.f3605h);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final fd.h f3601k = (fd.h) o.x(d.f3606h);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final f f3602l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final f f3603m;

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        public final k createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return new k();
        }

        @Override // android.os.Parcelable.Creator
        public final k[] newArray(int i10) {
            return new k[i10];
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class b extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f3604h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.adapt_connection_failed_cta_dialog_description);
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class c extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f3605h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.adapt_connection_failed_cta_cta_title);
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class d extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f3606h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.adapt_try_again_button_title);
        }
    }

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class e extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f3607h = new e();

        public e() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return o.r(R.string.adapt_connection_failed_cta_dialog_title);
        }
    }

    public k() {
        g0 g0Var = new g0(g0.f8326f.a(), false);
        BigfootApplication.e eVar = BigfootApplication.f5638p;
        this.f3602l = new f(g0Var.f(eVar.a()));
        this.f3603m = new f(new Intent(eVar.a(), (Class<?>) FirmwareUpdateActivity.class));
    }

    @Override // b9.c
    public final String a() {
        return (String) this.f3599i.getValue();
    }

    @Override // b9.c
    public final String b() {
        return (String) this.f3600j.getValue();
    }

    @Override // b9.c
    public final b9.e c() {
        return this.f3602l;
    }

    @Override // b9.c
    public final String d() {
        return (String) this.f3601k.getValue();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // b9.c
    public final b9.e e() {
        return this.f3603m;
    }

    @Override // b9.c
    public final String f() {
        return (String) this.f3598h.getValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(1);
    }
}
