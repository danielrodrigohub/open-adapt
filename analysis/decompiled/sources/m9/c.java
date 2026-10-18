package m9;

import android.view.View;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f10838h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f10839i;

    public /* synthetic */ c(d dVar, int i10) {
        this.f10838h = dVar;
        this.f10839i = i10;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        d dVar = this.f10838h;
        int i10 = this.f10839i;
        p4.h.j(dVar, "this$0");
        String str = "ColorWa" + dVar.f10845e.get(i10);
        p4.h.j(str, "pressedObject");
        a1.d.d("Pressed: ", str, o7.x.f12420a);
        int i11 = dVar.f10846f;
        dVar.f10846f = i10;
        dVar.f10844d.N = i10;
        if (i11 == i10) {
            return;
        }
        dVar.f(i10, dVar.f10847g);
        if (i11 != -1) {
            dVar.f(i11, dVar.f10847g);
        }
    }
}
