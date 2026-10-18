package com.nike.adapt;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Process;
import androidx.lifecycle.a0;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import androidx.lifecycle.v;
import com.newrelic.agent.android.NewRelic;
import com.newrelic.agent.android.analytics.EventManagerImpl;
import com.newrelic.agent.android.instrumentation.GsonInstrumentation;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptDeviceLEDIntensityADK;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.analytics.ReportingGateKeeper;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.coroutine.BackgroundCoroutineScope;
import com.nike.adapt.migration.oldbigfoot.BigfootDevicePreset;
import com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices;
import com.nike.adapt.presenter.profile.AdaptUser;
import com.nike.adapt.service.FirmwareUpdateService;
import com.nike.adapt.ui.AdaptRestartActivity;
import com.nike.adapt.ui.requirements.AdaptRequirementsActivity;
import com.nike.android.telemetry.internal.database.TelemetryDatabase;
import ea.m;
import ea.w;
import gd.n;
import hc.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import n3.p;
import o7.k;
import o7.l;
import o7.x;
import okhttp3.HttpUrl;
import s9.j;
import v9.d0;
import v9.o0;
import v9.t;
import v9.u;
import wa.i;
import yd.s;

/* JADX INFO: compiled from: BigfootApplication.kt */
/* JADX INFO: loaded from: classes.dex */
public class BigfootApplication extends Application implements androidx.lifecycle.b, androidx.work.a.b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static BigfootApplication f5639q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static CoroutineScope f5641s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static g8.a f5643u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static boolean f5646x;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Activity f5647h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public FirmwareUpdateService f5650k;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final e f5638p = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final fd.d<BigfootApplication> f5640r = (fd.h) o.x(a.f5655h);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final fd.d<CoroutineScope> f5642t = (fd.h) o.x(c.f5657h);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final fd.d<g8.a> f5644v = (fd.h) o.x(d.f5658h);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final fd.d<String> f5645w = o.w(3, b.f5656h);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BackgroundCoroutineScope f5648i = new BackgroundCoroutineScope();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final o7.f f5649j = o7.f.f12375a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile AtomicBoolean f5651l = new AtomicBoolean(false);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final g f5652m = new g();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final fd.h f5653n = (fd.h) o.x(h.f5661h);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final fd.d f5654o = o.w(3, f.f5659h);

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class a extends rd.o implements qd.a<BigfootApplication> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5655h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final BigfootApplication invoke() {
            return BigfootApplication.f5638p.b();
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class b extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5656h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            String string = UUID.randomUUID().toString();
            p4.h.i(string, "randomUUID().toString()");
            return string;
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class c extends rd.o implements qd.a<CoroutineScope> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f5657h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final CoroutineScope invoke() {
            CoroutineScope coroutineScope = BigfootApplication.f5641s;
            if (coroutineScope != null) {
                return coroutineScope;
            }
            p4.h.C("_applicationScope");
            throw null;
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class d extends rd.o implements qd.a<g8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f5658h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final g8.a invoke() {
            g8.a aVar = BigfootApplication.f5643u;
            if (aVar != null) {
                return aVar;
            }
            p4.h.C("_oauthModule");
            throw null;
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class e {
        public final BigfootApplication a() {
            return BigfootApplication.f5640r.getValue();
        }

        public final BigfootApplication b() {
            BigfootApplication bigfootApplication = BigfootApplication.f5639q;
            if (bigfootApplication != null) {
                return bigfootApplication;
            }
            p4.h.C("application");
            throw null;
        }

        public final g8.a c() {
            return BigfootApplication.f5644v.getValue();
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class f extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final f f5659h = new f();

        public f() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class g implements o0 {
        public g() {
        }

        @Override // v9.o0
        public final void a() {
            Activity activity = BigfootApplication.this.f5647h;
            if (activity == null || !(activity instanceof AdaptRequirementsActivity)) {
                return;
            }
            AdaptRequirementsActivity adaptRequirementsActivity = (AdaptRequirementsActivity) activity;
            adaptRequirementsActivity.l0(adaptRequirementsActivity.B.a(adaptRequirementsActivity));
        }

        @Override // v9.o0
        public final boolean b() {
            return BigfootApplication.this.f5651l.get();
        }

        @Override // v9.o0
        public final void c(ja.b bVar) {
            Activity activity = BigfootApplication.this.f5647h;
            if (activity != null) {
                if (g7.c.d(activity)) {
                    h9.c.f8316c.e(activity);
                } else if (activity instanceof AdaptRequirementsActivity) {
                    AdaptRequirementsActivity adaptRequirementsActivity = (AdaptRequirementsActivity) activity;
                    adaptRequirementsActivity.l0(adaptRequirementsActivity.B.a(adaptRequirementsActivity));
                }
            }
        }
    }

    /* JADX INFO: compiled from: BigfootApplication.kt */
    public static final class h extends rd.o implements qd.a<x> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final h f5661h = new h();

        public h() {
            super(0);
        }

        @Override // qd.a
        public final x invoke() {
            return x.f12420a;
        }
    }

    @Override // androidx.work.a.b
    public final androidx.work.a b() {
        k1.e eVar = new k1.e();
        androidx.work.a.C0044a c0044a = new androidx.work.a.C0044a();
        c0044a.f3048a = eVar;
        return new androidx.work.a(c0044a);
    }

    /* JADX WARN: Type inference failed for: r4v41, types: [java.util.ArrayList, java.util.List<eb.g>] */
    @Override // android.app.Application
    public final void onCreate() {
        boolean z10;
        List<BigfootPairedDevices> arrayList;
        String str;
        AdaptDeviceColor adaptDeviceColor;
        super.onCreate();
        f5639q = this;
        f5641s = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(Dispatchers.getIO()));
        AdaptRestartActivity.a aVar = AdaptRestartActivity.A;
        int iMyPid = Process.myPid();
        Object systemService = getSystemService((Class<Object>) ActivityManager.class);
        p4.h.g(systemService);
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            z10 = false;
            break;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == iMyPid) {
                String str2 = next.processName;
                p4.h.i(str2, "processInfo.processName");
                if (yd.o.Y(str2, ":adapt_restart", false)) {
                    z10 = true;
                    break;
                }
            }
        }
        if (z10) {
            return;
        }
        e eVar = f5638p;
        f5643u = new g8.a(this);
        String strB = androidx.preference.f.b(this);
        SharedPreferences sharedPreferences = getSharedPreferences("_has_set_default_values", 0);
        if (!sharedPreferences.getBoolean("_has_set_default_values", false)) {
            androidx.preference.f fVar = new androidx.preference.f(this);
            fVar.f2349f = strB;
            fVar.f2350g = 0;
            fVar.f2346c = null;
            fVar.e(this);
            sharedPreferences.edit().putBoolean("_has_set_default_values", true).apply();
        }
        a0.f2161m.f2165k.a(this.f5648i);
        registerActivityLifecycleCallbacks(r8.a.f14736h);
        o7.g gVar = o7.g.f12378h;
        p pVar = p.f11618h;
        j jVar = j.f15203a;
        ((v) j.f15204b.getValue()).d(pVar);
        registerActivityLifecycleCallbacks(gVar);
        registerActivityLifecycleCallbacks(l9.b.f10183h);
        registerActivityLifecycleCallbacks(new o7.j(this));
        BigfootApplicationState bigfootApplicationState = BigfootApplicationState.f5662h;
        BigfootApplication bigfootApplicationB = eVar.b();
        String value = f5645w.getValue();
        String string = getString(R.string.app_name_non_translatable);
        p4.h.i(string, "getString(R.string.app_name_non_translatable)");
        g7.b.f7789h = new o7.a(bigfootApplicationB, value, string, (w7.c) w7.d.f17236a.getValue());
        g7.b.f7790i = false;
        t tVar = t.f16822a;
        String string2 = UUID.randomUUID().toString();
        k kVar = new k(this);
        androidx.appcompat.widget.p pVar2 = new androidx.appcompat.widget.p();
        g gVar2 = this.f5652m;
        p4.h hVar = new p4.h();
        p4.h.i(string2, "toString()");
        p4.h.j(gVar2, "requirementsListener");
        String str3 = "editor";
        int i10 = 10;
        if (!t.f16832k) {
            t.f16829h = this;
            t.f16827f = string2;
            t.f16828g = "com.nike.authcomponent.v1";
            t.f16831j = new ma.a(kVar);
            t.f16825d = new fb.e(pVar2);
            t.f16826e = gVar2;
            d3.e.j();
            i iVar = new i(new u(gVar2));
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            intentFilter.addAction("android.location.PROVIDERS_CHANGED");
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            registerReceiver(iVar, intentFilter);
            eb.f fVar2 = t.f16830i;
            String strA = tVar.c().a();
            v9.v vVar = new v9.v(hVar);
            Objects.requireNonNull(fVar2);
            eb.f.f6711b = true;
            fVar2.b(strA);
            gb.c cVar = gb.c.f7932a;
            String str4 = eb.f.f6714e;
            Objects.requireNonNull(cVar);
            Context applicationContext = getApplicationContext();
            p4.h.i(applicationContext, "context.applicationContext");
            gb.c.f7933b = applicationContext;
            gb.c.f7934c = vVar;
            TelemetryDatabase.a aVar2 = TelemetryDatabase.f5921m;
            gb.c.f7940i = "adaptkit-nike-telemetry";
            gb.c.f7944m = aVar2.a(this, "adaptkit");
            vVar.a();
            String str5 = gb.c.f7940i;
            if (str5 == null) {
                p4.h.C("databaseName");
                throw null;
            }
            gb.c.f7941j = str5;
            gb.c.f7943l = "iA41YwJBILujxEQdjlI6nuKgnVmxpQrm";
            gb.c.f7935d = string2;
            gb.c.f7936e = "com.nike.adapt";
            gb.c.f7937f = "1.29.3";
            gb.c.f7938g = "adaptkit";
            gb.c.f7939h = "1.5.13";
            gb.c.f7942k = str4;
            gb.c.f7945n = true;
            cVar.notifyObservers();
            Iterator it2 = eb.f.f6713d.iterator();
            while (it2.hasNext()) {
                eb.f.f6710a.a((eb.g) it2.next());
            }
            h0 h0Var = h0.f8505a;
            h0.f8506b = new da.e();
            h0.f8508d = this;
            db.b bVar = t.f16824c;
            Objects.requireNonNull(bVar);
            try {
                Object value2 = db.b.f6163d.getValue();
                p4.h.i(value2, "<get-sharedPreferences>(...)");
                int i11 = ((SharedPreferences) value2).getInt("adapt_kit_previous_version_key", 2);
                if (i11 < 2 && i11 < 2 && i11 == 1) {
                    List listE = bVar.e(true);
                    ArrayList arrayList2 = new ArrayList(gd.j.T(listE, 10));
                    Iterator it3 = listE.iterator();
                    while (it3.hasNext()) {
                        arrayList2.add(m.a((m) it3.next(), null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6143));
                    }
                    bVar.b(false, arrayList2);
                }
                Object value3 = db.b.f6163d.getValue();
                p4.h.i(value3, "<get-sharedPreferences>(...)");
                SharedPreferences.Editor editorEdit = ((SharedPreferences) value3).edit();
                p4.h.i(editorEdit, "editor");
                editorEdit.putInt("adapt_kit_previous_version_key", 2);
                editorEdit.apply();
            } catch (Throwable unused) {
            }
            wa.b.f17549h.d(this);
            t.f16832k = true;
            wa.d.f17553h.d(this);
            ab.a aVarE = tVar.e();
            v9.a.C0295a c0295a = v9.a.f16441i;
            v9.a aVar3 = v9.a.f16442j;
            v9.x xVar = v9.x.f16902h;
            p4.h.j(xVar, "block");
            d0 d0Var = new d0(false);
            xVar.invoke(d0Var);
            aVarE.a(aVar3, d0Var);
        }
        a0 a0Var = a0.f2161m;
        a0Var.f2165k.a(this);
        a0Var.f2165k.a(PeripheralConnectionManager.f5666h);
        TrackManager trackManager = TrackManager.INSTANCE;
        trackManager.init();
        NewRelic.withApplicationToken("AAb9fcb58709db55cac5bbcb2047a26c65c1122fb5").start(this);
        i8.h.f8828b.execute(new Runnable() { // from class: o7.i
            @Override // java.lang.Runnable
            public final void run() {
                BigfootApplication.e eVar2 = BigfootApplication.f5638p;
                int i12 = h8.a.f8296a;
                AdaptUser adaptUserR = h8.c.f8298b.R();
                NewRelic.setUserId(adaptUserR != null ? adaptUserR.getNuid() : null);
                int i13 = n.f12404a;
                NewRelic.setMaxEventBufferTime(EventManagerImpl.DEFAULT_MAX_EVENT_BUFFER_TIME);
            }
        });
        trackManager.init();
        x xVar2 = x.f12420a;
        o7.o externalReporter = ReportingGateKeeper.INSTANCE.getExternalReporter();
        p4.h.j(externalReporter, "reporter");
        x.f12424e = "BigFoot";
        x.f12422c = externalReporter;
        x.f12420a.h("BigfootApplication", "Application Initialized", (120 & 4) != 0 ? o7.u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : true);
        u7.a aVar4 = u7.a.f16021a;
        try {
            Object objFromJson = GsonInstrumentation.fromJson(new e7.h(), ((SharedPreferences) u7.a.f16022b.getValue()).getString("devices", HttpUrl.PATH_SEGMENT_ENCODE_SET_URI), new u7.b().f10168b);
            p4.h.h(objFromJson, "null cannot be cast to non-null type kotlin.collections.List<com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices>");
            List listI0 = n.i0(n.n0((List) objFromJson), new u7.d(new u7.c()));
            if (listI0.size() <= 1) {
                arrayList = n.l0(listI0);
            } else {
                arrayList = n.m0(listI0);
                Collections.reverse(arrayList);
            }
        } catch (Throwable unused2) {
            arrayList = new ArrayList();
        }
        if (true ^ arrayList.isEmpty()) {
            t tVar2 = t.f16822a;
            ArrayList arrayList3 = new ArrayList(gd.j.T(arrayList, 10));
            for (BigfootPairedDevices bigfootPairedDevices : arrayList) {
                String pairId = bigfootPairedDevices.getPairId();
                String pairName = bigfootPairedDevices.getPairName();
                boolean zIsDefault = bigfootPairedDevices.isDefault();
                ea.t tVarI = androidx.appcompat.widget.p.i(bigfootPairedDevices.getLeftDevice());
                ea.t tVarI2 = androidx.appcompat.widget.p.i(bigfootPairedDevices.getRightDevice());
                String lastSnapshotUsedName = bigfootPairedDevices.getLastSnapshotUsedName();
                String colorWay = bigfootPairedDevices.getColorWay();
                List<BigfootDevicePreset> snapshots = bigfootPairedDevices.getSnapshots();
                ArrayList arrayList4 = new ArrayList(gd.j.T(snapshots, 10));
                for (BigfootDevicePreset bigfootDevicePreset : snapshots) {
                    arrayList4.add(new w(bigfootDevicePreset.getId(), bigfootDevicePreset.getName(), bigfootDevicePreset.getAutoGenerated(), androidx.appcompat.widget.p.h(bigfootDevicePreset.getLeftAttributes()), androidx.appcompat.widget.p.h(bigfootDevicePreset.getRightAttributes())));
                }
                arrayList3.add(new ea.j(pairId, pairName, zIsDefault, tVarI, tVarI2, lastSnapshotUsedName, colorWay, arrayList4, System.currentTimeMillis(), bigfootPairedDevices.getScheduledForDeletion()));
            }
            ab.a aVarE2 = tVar2.e();
            ArrayList arrayList5 = new ArrayList(gd.j.T(arrayList3, 10));
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                ea.j jVar2 = (ea.j) it4.next();
                ea.t tVar3 = jVar2.f6654d;
                ea.b bVar2 = new ea.b(jVar2.f6657g, tVar3.f6690a, tVar3.f6691b, tVar3.f6692c, tVar3.f6693d, tVar3.f6694e, jVar2.f6661k);
                ea.t tVar4 = jVar2.f6655e;
                ea.b bVar3 = new ea.b(jVar2.f6657g, tVar4.f6690a, tVar4.f6691b, tVar4.f6692c, tVar4.f6693d, tVar4.f6694e, jVar2.f6661k);
                String str6 = jVar2.f6651a;
                String str7 = jVar2.f6652b;
                boolean z11 = jVar2.f6653c;
                String str8 = jVar2.f6656f;
                String str9 = jVar2.f6657g;
                List<w> list = jVar2.f6658h;
                int i12 = bVar2.f6615m;
                Iterator it5 = it4;
                int i13 = bVar3.f6615m;
                String str10 = str3;
                ArrayList arrayList6 = new ArrayList(gd.j.T(list, i10));
                Iterator it6 = list.iterator();
                while (it6.hasNext()) {
                    w wVar = (w) it6.next();
                    arrayList6.add(new ea.e(wVar.f6698a, wVar.f6699b, wVar.f6700c, c3.d.m(wVar.f6701d, i12), c3.d.m(wVar.f6702e, i13), (Integer) null));
                    it6 = it6;
                    str9 = str9;
                    aVarE2 = aVarE2;
                    arrayList5 = arrayList5;
                }
                ArrayList arrayList7 = arrayList5;
                arrayList7.add(new m(str6, str7, z11, bVar2, bVar3, str8, str9, arrayList6, 0L, 0L, ea.f.BIGFOOT, System.currentTimeMillis(), jVar2.f6660j));
                i10 = 10;
                arrayList5 = arrayList7;
                it4 = it5;
                str3 = str10;
                aVarE2 = aVarE2;
            }
            str = str3;
            aVarE2.e(arrayList5);
            u7.a aVar5 = u7.a.f16021a;
            ((SharedPreferences) u7.a.f16022b.getValue()).edit().clear().commit();
        } else {
            str = "editor";
        }
        u7.a aVar6 = u7.a.f16021a;
        String string3 = ((SharedPreferences) u7.a.f16023c.getValue()).getString("last_known_shoe_color", null);
        if (string3 == null) {
            adaptDeviceColor = null;
        } else if (s.i0(string3, "LASER_ORANGE")) {
            adaptDeviceColor = new AdaptDeviceColor(AdaptMarshaller.AdaptPreset.TOTAL_ORANGE, AdaptDeviceLEDIntensityADK.HIGHEST);
        } else {
            try {
                adaptDeviceColor = (AdaptDeviceColor) GsonInstrumentation.fromJson(new e7.h(), string3, AdaptDeviceColor.class);
            } catch (e7.s unused3) {
                adaptDeviceColor = null;
            }
        }
        if (adaptDeviceColor != null) {
            u7.a aVar7 = u7.a.f16021a;
            if (adaptDeviceColor.getAdaptColorPreset() == null || adaptDeviceColor.getIntensity() == null) {
                adaptDeviceColor = new AdaptDeviceColor(AdaptMarshaller.AdaptPreset.HERO_BLUE, AdaptDeviceLEDIntensityADK.HIGHEST);
            }
            h8.c.f8298b.b0(AdaptShoeColor.Companion.create(adaptDeviceColor, adaptDeviceColor));
            SharedPreferences sharedPreferences2 = (SharedPreferences) u7.a.f16023c.getValue();
            p4.h.i(sharedPreferences2, "adaptPreferences");
            SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
            p4.h.i(editorEdit2, str);
            editorEdit2.remove("last_known_shoe_color");
            editorEdit2.apply();
        }
        ((h8.a) this.f5654o.getValue()).H();
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 26) {
            NotificationChannel notificationChannel = i14 >= 26 ? new NotificationChannel(l.f12400a.a(), o.r(R.string.adapt_notification_channel_firmware_name), 3) : null;
            if (notificationChannel != null) {
                ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
            }
            NotificationChannel notificationChannel2 = i14 >= 26 ? new NotificationChannel(l.f12402c, o.r(R.string.adapt_notification_channel_battery_name), 3) : null;
            if (notificationChannel2 != null) {
                ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel2);
            }
        }
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public final void onStart(q qVar) {
        f5646x = true;
        x xVar = x.f12420a;
        x.f12420a.h("BigfootApplication", "App detected in foreground", (120 & 4) != 0 ? o7.u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
        this.f5651l.set(true);
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public final void onStop(q qVar) {
        f5646x = false;
        PeripheralConnectionManager peripheralConnectionManager = PeripheralConnectionManager.f5666h;
        x xVar = x.f12420a;
        x.f12420a.h("BigfootApplication", "App detected in background", (120 & 4) != 0 ? o7.u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
        t8.a aVar = t8.a.f15561a;
        if (aVar.a().y() == 1) {
            aVar.a().V(aVar.a().G() + 1);
        }
        t8.a.f15563c = false;
        t8.a.f15564d = false;
        this.f5651l.set(false);
    }
}
