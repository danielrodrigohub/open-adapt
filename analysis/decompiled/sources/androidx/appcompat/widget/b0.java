package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: compiled from: AppCompatSpinner.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends o0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ c0.g f1173q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ c0 f1174r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(c0 c0Var, View view, c0.g gVar) {
        super(view);
        this.f1174r = c0Var;
        this.f1173q = gVar;
    }

    @Override // androidx.appcompat.widget.o0
    public final k.f b() {
        return this.f1173q;
    }

    @Override // androidx.appcompat.widget.o0
    @SuppressLint({"SyntheticAccessor"})
    public final boolean c() {
        if (this.f1174r.getInternalPopup().c()) {
            return true;
        }
        this.f1174r.b();
        return true;
    }
}
