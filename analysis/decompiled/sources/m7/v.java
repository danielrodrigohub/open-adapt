package m7;

/* JADX INFO: compiled from: GeneratedMessageInfoFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class v implements o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f10783a = new v();

    @Override // m7.o0
    public final n0 a(Class<?> cls) {
        if (!w.class.isAssignableFrom(cls)) {
            StringBuilder sbC = a0.b.c("Unsupported message type: ");
            sbC.append(cls.getName());
            throw new IllegalArgumentException(sbC.toString());
        }
        try {
            return (n0) w.p(cls.asSubclass(w.class)).o(w.f.BUILD_MESSAGE_INFO);
        } catch (Exception e10) {
            StringBuilder sbC2 = a0.b.c("Unable to get message info for ");
            sbC2.append(cls.getName());
            throw new RuntimeException(sbC2.toString(), e10);
        }
    }

    @Override // m7.o0
    public final boolean b(Class<?> cls) {
        return w.class.isAssignableFrom(cls);
    }
}
