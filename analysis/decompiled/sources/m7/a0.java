package m7;

/* JADX INFO: compiled from: JavaType.java */
/* JADX INFO: loaded from: classes.dex */
public enum a0 {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, ""),
    BYTE_STRING(i.class, i.f10666i),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Class<?> f10611h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f10612i;

    a0(Class cls, Object obj) {
        this.f10611h = cls;
        this.f10612i = obj;
    }
}
