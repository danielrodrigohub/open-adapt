package g0;

import java.util.ArrayList;

/* JADX INFO: compiled from: FontRequestWorker.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements i0.a<k.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f7505a;

    public j(String str) {
        this.f7505a = str;
    }

    @Override // i0.a
    public final void b(k.a aVar) {
        k.a aVar2 = aVar;
        synchronized (k.f7508c) {
            p.g<String, ArrayList<i0.a<k.a>>> gVar = k.f7509d;
            ArrayList<i0.a<k.a>> orDefault = gVar.getOrDefault(this.f7505a, null);
            if (orDefault == null) {
                return;
            }
            gVar.remove(this.f7505a);
            for (int i10 = 0; i10 < orDefault.size(); i10++) {
                orDefault.get(i10).b(aVar2);
            }
        }
    }
}
