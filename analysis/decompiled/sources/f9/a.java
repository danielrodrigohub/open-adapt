package f9;

import android.content.Context;
import android.view.View;
import com.nike.adapt.analytics.TrackManager;
import ea.m;
import h9.d0;
import h9.w0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ t9.d f7089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ b f7090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ m f7091j;

    public /* synthetic */ a(t9.d dVar, b bVar, m mVar) {
        this.f7089h = dVar;
        this.f7090i = bVar;
        this.f7091j = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        t9.d dVar = this.f7089h;
        b bVar = this.f7090i;
        m mVar = this.f7091j;
        p4.h.j(dVar, "$connection");
        p4.h.j(bVar, "this$0");
        p4.h.j(mVar, "$device");
        TrackManager.INSTANCE.multipairOnShoeCardSelected();
        if (dVar == t9.d.CONNECTED) {
            w0 w0Var = w0.f8366c;
            Context context = bVar.f7092d;
            p4.h.h(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            w0Var.e((f.e) context);
            return;
        }
        d0 d0Var = new d0(mVar);
        Context context2 = bVar.f7092d;
        p4.h.h(context2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        d0Var.e((f.e) context2);
    }
}
