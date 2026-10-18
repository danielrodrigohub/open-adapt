package u6;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: Sets.java */
/* JADX INFO: loaded from: classes.dex */
public final class u0 extends b<Object> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Iterator<Object> f16000j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ v0.a f16001k;

    public u0(v0.a aVar) {
        this.f16001k = aVar;
        this.f16000j = aVar.f16007h.iterator();
    }

    @Override // u6.b
    @CheckForNull
    public final Object a() {
        while (this.f16000j.hasNext()) {
            Object next = this.f16000j.next();
            if (this.f16001k.f16008i.contains(next)) {
                return next;
            }
        }
        this.f15883h = 3;
        return null;
    }
}
