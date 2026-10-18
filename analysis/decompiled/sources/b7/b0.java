package b7;

/* JADX INFO: compiled from: JavaType.java */
/* JADX INFO: loaded from: classes.dex */
public enum b0 {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, ""),
    BYTE_STRING(i.class, i.f3419i),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Class<?> f3367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f3368i;

    b0(Class cls, Object obj) {
        this.f3367h = cls;
        this.f3368i = obj;
    }
}
