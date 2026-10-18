package rc;

import androidx.lifecycle.o;
import hc.g0;
import p4.h;

/* JADX INFO: compiled from: FirmwareUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements nc.c<String, Integer> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f14756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ b f14757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ d f14758j;

    public e(String str, b bVar, d dVar) {
        this.f14756h = str;
        this.f14757i = bVar;
        this.f14758j = dVar;
    }

    @Override // nc.c
    public final Integer getValue() {
        return Integer.valueOf(this.f14757i.f14755h);
    }

    @Override // lc.b
    public final void j(Object obj) {
        String str = (String) obj;
        h.j(str, "response");
        g0.a.a(o.q(), this.f14756h + " Slot Id : " + this.f14757i + " Version : " + str, null, true, " IMAGE_STATS", 2, null);
        this.f14758j.a(str);
    }

    @Override // lc.b
    public final void k(Throwable th) {
        h.j(th, "throwable");
        if (th instanceof kc.e) {
            g0.a.a(o.q(), a1.f.d(new StringBuilder(), this.f14756h, " : InvalidFirmwareStatusInSlotException"), null, true, " IMAGE_STATS", 2, null);
            this.f14758j.a("SLOT_IMAGE_PARTIAL");
        } else {
            g0.a.a(o.q(), a1.f.d(new StringBuilder(), this.f14756h, " : InvalidNumberOfZerosDetectedException"), null, true, " IMAGE_STATS", 2, null);
            this.f14758j.a("SLOT_IMAGE_EMPTY");
        }
    }
}
