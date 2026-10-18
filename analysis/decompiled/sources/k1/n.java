package k1;

import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;

/* JADX INFO: compiled from: OneTimeWorkRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends r {

    /* JADX INFO: compiled from: OneTimeWorkRequest.java */
    public static final class a extends r.a<a, n> {
        public a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f9620b.f15353d = OverwritingInputMerger.class.getName();
        }
    }

    public n(a aVar) {
        super(aVar.f9619a, aVar.f9620b, aVar.f9621c);
    }
}
