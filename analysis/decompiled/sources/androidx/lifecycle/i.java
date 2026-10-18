package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: Lifecycle.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicReference<Object> f2192a = new AtomicReference<>();

    /* JADX INFO: compiled from: Lifecycle.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f2194b;

        static {
            int[] iArr = new int[b.values().length];
            f2194b = iArr;
            try {
                iArr[b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2194b[b.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2194b[b.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2194b[b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2194b[b.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2194b[b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2194b[b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[c.values().length];
            f2193a = iArr2;
            try {
                iArr2[2] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2193a[3] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2193a[4] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2193a[0] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2193a[1] = 5;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: compiled from: Lifecycle.java */
    public enum b {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static b b(c cVar) {
            int iOrdinal = cVar.ordinal();
            if (iOrdinal == 2) {
                return ON_DESTROY;
            }
            if (iOrdinal == 3) {
                return ON_STOP;
            }
            if (iOrdinal != 4) {
                return null;
            }
            return ON_PAUSE;
        }

        public static b i(c cVar) {
            int iOrdinal = cVar.ordinal();
            if (iOrdinal == 1) {
                return ON_CREATE;
            }
            if (iOrdinal == 2) {
                return ON_START;
            }
            if (iOrdinal != 3) {
                return null;
            }
            return ON_RESUME;
        }

        public static b j(c cVar) {
            int iOrdinal = cVar.ordinal();
            if (iOrdinal == 2) {
                return ON_CREATE;
            }
            if (iOrdinal == 3) {
                return ON_START;
            }
            if (iOrdinal != 4) {
                return null;
            }
            return ON_RESUME;
        }

        public final c g() {
            switch (a.f2194b[ordinal()]) {
                case 1:
                case 2:
                    return c.CREATED;
                case 3:
                case 4:
                    return c.STARTED;
                case 5:
                    return c.RESUMED;
                case 6:
                    return c.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* JADX INFO: compiled from: Lifecycle.java */
    public enum c {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public final boolean b(c cVar) {
            return compareTo(cVar) >= 0;
        }
    }

    public abstract void a(p pVar);

    public abstract c b();

    public abstract void c(p pVar);
}
