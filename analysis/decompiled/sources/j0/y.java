package j0;

import android.text.TextUtils;
import android.view.View;

/* JADX INFO: compiled from: ViewCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class y extends a0.b<CharSequence> {
    public y(int i10, Class cls) {
        super(i10, cls, 64, 30);
    }

    @Override // j0.a0.b
    public final CharSequence b(View view) {
        return a0.o.a(view);
    }

    @Override // j0.a0.b
    public final void c(View view, CharSequence charSequence) {
        a0.o.b(view, charSequence);
    }

    @Override // j0.a0.b
    public final boolean f(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }
}
