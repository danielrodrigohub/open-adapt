package okhttp3.internal.cache;

import a0.b;
import java.io.IOException;
import okhttp3.internal._UtilJvmKt;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: DiskLruCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DiskLruCache$newJournalWriter$faultHidingSink$1 extends o implements l<IOException, fd.o> {
    public final /* synthetic */ DiskLruCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$newJournalWriter$faultHidingSink$1(DiskLruCache diskLruCache) {
        super(1);
        this.this$0 = diskLruCache;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(IOException iOException) {
        invoke2(iOException);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(IOException iOException) {
        h.j(iOException, "it");
        DiskLruCache diskLruCache = this.this$0;
        if (!_UtilJvmKt.assertionsEnabled || Thread.holdsLock(diskLruCache)) {
            this.this$0.hasJournalErrors = true;
            return;
        }
        StringBuilder sbC = b.c("Thread ");
        sbC.append(Thread.currentThread().getName());
        sbC.append(" MUST hold lock on ");
        sbC.append(diskLruCache);
        throw new AssertionError(sbC.toString());
    }
}
