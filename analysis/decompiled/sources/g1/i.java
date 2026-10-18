package g1;

import a2.t;
import android.graphics.Path;
import android.graphics.PathMeasure;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ViewGroupOverlayApi18.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f7550a = new ArrayList();

    public final void a(t tVar) {
        ((List) this.f7550a).add(tVar);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [b2.a<?, java.lang.Float>, b2.d] */
    /* JADX WARN: Type inference failed for: r2v2, types: [b2.a<?, java.lang.Float>, b2.d] */
    /* JADX WARN: Type inference failed for: r3v0, types: [b2.a<?, java.lang.Float>, b2.d] */
    public final void b(Path path) {
        int size = ((List) this.f7550a).size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            t tVar = (t) ((List) this.f7550a).get(size);
            ThreadLocal<PathMeasure> threadLocal = k2.g.f9638a;
            if (tVar != null && !tVar.f197a) {
                k2.g.a(path, tVar.f200d.l() / 100.0f, tVar.f201e.l() / 100.0f, tVar.f202f.l() / 360.0f);
            }
        }
    }
}
