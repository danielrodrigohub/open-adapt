package kotlinx.coroutines;

import fd.o;
import qd.l;

/* JADX INFO: compiled from: CompletionHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class CancelHandlerBase implements l<Throwable, o> {
    public abstract void invoke(Throwable th);
}
