package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class FullLifecycleObserverAdapter implements n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f2093h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n f2094i;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2095a;

        static {
            int[] iArr = new int[i.b.values().length];
            f2095a = iArr;
            try {
                iArr[i.b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2095a[i.b.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2095a[i.b.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2095a[i.b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2095a[i.b.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2095a[i.b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2095a[i.b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(e eVar, n nVar) {
        this.f2093h = eVar;
        this.f2094i = nVar;
    }

    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        switch (a.f2095a[bVar.ordinal()]) {
            case 1:
                this.f2093h.onCreate(qVar);
                break;
            case 2:
                this.f2093h.onStart(qVar);
                break;
            case 3:
                this.f2093h.onResume(qVar);
                break;
            case 4:
                this.f2093h.onPause(qVar);
                break;
            case 5:
                this.f2093h.onStop(qVar);
                break;
            case 6:
                this.f2093h.onDestroy(qVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        n nVar = this.f2094i;
        if (nVar != null) {
            nVar.a(qVar, bVar);
        }
    }
}
