package com.nike.adapt.service;

import android.app.Application;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import androidx.activity.k;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.presenter.profile.AdaptUser;
import com.nike.adapt.ui.settings.FirmwareUpdateActivity;
import ea.m;
import fa.j;
import java.util.Iterator;
import java.util.Objects;
import java.util.Timer;
import p4.h;
import rd.g;
import rd.o;
import rd.x;
import v7.d;
import v9.l;
import v9.o2;
import v9.v2;
import x.s;

/* JADX INFO: compiled from: FirmwareUpdateService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareUpdateService extends Service {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f5688s = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public m f5690i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public l f5692k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Timer f5693l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Timer f5694m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Timer f5695n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final b f5696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f5697p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f5698q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public s f5699r;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f5689h = ((g) x.a(FirmwareUpdateService.class)).a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h8.c f5691j = h8.c.f8298b;

    /* JADX INFO: compiled from: FirmwareUpdateService.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: FirmwareUpdateService.kt */
    public final class b extends Binder {
        public b() {
        }
    }

    /* JADX INFO: compiled from: FirmwareUpdateService.kt */
    public static final class c extends o implements qd.l<v9.o, fd.o> {
        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(v9.o oVar) {
            v9.o oVar2 = oVar;
            h.j(oVar2, "$this$firmwareUpgradeListener");
            oVar2.f16742b = new com.nike.adapt.service.b(FirmwareUpdateService.this);
            return fd.o.f7408a;
        }
    }

    public FirmwareUpdateService() {
        System.currentTimeMillis();
        this.f5696o = new b();
    }

    public static final d a(FirmwareUpdateService firmwareUpdateService, String str) {
        String nuid;
        AdaptUser adaptUserR = firmwareUpdateService.f5691j.R();
        if (adaptUserR == null || (nuid = adaptUserR.getNuid()) == null) {
            nuid = "";
        }
        String str2 = nuid;
        m mVar = firmwareUpdateService.f5690i;
        if (mVar == null) {
            h.C("pairedDevices");
            throw null;
        }
        String str3 = mVar.f6677u;
        String str4 = mVar.f6665i;
        long j10 = firmwareUpdateService.f5691j.m0().getLong("PREF_FIRMWARE_UPGRADE_START_TIME", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        h.i(str6, "model");
        h.i(str5, "manufacturer");
        String strC = yd.o.g0(str6, str5, false) ? str6 : a0.d.c(str5, " ", str6);
        String str7 = Build.VERSION.RELEASE;
        String str8 = "Android SDK: " + Build.VERSION.SDK_INT + " (" + str7 + ")";
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        d dVar = new d(str2, str3, str4, j10, jCurrentTimeMillis, strC, str8, inMemoryCache.getLowestFirmwareVersion(), inMemoryCache.getUpdateToFirmwareVersion(), str);
        o7.x.f12420a.a(dVar.a());
        return dVar;
    }

    public static final void b(FirmwareUpdateService firmwareUpdateService, String str) {
        Objects.requireNonNull(firmwareUpdateService);
        o7.x.f12420a.a("FirmwareUpdateCrumb " + firmwareUpdateService.f5689h + " handleFailures " + str);
        l lVar = firmwareUpdateService.f5692k;
        if (lVar != null) {
            k.e(lVar, o2.f16743b);
        }
        firmwareUpdateService.d(new n8.k(firmwareUpdateService));
    }

    public static final void c(FirmwareUpdateService firmwareUpdateService, i8.b bVar) {
        Objects.requireNonNull(firmwareUpdateService);
        s7.b.f15149a.a(bVar);
    }

    public final void d(qd.a<fd.o> aVar) {
        o7.x.f12420a.a("FirmwareUpdateCrumb " + this.f5689h + " stopFirmwareService Killed all listeners, services, timers");
        l lVar = this.f5692k;
        if (lVar != null) {
            lVar.d();
        }
        this.f5692k = null;
        stopSelf();
        Application application = getApplication();
        h.h(application, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication");
        ((BigfootApplication) application).f5650k = null;
        e();
        Timer timer = this.f5694m;
        if (timer != null) {
            timer.cancel();
        }
        this.f5694m = null;
        Timer timer2 = this.f5695n;
        if (timer2 != null) {
            timer2.cancel();
        }
        this.f5695n = null;
        aVar.invoke();
        stopForeground(2);
    }

    public final void e() {
        Timer timer = this.f5693l;
        if (timer != null) {
            timer.cancel();
        }
        this.f5693l = null;
    }

    public final Notification f(int i10) {
        String strR;
        String strR2;
        boolean z10;
        boolean z11;
        x.o oVar = new x.o(this, o7.l.f12400a.a());
        s9.g gVar = s9.g.f15195a;
        androidx.appcompat.widget.o.d(i10, "state");
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            strR = androidx.lifecycle.o.r(R.string.firmware_in_progress_notification_title);
        } else if (i11 == 1) {
            strR = androidx.lifecycle.o.r(R.string.adapt_firmware_update_restart_title);
        } else if (i11 == 2) {
            strR = androidx.lifecycle.o.r(R.string.firmware_update_complete_title);
        } else {
            if (i11 != 3) {
                throw new j2.a();
            }
            strR = androidx.lifecycle.o.r(R.string.adapt_firmware_update_failed_title);
        }
        oVar.f17649e = x.o.b(strR);
        float f10 = this.f5697p;
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0) {
            strR2 = f10 + "%";
        } else if (i11 == 1) {
            strR2 = androidx.lifecycle.o.r(R.string.adapt_firmware_update_restart_copy);
        } else if (i11 == 2) {
            strR2 = androidx.lifecycle.o.r(R.string.firmware_update_complete_body);
        } else {
            if (i11 != 3) {
                throw new j2.a();
            }
            strR2 = androidx.lifecycle.o.r(R.string.firmware_update_failure_body);
        }
        oVar.f17650f = x.o.b(strR2);
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0 || i11 == 1) {
            z10 = true;
        } else {
            if (i11 != 2 && i11 != 3) {
                throw new j2.a();
            }
            z10 = false;
        }
        oVar.c(2, z10);
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0 || i11 == 1) {
            z11 = false;
        } else {
            if (i11 != 2 && i11 != 3) {
                throw new j2.a();
            }
            z11 = true;
        }
        oVar.c(16, z11);
        oVar.f17662r.icon = R.drawable.ic_shoe_adapt;
        oVar.f17658n = "progress";
        oVar.f17652h = -1;
        FirmwareUpdateActivity.a aVar = FirmwareUpdateActivity.Q;
        Intent intent = new Intent(this, (Class<?>) FirmwareUpdateActivity.class);
        intent.setFlags(268468224);
        intent.putExtra("com.nike.adapt.PARAM_FIRMWARE_SERVICE_PI", true);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 201326592);
        h.i(activity, "getActivity(\n           …G_IMMUTABLE\n            )");
        oVar.f17651g = activity;
        oVar.c(8, true);
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0) {
            int i12 = (int) (this.f5697p * 10);
            oVar.f17655k = 1000;
            oVar.f17656l = i12;
            oVar.f17657m = false;
        } else if (i11 == 1) {
            oVar.f17655k = 0;
            oVar.f17656l = 0;
            oVar.f17657m = true;
        }
        Notification notificationA = oVar.a();
        s sVar = this.f5699r;
        if (sVar == null) {
            h.C("notificationManager");
            throw null;
        }
        Bundle bundle = notificationA.extras;
        if (bundle != null && bundle.getBoolean("android.support.useSideChannel")) {
            sVar.a(new s.a(sVar.f17675a.getPackageName(), notificationA));
            sVar.f17676b.cancel(null, 42069);
        } else {
            sVar.f17676b.notify(null, 42069, notificationA);
        }
        return notificationA;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f5696o;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.f5699r = new s(this);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        j jVar;
        if (intent == null || this.f5692k != null) {
            o7.x.f12420a.a("FirmwareUpdateCrumb " + this.f5689h + " onStartCommand, Intent: " + intent + ", requester: " + this.f5692k);
            return 2;
        }
        o7.x.f12420a.a("START_FW_UPDATE : FW_STATS");
        System.currentTimeMillis();
        Parcelable parcelableExtra = intent.getParcelableExtra("FIRMWARE_UPDATE_SERVICE_PAIRED_DEVICE");
        h.g(parcelableExtra);
        this.f5690i = (m) parcelableExtra;
        startForeground(42069, f(1));
        m mVar = this.f5690i;
        if (mVar == null) {
            h.C("pairedDevices");
            throw null;
        }
        l lVar = new l(mVar);
        this.f5692k = lVar;
        c cVar = new c();
        v9.o oVar = new v9.o();
        cVar.invoke(oVar);
        lVar.g(oVar);
        s sVar = this.f5699r;
        if (sVar == null) {
            h.C("notificationManager");
            throw null;
        }
        sVar.f17676b.cancelAll();
        l lVar2 = this.f5692k;
        if (lVar2 != null) {
            s9.g gVar = s9.g.f15195a;
            Iterator<T> it = s9.h.f15200b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    jVar = j.HIGH;
                    break;
                }
                String str = (String) it.next();
                String str2 = Build.MODEL;
                h.i(str2, "MODEL");
                if (yd.s.i0(str2, str)) {
                    jVar = j.LOW;
                    break;
                }
            }
            k.e(lVar2, new v2(jVar));
        }
        e();
        Timer timer = new Timer("fw_upgrade_timeout_timer");
        timer.scheduleAtFixedRate(new n8.l(this), 10000L, 10000L);
        this.f5693l = timer;
        return 2;
    }
}
