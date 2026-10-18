package rc;

import androidx.lifecycle.o;
import hc.g0;
import hc.l0;
import p4.h;

/* JADX INFO: compiled from: FirmwareUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f14759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f14760b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l0 f14761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c f14762d;

    /* JADX INFO: compiled from: FirmwareUtil.kt */
    public static final class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f14763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f14764b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ l0 f14765c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f14766d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ c f14767e;

        /* JADX INFO: renamed from: rc.f$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FirmwareUtil.kt */
        public static final class C0253a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ String f14768a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ boolean f14769b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f14770c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ String f14771d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ c f14772e;

            public C0253a(String str, boolean z10, String str2, String str3, c cVar) {
                this.f14768a = str;
                this.f14769b = z10;
                this.f14770c = str2;
                this.f14771d = str3;
                this.f14772e = cVar;
            }

            @Override // rc.d
            public final void a(String str) {
                h.j(str, "version");
                g0.a.a(o.q(), this.f14768a + " : Querying isGold = " + this.f14769b + " CAPSENSE", null, true, " IMAGE_STATS", 2, null);
                String str2 = this.f14770c;
                String str3 = this.f14771d;
                h.j(str2, "mcu");
                h.j(str3, "ble");
                if ((str2.equals("SLOT_IMAGE_EMPTY") || str3.equals("SLOT_IMAGE_EMPTY") || str.equals("SLOT_IMAGE_EMPTY") || str2.equals("SLOT_IMAGE_PARTIAL") || str3.equals("SLOT_IMAGE_PARTIAL") || str.equals("SLOT_IMAGE_PARTIAL") || !str2.equals(str3) || !str3.equals(str) || !str.equals(str2)) ? false : true) {
                    g0.a.a(o.q(), this.f14768a + " : Valid images in all the slots:isGold = " + this.f14769b, null, true, " IMAGE_STATS", 2, null);
                    this.f14772e.a(true);
                    return;
                }
                g0.a.a(o.q(), this.f14768a + " : isGold = " + this.f14769b + ", update required", null, true, " IMAGE_STATS", 2, null);
                this.f14772e.a(false);
            }
        }

        public a(String str, boolean z10, l0 l0Var, String str2, c cVar) {
            this.f14763a = str;
            this.f14764b = z10;
            this.f14765c = l0Var;
            this.f14766d = str2;
            this.f14767e = cVar;
        }

        @Override // rc.d
        public final void a(String str) {
            h.j(str, "version");
            g0.a.a(o.q(), this.f14763a + " : Querying isGold = " + this.f14764b + " BLE", null, true, " IMAGE_STATS", 2, null);
            l0 l0Var = this.f14765c;
            String str2 = this.f14763a;
            boolean z10 = this.f14764b;
            l0Var.X(new e(str2, z10 ? b.CS_IMAGE_GOLD : b.CS_IMAGE_UPDATE, new C0253a(str2, z10, this.f14766d, str, this.f14767e)));
        }
    }

    public f(String str, l0 l0Var, c cVar) {
        this.f14759a = str;
        this.f14761c = l0Var;
        this.f14762d = cVar;
    }

    @Override // rc.d
    public final void a(String str) {
        h.j(str, "version");
        g0.a.a(o.q(), this.f14759a + " : Querying isGold = " + this.f14760b + " MCU", null, true, " IMAGE_STATS", 2, null);
        l0 l0Var = this.f14761c;
        String str2 = this.f14759a;
        boolean z10 = this.f14760b;
        l0Var.X(new e(str2, z10 ? b.BLE_IMAGE_GOLD : b.BLE_IMAGE_UPDATE, new a(str2, z10, l0Var, str, this.f14762d)));
    }
}
