package xd;

import androidx.lifecycle.o;
import java.util.Iterator;
import qd.p;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements d<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f18136a;

    public h(p pVar) {
        this.f18136a = pVar;
    }

    @Override // xd.d
    public final Iterator<Object> iterator() {
        p pVar = this.f18136a;
        p4.h.j(pVar, "block");
        e eVar = new e();
        eVar.f18135j = o.j(pVar, eVar, eVar);
        return eVar;
    }
}
