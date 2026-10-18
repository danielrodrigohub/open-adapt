package u1;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: CancelWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ l1.k f15621i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f15622j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f15623k;

    public b(l1.k kVar, String str, boolean z10) {
        this.f15621i = kVar;
        this.f15622j = str;
        this.f15623k = z10;
    }

    @Override // u1.c
    public final void b() {
        WorkDatabase workDatabase = this.f15621i.f9855c;
        workDatabase.c();
        try {
            Iterator it = ((ArrayList) ((t1.q) workDatabase.w()).g(this.f15622j)).iterator();
            while (it.hasNext()) {
                a(this.f15621i, (String) it.next());
            }
            workDatabase.p();
            workDatabase.l();
            if (this.f15623k) {
                l1.k kVar = this.f15621i;
                l1.f.a(kVar.f9854b, kVar.f9855c, kVar.f9857e);
            }
        } catch (Throwable th) {
            workDatabase.l();
            throw th;
        }
    }
}
