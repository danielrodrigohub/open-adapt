package za;

import android.content.Intent;
import ea.m;
import java.util.List;
import java.util.NoSuchElementException;
import p4.h;
import qd.l;
import rd.o;
import v9.t;

/* JADX INFO: compiled from: AdaptKitCoreRF.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends o implements l<Intent, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ia.a<Object, ?, Object> f19468h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ a f19469i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ nc.c<Object, Object> f19470j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ia.a<Object, ?, Object> aVar, a aVar2, nc.c<Object, Object> cVar) {
        super(1);
        this.f19468h = aVar;
        this.f19469i = aVar2;
        this.f19470j = cVar;
    }

    @Override // qd.l
    public final fd.o invoke(Intent intent) {
        Intent intent2 = intent;
        h.j(intent2, "intent");
        ia.a<Object, ?, Object> aVar = this.f19468h;
        List<m> listF = t.f16822a.f();
        a aVar2 = this.f19469i;
        for (m mVar : listF) {
            if (h.c(mVar.f6664h, aVar2.f19454i)) {
                aVar.e(intent2, mVar, this.f19469i.f19458m, this.f19470j.getValue());
                return fd.o.f7408a;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }
}
