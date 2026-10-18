package kotlinx.coroutines;

import jd.a;
import jd.f;
import rd.h;

/* JADX INFO: compiled from: Unconfined.kt */
/* JADX INFO: loaded from: classes.dex */
public final class YieldContext extends a {
    public static final Key Key = new Key(null);
    public boolean dispatcherWasUnconfined;

    /* JADX INFO: compiled from: Unconfined.kt */
    public static final class Key implements f.b<YieldContext> {
        private Key() {
        }

        public /* synthetic */ Key(h hVar) {
            this();
        }
    }

    public YieldContext() {
        super(Key);
    }
}
