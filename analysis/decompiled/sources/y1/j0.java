package y1;

import java.util.Arrays;

/* JADX INFO: compiled from: LottieResult.java */
/* JADX INFO: loaded from: classes.dex */
public final class j0<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V f18376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f18377b;

    public j0(V v10) {
        this.f18376a = v10;
        this.f18377b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        V v10 = this.f18376a;
        if (v10 != null && v10.equals(j0Var.f18376a)) {
            return true;
        }
        Throwable th = this.f18377b;
        if (th == null || j0Var.f18377b == null) {
            return false;
        }
        return th.toString().equals(this.f18377b.toString());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18376a, this.f18377b});
    }

    public j0(Throwable th) {
        this.f18377b = th;
        this.f18376a = null;
    }
}
