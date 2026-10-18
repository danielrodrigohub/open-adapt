package kotlinx.coroutines;

import jd.f;

/* JADX INFO: compiled from: CoroutineExceptionHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public interface CoroutineExceptionHandler extends f.a {
    public static final Key Key = Key.$$INSTANCE;

    /* JADX INFO: compiled from: CoroutineExceptionHandler.kt */
    public static final class Key implements f.b<CoroutineExceptionHandler> {
        public static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    void handleException(f fVar, Throwable th);
}
