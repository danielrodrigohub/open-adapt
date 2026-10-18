package m9;

import com.nike.adapt.ui.settings.SupportDeleteAccountActivity;

/* JADX INFO: compiled from: SupportDeleteAccountActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r0 extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SupportDeleteAccountActivity f10913h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(SupportDeleteAccountActivity supportDeleteAccountActivity) {
        super(1);
        this.f10913h = supportDeleteAccountActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        dVar2.dismiss();
        q7.v vVar = this.f10913h.A;
        if (vVar != null) {
            vVar.f14029a.performClick();
            return fd.o.f7408a;
        }
        p4.h.C("binding");
        throw null;
    }
}
