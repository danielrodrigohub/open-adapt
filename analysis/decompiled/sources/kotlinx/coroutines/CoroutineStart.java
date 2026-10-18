package kotlinx.coroutines;

import androidx.lifecycle.o;
import j2.a;
import jd.d;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: CoroutineStart.kt */
/* JADX INFO: loaded from: classes.dex */
public enum CoroutineStart {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    /* JADX INFO: compiled from: CoroutineStart.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CoroutineStart.values().length];
            iArr[CoroutineStart.DEFAULT.ordinal()] = 1;
            iArr[CoroutineStart.ATOMIC.ordinal()] = 2;
            iArr[CoroutineStart.UNDISPATCHED.ordinal()] = 3;
            iArr[CoroutineStart.LAZY.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final <R, T> void invoke(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar) throws Throwable {
        int i10 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i10 == 1) {
            CancellableKt.startCoroutineCancellable$default(pVar, r10, dVar, null, 4, null);
            return;
        }
        if (i10 == 2) {
            h.j(pVar, "<this>");
            h.j(dVar, "completion");
            o.t(o.j(pVar, r10, dVar)).resumeWith(fd.o.f7408a);
        } else if (i10 == 3) {
            UndispatchedKt.startCoroutineUndispatched(pVar, r10, dVar);
        } else if (i10 != 4) {
            throw new a();
        }
    }

    public final boolean isLazy() {
        return this == LAZY;
    }
}
