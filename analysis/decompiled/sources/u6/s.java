package u6;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: Hashing.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {
    public static int a(int i10) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i10) * (-862048943)), 15)) * 461845907);
    }

    public static int b(@CheckForNull Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }
}
