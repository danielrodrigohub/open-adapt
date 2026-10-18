package za;

import android.content.Intent;
import ea.m;
import java.util.List;
import java.util.NoSuchElementException;
import p4.h;
import qd.l;
import rd.o;
import v9.t;
import w9.u1;

/* JADX INFO: compiled from: AdaptKitCoreRF.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends o implements l<Intent, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ia.a<fd.o, ?, Object> f19466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ a f19467i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ia.a<fd.o, ?, Object> aVar, a aVar2) {
        super(1);
        this.f19466h = aVar;
        this.f19467i = aVar2;
    }

    @Override // qd.l
    public final fd.o invoke(Intent intent) {
        Intent intent2 = intent;
        h.j(intent2, "intent");
        ia.a<fd.o, ?, Object> aVar = this.f19466h;
        List<m> listF = t.f16822a.f();
        a aVar2 = this.f19467i;
        for (m mVar : listF) {
            if (h.c(mVar.f6664h, aVar2.f19454i)) {
                u1 u1Var = this.f19467i.f19458m;
                fd.o oVar = fd.o.f7408a;
                aVar.e(intent2, mVar, u1Var, oVar);
                return oVar;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }
}
