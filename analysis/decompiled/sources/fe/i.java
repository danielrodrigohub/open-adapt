package fe;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: PendingPost.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List<i> f7455d = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f7456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o f7457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f7458c;

    public i(Object obj, o oVar) {
        this.f7456a = obj;
        this.f7457b = oVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<fe.i>] */
    public static i a(o oVar, Object obj) {
        ?? r10 = f7455d;
        synchronized (r10) {
            int size = r10.size();
            if (size <= 0) {
                return new i(obj, oVar);
            }
            i iVar = (i) r10.remove(size - 1);
            iVar.f7456a = obj;
            iVar.f7457b = oVar;
            iVar.f7458c = null;
            return iVar;
        }
    }
}
