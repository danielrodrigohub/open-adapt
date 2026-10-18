package x8;

import android.content.Context;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z0 extends rd.o implements qd.a<Integer> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ q0 f18061h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z0(q0 q0Var) {
        super(0);
        this.f18061h = q0Var;
    }

    @Override // qd.a
    public final Integer invoke() {
        Context context = this.f18061h.f17967h;
        p4.h.i(context, "context");
        return Integer.valueOf(i1.b(context, 50));
    }
}
