package u1;

import androidx.work.impl.WorkDatabase;
import java.util.UUID;

/* JADX INFO: compiled from: CancelWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ l1.k f15619i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ UUID f15620j;

    public a(l1.k kVar, UUID uuid) {
        this.f15619i = kVar;
        this.f15620j = uuid;
    }

    @Override // u1.c
    public final void b() {
        WorkDatabase workDatabase = this.f15619i.f9855c;
        workDatabase.c();
        try {
            a(this.f15619i, this.f15620j.toString());
            workDatabase.p();
            workDatabase.l();
            l1.k kVar = this.f15619i;
            l1.f.a(kVar.f9854b, kVar.f9855c, kVar.f9857e);
        } catch (Throwable th) {
            workDatabase.l();
            throw th;
        }
    }
}
