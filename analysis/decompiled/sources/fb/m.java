package fb;

import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import w9.u1;

/* JADX INFO: compiled from: FirmwareTelemetry.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ea.m f7264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final eb.e f7265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile String f7266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile String f7267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile String f7268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile int f7269f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile int f7270g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f7271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile long f7272i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final fa.c f7273j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile fa.d f7274k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Object f7275l;

    /* JADX INFO: compiled from: FirmwareTelemetry.kt */
    public static final class a implements eb.d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Map<String, String> f7276h;

        public a(Map<String, String> map) {
            this.f7276h = map;
        }

        @Override // eb.d
        public final String b() {
            return "FW_TELEMETRY";
        }

        @Override // eb.d
        public final Map<String, String> m() {
            return this.f7276h;
        }
    }

    public m(ea.m mVar) {
        eb.f fVar = eb.f.f6710a;
        String string = UUID.randomUUID().toString();
        p4.h.i(string, "randomUUID().toString()");
        String string2 = UUID.randomUUID().toString();
        p4.h.i(string2, "randomUUID().toString()");
        String string3 = UUID.randomUUID().toString();
        p4.h.i(string3, "randomUUID().toString()");
        long jCurrentTimeMillis = System.currentTimeMillis();
        c.a aVar = c.f7253i;
        c cVar = c.f7254j;
        fa.c cVar2 = new fa.c(cVar, new fa.n.c(cVar), fa.k.r.f7221h);
        fa.d dVar = new fa.d(cVar2, cVar2);
        androidx.appcompat.widget.o.d(1, "fwTelemetryState");
        this.f7264a = mVar;
        this.f7265b = fVar;
        this.f7266c = string;
        this.f7267d = string2;
        this.f7268e = string3;
        this.f7269f = 0;
        this.f7270g = 0;
        this.f7271h = 1;
        this.f7272i = jCurrentTimeMillis;
        this.f7273j = cVar2;
        this.f7274k = dVar;
        this.f7275l = new Object();
    }

    public final boolean a(u1 u1Var, fa.d dVar) {
        fa.d dVar2 = this.f7274k;
        Objects.requireNonNull(dVar2);
        p4.h.j(u1Var, "shoe");
        fa.c cVar = u1Var.b() ? dVar2.f7137h : dVar2.f7138i;
        fa.c cVar2 = u1Var.b() ? dVar.f7137h : dVar.f7138i;
        if (!p4.h.c(cVar, cVar2) && cVar.f7136j.h() != fa.k.c0.COMPLETED_SUCCESS) {
            fa.k kVar = cVar2.f7136j;
            if (!(kVar instanceof fa.k.b0) || !(cVar.f7136j instanceof fa.k.b0)) {
                return true;
            }
            if (u1Var.b()) {
                fa.k.b0 b0Var = (fa.k.b0) kVar;
                if (((int) b0Var.f7186h) != this.f7269f) {
                    this.f7269f = (int) b0Var.f7186h;
                    return true;
                }
            } else {
                fa.k.b0 b0Var2 = (fa.k.b0) kVar;
                if (((int) b0Var2.f7186h) != this.f7270g) {
                    this.f7270g = (int) b0Var2.f7186h;
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<String, String> b(u1 u1Var, fa.d dVar) {
        fd.e eVar;
        u1 u1Var2;
        fa.c cVar = dVar.f7137h;
        fd.e eVar2 = new fd.e("FW_VERSION_CURRENT_LEFT", cVar.f7134h.f7257h);
        fd.e eVar3 = new fd.e("FW_VERSION_CURRENT_RIGHT", dVar.f7138i.f7134h.f7257h);
        fd.e eVar4 = new fd.e("FW_VERSION_TARGET_LEFT", cVar.f7135i.b());
        fd.e eVar5 = new fd.e("FW_VERSION_TARGET_RIGHT", dVar.f7138i.f7135i.b());
        ea.m mVar = this.f7264a;
        fd.e eVar6 = new fd.e("LEFT_IDENTIFIER", mVar.f6667k.f6612j);
        fd.e eVar7 = new fd.e("RIGHT_IDENTIFIER", mVar.f6668l.f6612j);
        fd.e eVar8 = new fd.e("FW_UPGRADE_UUID", this.f7268e);
        fd.e eVar9 = new fd.e("FW_DURATION_MILLIS", String.valueOf(System.currentTimeMillis() - this.f7272i));
        ea.m mVar2 = this.f7264a;
        fd.e eVar10 = new fd.e("PAIR_IDENTIFIERS", a0.d.c(mVar2.f6667k.f6612j, ",", mVar2.f6668l.f6612j));
        fd.e eVar11 = null;
        if (u1Var != null) {
            eVar = new fd.e("CURRENT_IDENTIFIER", (u1Var.b() ? this.f7264a.f6667k : this.f7264a.f6668l).f6612j);
        } else {
            eVar = null;
        }
        if (u1Var != null) {
            u1Var2 = u1Var.b() ? u1.RIGHT : u1.LEFT;
        } else {
            u1Var2 = null;
        }
        fd.e eVar12 = u1Var2 != null ? new fd.e("FW_UPGRADE_TELEMETRY_OTHER", c(u1Var2, dVar)) : null;
        if (u1Var != null) {
            eVar11 = new fd.e("FW_UPGRADE_LE_UUID", u1Var.b() ? this.f7266c : this.f7267d);
        }
        Map<String, String> mapA = gd.z.A(eVar2, eVar3, eVar4, eVar5, eVar6, eVar7, eVar8, eVar9, eVar10);
        if (eVar != null) {
            mapA.put(eVar.f7388h, eVar.f7389i);
        }
        if (eVar12 != null) {
            mapA.put(eVar12.f7388h, eVar12.f7389i);
        }
        if (eVar11 != null) {
            mapA.put(eVar11.f7388h, eVar11.f7389i);
        }
        return mapA;
    }

    public final String c(u1 u1Var, fa.d dVar) {
        p4.h.j(u1Var, "shoe");
        fa.k kVar = (u1Var.b() ? dVar.f7137h : dVar.f7138i).f7136j;
        if (kVar instanceof fa.k.o) {
            return "FW_TELEMETRY_START";
        }
        if (kVar instanceof fa.k.a) {
            return "FW_ALREADY_UP_TO_DATE";
        }
        if (kVar instanceof fa.k.x) {
            return androidx.recyclerview.widget.d.c("FW_UPGRADE_FAIL", ((fa.k.x) kVar).f7229h);
        }
        if (kVar instanceof fa.k.m) {
            return "FW_FLASH_FAIL";
        }
        if (kVar instanceof fa.k.n) {
            return "FW_FLASH_SUCCESS";
        }
        if (kVar instanceof fa.k.y) {
            return "FW_UPGRADE_COMPLETE";
        }
        if (kVar instanceof fa.k.r) {
            return "FW_NO_UPGRADE_IN_PROCESS";
        }
        if (kVar instanceof fa.k.c) {
            return "FW_CHECK_UPDATE_STATUS";
        }
        if (kVar instanceof fa.k.t) {
            return "FW_READY_TO_FLASH";
        }
        if (kVar instanceof fa.k.u) {
            return "FW_RECONNECTED";
        }
        if (kVar instanceof fa.k.b0) {
            return "FW_UPLOAD_PROGRESS + " + ((fa.k.b0) kVar).f7186h;
        }
        if (kVar instanceof fa.k.s) {
            return "FW_LE_POST_UPLOAD_SLOT_CHECK" + kVar;
        }
        if (kVar instanceof fa.k.b) {
            return "FW_BATTERY_TOO_LOW";
        }
        if (kVar instanceof fa.k.d) {
            return "FW_STATUS_CHECK_ERROR";
        }
        if (kVar instanceof fa.k.h) {
            return "FW_CONNECTION_LOST";
        }
        if (kVar instanceof fa.k.j) {
            return "FW_DOWNLOAD_COMPLETE";
        }
        if (kVar instanceof fa.k.C0135k) {
            return "FW_DOWNLOAD_FAIL";
        }
        if (kVar instanceof fa.k.l) {
            return "FW_DOWNLOAD_START";
        }
        if (kVar instanceof fa.k.p) {
            return "FW_MD5_FAIL";
        }
        if (kVar instanceof fa.k.q) {
            return "FW_MD5_PASS";
        }
        if (kVar instanceof fa.k.v) {
            return "FW_UP_TO_DATE";
        }
        if (kVar instanceof fa.k.w) {
            return "FW_UPGRADE_AVAILABLE";
        }
        if (kVar instanceof fa.k.z) {
            return "FW_UPLOAD_COMPLETE";
        }
        if (kVar instanceof fa.k.a0.b) {
            return androidx.recyclerview.widget.d.c("FW_UPLOAD_STOPPED", ((fa.k.a0.b) kVar).f7183i);
        }
        if (kVar instanceof fa.k.a0.a) {
            return "FW_LE_UP_LOAD_SLOT_CHECK_FAIL" + kVar;
        }
        if (kVar instanceof fa.k.a0.c) {
            return "FW_UPLOAD_USER_CANCEL";
        }
        if (kVar instanceof fa.k.g) {
            return "FW_CHECK_UPGRADE_SLOTS" + kVar;
        }
        if (kVar instanceof fa.k.e) {
            return "FW_UPGRADE_SLOT_CHECK_ALREADY_STAGED";
        }
        if (kVar instanceof fa.k.f) {
            return "FW_UPGRADE_SLOT_CHECK_UPLOAD_REQUIRED";
        }
        throw new j2.a();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0064 A[PHI: r9
      0x0064: PHI (r9v28 w9.u1) = (r9v2 w9.u1), (r9v29 w9.u1), (r9v31 w9.u1) binds: [B:27:0x0062, B:24:0x0059, B:21:0x0050] A[DONT_GENERATE, DONT_INLINE]] */
    public final void d(u1 u1Var, fa.d dVar) {
        u1 u1Var2;
        if ((dVar.f7138i.f7136j instanceof fa.k.r) && (dVar.f7137h.f7136j instanceof fa.k.r)) {
            d3.e.j().b("FW_TELEMETRY", "Attempting to log states when upgrade not started");
            return;
        }
        if (this.f7271h == 2) {
            d3.e.j().b("FW_TELEMETRY", "Attempting to log states when upgrade has already been marked completed");
            return;
        }
        int iOrdinal = u1Var.ordinal();
        boolean z10 = true;
        if (iOrdinal == 0) {
            u1Var2 = u1.LEFT;
            if (a(u1Var2, dVar)) {
                f(u1Var2, dVar);
            }
        } else if (iOrdinal == 1) {
            u1Var2 = u1.RIGHT;
            if (a(u1Var2, dVar)) {
                f(u1Var2, dVar);
            }
        } else if (iOrdinal == 2) {
            u1 u1Var3 = u1.LEFT;
            if (a(u1Var3, dVar)) {
                f(u1Var3, dVar);
            }
            u1Var2 = u1.RIGHT;
            if (a(u1Var2, dVar)) {
                f(u1Var2, dVar);
            }
        }
        if (!dVar.f7137h.f7136j.h().b() && !dVar.f7138i.f7136j.h().b()) {
            fa.k.c0 c0VarH = dVar.f7137h.f7136j.h();
            Objects.requireNonNull(c0VarH);
            fa.k.c0 c0Var = fa.k.c0.UPDATING_ERROR;
            if (!(c0VarH == c0Var)) {
                return;
            }
            fa.k.c0 c0VarH2 = dVar.f7138i.f7136j.h();
            Objects.requireNonNull(c0VarH2);
            if (!(c0VarH2 == c0Var)) {
                return;
            }
        }
        this.f7271h = 2;
        fa.k kVar = dVar.f7137h.f7136j;
        boolean z11 = kVar instanceof fa.k.a;
        boolean z12 = z11 || (kVar instanceof fa.k.y);
        if (!z11 && !(kVar instanceof fa.k.y)) {
            z10 = false;
        }
        Map<String, String> mapB = b(null, dVar);
        if (z10 && z12) {
            mapB.put("FW_UPGRADE_TELEMETRY", "FW_UPGRADE_OVERALL_SUCCESSFUL");
        } else {
            mapB.put("FW_UPGRADE_TELEMETRY", "FW_UPGRADE_OVERALL_FAILED");
        }
        mapB.put("FW_STATE_LEFT", c(u1.LEFT, dVar));
        mapB.put("FW_STATE_RIGHT", c(u1.RIGHT, dVar));
        e(mapB);
    }

    public final void e(Map<String, String> map) {
        this.f7265b.a(new eb.c(new a(map)));
    }

    public final void f(u1 u1Var, fa.d dVar) {
        fa.c cVar = u1Var.b() ? dVar.f7137h : dVar.f7138i;
        fa.d dVar2 = this.f7274k;
        fa.c cVar2 = dVar2.f7137h;
        fa.c cVar3 = dVar2.f7138i;
        p4.h.j(cVar2, "leftFirmwareUpdate");
        p4.h.j(cVar3, "rightFirmwareUpdate");
        fa.d dVar3 = new fa.d(cVar2, cVar3);
        Map<String, String> mapB = b(u1Var, dVar);
        mapB.put("FW_UPGRADE_TELEMETRY", c(u1Var, dVar));
        fa.k kVar = cVar.f7136j;
        if (kVar instanceof fa.f) {
            fa.f fVar = (fa.f) kVar;
            mapB.put("BATTERY_PERCENT", String.valueOf(fVar.getBattery().f3631h));
            mapB.put("BATTERY_STATE", fVar.getBattery().f3632i.f3639h);
            mapB.put("BATTERY_THRESHOLD", "30");
        }
        if (kVar instanceof fa.o) {
            fa.o oVar = (fa.o) kVar;
            mapB.put("FW_MCU_STATE", oVar.y().f7242h.a());
            mapB.put("FW_BLE_STATE", oVar.p().f7232h.a());
            mapB.put("FW_CAPSENSE_STATE", oVar.o().f7233h.a());
        }
        if (kVar instanceof fa.h) {
            mapB.put("FW_ERROR_MESSAGE", ((fa.h) kVar).b());
        }
        if (kVar instanceof fa.k.h) {
            mapB.put("FW_STATE_LEFT", c(u1.LEFT, dVar3));
            mapB.put("FW_STATE_RIGHT", c(u1.RIGHT, dVar3));
        }
        e(mapB);
    }

    public final void g(Map<String, String> map, u1 u1Var, ea.m mVar) {
        int iOrdinal = u1Var.ordinal();
        if (iOrdinal == 0) {
            map.put("CURRENT_IDENTIFIER", mVar.f6667k.f6612j);
            e(map);
            return;
        }
        if (iOrdinal == 1) {
            map.put("CURRENT_IDENTIFIER", mVar.f6668l.f6612j);
            e(map);
        } else {
            if (iOrdinal != 2) {
                return;
            }
            Map<String, String> mapF = gd.z.F(map);
            mapF.put("CURRENT_IDENTIFIER", mVar.f6667k.f6612j);
            e(mapF);
            Map<String, String> mapF2 = gd.z.F(map);
            mapF2.put("CURRENT_IDENTIFIER", mVar.f6668l.f6612j);
            e(mapF2);
        }
    }
}
