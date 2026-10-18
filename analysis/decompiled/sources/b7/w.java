package b7;

/* JADX INFO: compiled from: GeneratedMessageInfoFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class w implements p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f3547a = new w();

    @Override // b7.p0
    public final o0 a(Class<?> cls) {
        if (!x.class.isAssignableFrom(cls)) {
            StringBuilder sbC = a0.b.c("Unsupported message type: ");
            sbC.append(cls.getName());
            throw new IllegalArgumentException(sbC.toString());
        }
        try {
            return (o0) x.q(cls.asSubclass(x.class)).o(x.f.BUILD_MESSAGE_INFO);
        } catch (Exception e10) {
            StringBuilder sbC2 = a0.b.c("Unable to get message info for ");
            sbC2.append(cls.getName());
            throw new RuntimeException(sbC2.toString(), e10);
        }
    }

    @Override // b7.p0
    public final boolean b(Class<?> cls) {
        return x.class.isAssignableFrom(cls);
    }
}
