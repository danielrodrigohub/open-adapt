package ya;

import android.content.Intent;
import org.json.JSONException;
import v9.a2;
import v9.f2;
import v9.f4;
import v9.n4;
import v9.w3;
import v9.w4;
import v9.y1;
import v9.z3;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends rd.o implements qd.l<Intent, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v9.g f19095h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(v9.g gVar) {
        super(1);
        this.f19095h = gVar;
    }

    @Override // qd.l
    public final fd.o invoke(Intent intent) throws JSONException {
        Intent intent2 = intent;
        p4.h.j(intent2, "it");
        v9.g gVar = this.f19095h;
        p4.h.j(gVar, "result");
        if (gVar instanceof n4) {
            ia.c.e.f8990a.i(intent2, gVar);
        } else if (gVar instanceof a2) {
            ia.c.b.f8984a.i(intent2, gVar);
        } else if (gVar instanceof f2) {
            ia.c.C0175c.f8986a.i(intent2, gVar);
        } else if (gVar instanceof w4) {
            ia.c.f.f8992a.i(intent2, gVar);
        } else if (gVar instanceof f4) {
            ia.c.d.f8988a.i(intent2, gVar);
        } else if (gVar instanceof z3) {
            ia.c.h.f8996a.i(intent2, gVar);
        } else if (gVar instanceof w3) {
            ia.c.g.f8994a.i(intent2, gVar);
        } else if (gVar instanceof y1) {
            ia.c.a.f8982a.i(intent2, gVar);
        }
        return fd.o.f7408a;
    }
}
