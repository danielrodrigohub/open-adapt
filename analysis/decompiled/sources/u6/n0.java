package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ObjectArrays.java */
/* JADX INFO: loaded from: classes.dex */
public final class n0 {
    @CanIgnoreReturnValue
    public static Object a(@CheckForNull Object obj, int i10) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("at index ");
        sb2.append(i10);
        throw new NullPointerException(sb2.toString());
    }
}
