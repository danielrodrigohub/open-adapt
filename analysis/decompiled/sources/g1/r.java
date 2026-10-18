package g1;

import android.view.View;
import android.view.WindowId;

/* JADX INFO: compiled from: WindowIdApi18.java */
/* JADX INFO: loaded from: classes.dex */
public final class r implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowId f7560a;

    public r(View view) {
        this.f7560a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof r) && ((r) obj).f7560a.equals(this.f7560a);
    }

    public final int hashCode() {
        return this.f7560a.hashCode();
    }
}
