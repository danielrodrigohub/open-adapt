package j7;

/* JADX INFO: compiled from: ReflectionHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static RuntimeException a(IllegalAccessException illegalAccessException) {
        throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.9.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", illegalAccessException);
    }

    public static int b(int i10) {
        int i11 = i10 % 65536;
        return i11 >= 0 ? i11 : i11 + 65536;
    }
}
