package ya;

import android.content.Intent;
import org.json.JSONException;
import v9.d4;
import v9.m4;
import v9.u3;
import v9.u4;
import v9.w1;
import v9.x3;
import v9.z1;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s extends rd.o implements qd.l<Intent, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v9.f f19090h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(v9.f fVar) {
        super(1);
        this.f19090h = fVar;
    }

    @Override // qd.l
    public final fd.o invoke(Intent intent) throws JSONException {
        Intent intent2 = intent;
        p4.h.j(intent2, "it");
        v9.f fVar = this.f19090h;
        p4.h.j(fVar, "error");
        if (fVar instanceof m4) {
            ia.c.e.f8990a.g(intent2, fVar);
        } else if (fVar instanceof z1) {
            ia.c.b.f8984a.g(intent2, fVar);
        } else if (fVar instanceof u4) {
            ia.c.f.f8992a.g(intent2, fVar);
        } else if (fVar instanceof d4) {
            ia.c.d.f8988a.g(intent2, fVar);
        } else if (fVar instanceof x3) {
            ia.c.h.f8996a.g(intent2, fVar);
        } else if (fVar instanceof u3) {
            ia.c.g.f8994a.g(intent2, fVar);
        } else if (fVar instanceof w1) {
            ia.c.a.f8982a.g(intent2, fVar);
        }
        return fd.o.f7408a;
    }
}
