package l8;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import i8.d;
import java.util.UUID;
import o7.f;
import o7.x;
import p4.h;
import rd.o;

/* JADX INFO: compiled from: AdaptAlarmReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends BroadcastReceiver implements s7.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f10172h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public t9.b f10173i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d f10174j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public IDeviceController f10175k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public IAdaptRequester f10176l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Handler f10177m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public l8.a f10178n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f10179o;

    /* JADX INFO: compiled from: AdaptAlarmReceiver.kt */
    public static final class a extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f10180h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: renamed from: l8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptAlarmReceiver.kt */
    public static final class C0197b extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0197b f10181h = new C0197b();

        public C0197b() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    public b() {
        String simpleName = getClass().getSimpleName();
        UUID uuidRandomUUID = UUID.randomUUID();
        h.i(uuidRandomUUID, "randomUUID()");
        this.f10174j = new d(simpleName, uuidRandomUUID);
        this.f10177m = new Handler(Looper.getMainLooper());
        this.f10178n = new l8.a(this, 0);
    }

    public final void a() {
        x.f12420a.a("Battery Alarm: Unsubscribing and unregistering all listeners");
        this.f10177m.removeCallbacks(this.f10178n);
        if (this.f10179o) {
            this.f10179o = false;
            s7.b.f15149a.c(this);
        }
        b().disconnect();
        b().unsubscribe();
        c().unsubscribe();
    }

    public final IAdaptRequester b() {
        IAdaptRequester iAdaptRequester = this.f10176l;
        if (iAdaptRequester != null) {
            return iAdaptRequester;
        }
        h.C("adaptRequester");
        throw null;
    }

    public final IDeviceController c() {
        IDeviceController iDeviceController = this.f10175k;
        if (iDeviceController != null) {
            return iDeviceController;
        }
        h.C("deviceController");
        throw null;
    }

    public final t9.b d() {
        t9.b bVar = this.f10173i;
        if (bVar != null) {
            return bVar;
        }
        h.C("pairTracker");
        throw null;
    }

    public final void e(Context context) {
        h.j(context, "context");
        x.f12420a.a("Battery Alarm: Attempting to establish connection with shoes");
        this.f10172h = context;
        this.f10173i = new t9.b();
        this.f10177m.postDelayed(this.f10178n, 30000L);
        if (!this.f10179o) {
            this.f10179o = true;
            s7.b.f15149a.b(this);
        }
        IAdaptRequester iAdaptRequesterA = ((f) androidx.lifecycle.o.m()).a(null, this.f10174j, a.f10180h, C0197b.f10181h);
        h.j(iAdaptRequesterA, "<set-?>");
        this.f10176l = iAdaptRequesterA;
        IDeviceController iDeviceControllerB = ((f) androidx.lifecycle.o.m()).b(null, this.f10174j);
        h.j(iDeviceControllerB, "<set-?>");
        this.f10175k = iDeviceControllerB;
        b().subscribe();
    }
}
