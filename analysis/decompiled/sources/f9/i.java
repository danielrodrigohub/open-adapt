package f9;

import com.nike.adapt.ui.myshoes.SelectShoesActivity;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: SelectShoesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends o implements l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SelectShoesActivity f7118h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(SelectShoesActivity selectShoesActivity) {
        super(1);
        this.f7118h = selectShoesActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        SelectShoesActivity selectShoesActivity = this.f7118h;
        int i10 = SelectShoesActivity.U;
        BuildersKt__Builders_commonKt.launch$default(selectShoesActivity.A, null, null, new h(selectShoesActivity, dVar2, null), 3, null);
        return fd.o.f7408a;
    }
}
