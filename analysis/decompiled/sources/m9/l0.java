package m9;

import com.nike.adapt.ui.settings.ShoeProfileActivity;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: compiled from: ShoeProfileActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeProfileActivity f10888h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(ShoeProfileActivity shoeProfileActivity) {
        super(1);
        this.f10888h = shoeProfileActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "dialog");
        ShoeProfileActivity shoeProfileActivity = this.f10888h;
        int i10 = ShoeProfileActivity.V;
        BuildersKt__Builders_commonKt.launch$default(shoeProfileActivity.A, null, null, new k0(shoeProfileActivity, dVar2, null), 3, null);
        return fd.o.f7408a;
    }
}
