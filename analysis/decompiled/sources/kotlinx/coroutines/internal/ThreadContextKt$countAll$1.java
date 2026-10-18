package kotlinx.coroutines.internal;

import jd.f;
import kotlinx.coroutines.ThreadContextElement;
import qd.p;
import rd.o;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadContextKt$countAll$1 extends o implements p<Object, f.a, Object> {
    public static final ThreadContextKt$countAll$1 INSTANCE = new ThreadContextKt$countAll$1();

    public ThreadContextKt$countAll$1() {
        super(2);
    }

    @Override // qd.p
    public final Object invoke(Object obj, f.a aVar) {
        if (!(aVar instanceof ThreadContextElement)) {
            return obj;
        }
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 1;
        return iIntValue == 0 ? aVar : Integer.valueOf(iIntValue + 1);
    }
}
