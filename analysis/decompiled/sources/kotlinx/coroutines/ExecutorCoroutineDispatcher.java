package kotlinx.coroutines;

import java.io.Closeable;
import jd.b;
import jd.f;
import qd.l;
import rd.h;
import rd.o;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ExecutorCoroutineDispatcher extends CoroutineDispatcher implements Closeable {
    public static final Key Key = new Key(null);

    /* JADX INFO: compiled from: Executors.kt */
    public static final class Key extends b<CoroutineDispatcher, ExecutorCoroutineDispatcher> {

        /* JADX INFO: renamed from: kotlinx.coroutines.ExecutorCoroutineDispatcher$Key$1, reason: invalid class name */
        /* JADX INFO: compiled from: Executors.kt */
        public static final class AnonymousClass1 extends o implements l<f.a, ExecutorCoroutineDispatcher> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            public AnonymousClass1() {
                super(1);
            }

            @Override // qd.l
            public final ExecutorCoroutineDispatcher invoke(f.a aVar) {
                if (aVar instanceof ExecutorCoroutineDispatcher) {
                    return (ExecutorCoroutineDispatcher) aVar;
                }
                return null;
            }
        }

        private Key() {
            super(CoroutineDispatcher.Key, AnonymousClass1.INSTANCE);
        }

        public /* synthetic */ Key(h hVar) {
            this();
        }
    }
}
