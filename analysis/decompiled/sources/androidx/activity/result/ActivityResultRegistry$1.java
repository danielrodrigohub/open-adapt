package androidx.activity.result;

import androidx.lifecycle.i;
import androidx.lifecycle.n;
import androidx.lifecycle.q;

/* JADX INFO: loaded from: classes.dex */
class ActivityResultRegistry$1 implements n {
    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        if (i.b.ON_START.equals(bVar) || i.b.ON_STOP.equals(bVar) || i.b.ON_DESTROY.equals(bVar)) {
            throw null;
        }
    }
}
