package j0;

import android.text.TextUtils;
import android.view.View;

/* JADX INFO: compiled from: ViewCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class x extends a0.b<CharSequence> {
    public x(int i10, Class cls) {
        super(i10, cls, 8, 28);
    }

    @Override // j0.a0.b
    public final CharSequence b(View view) {
        return a0.m.b(view);
    }

    @Override // j0.a0.b
    public final void c(View view, CharSequence charSequence) {
        a0.m.h(view, charSequence);
    }

    @Override // j0.a0.b
    public final boolean f(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }
}
