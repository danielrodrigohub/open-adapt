package kotlinx.coroutines.internal;

import yd.n;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: SystemProps.common.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class SystemPropsKt__SystemProps_commonKt {
    public static final boolean systemProp(String str, boolean z10) {
        String strSystemProp = SystemPropsKt.systemProp(str);
        return strSystemProp != null ? Boolean.parseBoolean(strSystemProp) : z10;
    }

    public static /* synthetic */ int systemProp$default(String str, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i11 = 1;
        }
        if ((i13 & 8) != 0) {
            i12 = Integer.MAX_VALUE;
        }
        return SystemPropsKt.systemProp(str, i10, i11, i12);
    }

    public static final int systemProp(String str, int i10, int i11, int i12) {
        return (int) SystemPropsKt.systemProp(str, i10, i11, i12);
    }

    public static /* synthetic */ long systemProp$default(String str, long j10, long j11, long j12, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j11 = 1;
        }
        long j13 = j11;
        if ((i10 & 8) != 0) {
            j12 = Long.MAX_VALUE;
        }
        return SystemPropsKt.systemProp(str, j10, j13, j12);
    }

    public static final long systemProp(String str, long j10, long j11, long j12) {
        String strSystemProp = SystemPropsKt.systemProp(str);
        if (strSystemProp == null) {
            return j10;
        }
        Long lX = n.X(strSystemProp);
        if (lX == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + strSystemProp + '\'').toString());
        }
        long jLongValue = lX.longValue();
        boolean z10 = false;
        if (j11 <= jLongValue && jLongValue <= j12) {
            z10 = true;
        }
        if (z10) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j11 + ".." + j12 + ", but is '" + jLongValue + '\'').toString());
    }
}
