package u6;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: Iterators.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends b<Object> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Iterator f15885j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ t6.i f15886k;

    public b0(Iterator it, t6.i iVar) {
        this.f15885j = it;
        this.f15886k = iVar;
    }

    @Override // u6.b
    @CheckForNull
    public final Object a() {
        while (this.f15885j.hasNext()) {
            Object next = this.f15885j.next();
            if (this.f15886k.apply(next)) {
                return next;
            }
        }
        this.f15883h = 3;
        return null;
    }
}
