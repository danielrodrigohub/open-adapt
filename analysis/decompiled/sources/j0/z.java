package j0;

import android.view.View;

/* JADX INFO: compiled from: ViewCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class z extends a0.b<Boolean> {
    public z(int i10) {
        super(i10, Boolean.class, 0, 28);
    }

    @Override // j0.a0.b
    public final Boolean b(View view) {
        return Boolean.valueOf(a0.m.c(view));
    }

    @Override // j0.a0.b
    public final void c(View view, Boolean bool) {
        a0.m.g(view, bool.booleanValue());
    }

    @Override // j0.a0.b
    public final boolean f(Boolean bool, Boolean bool2) {
        return !a(bool, bool2);
    }
}
