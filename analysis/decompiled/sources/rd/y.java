package rd;

/* JADX INFO: compiled from: ReflectionFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class y {
    public final String a(k kVar) {
        String string = kVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }
}
