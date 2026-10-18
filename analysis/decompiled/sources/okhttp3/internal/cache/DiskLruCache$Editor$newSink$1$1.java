package okhttp3.internal.cache;

import java.io.IOException;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: DiskLruCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DiskLruCache$Editor$newSink$1$1 extends o implements l<IOException, fd.o> {
    public final /* synthetic */ DiskLruCache this$0;
    public final /* synthetic */ DiskLruCache.Editor this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$Editor$newSink$1$1(DiskLruCache diskLruCache, DiskLruCache.Editor editor) {
        super(1);
        this.this$0 = diskLruCache;
        this.this$1 = editor;
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
        DiskLruCache.Editor editor = this.this$1;
        synchronized (diskLruCache) {
            editor.detach$okhttp();
        }
    }
}
