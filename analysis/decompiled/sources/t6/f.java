package t6;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: Objects.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static boolean a(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
