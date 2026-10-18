package s9;

import android.app.Activity;
import android.text.style.ClickableSpan;
import android.view.View;
import h9.p0;

/* JADX INFO: compiled from: UrlUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends ClickableSpan {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v7.m f15174h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Activity f15175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ qd.a<fd.o> f15176j;

    public a0(v7.m mVar, Activity activity, qd.a<fd.o> aVar) {
        this.f15174h = mVar;
        this.f15175i = activity;
        this.f15176j = aVar;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        p4.h.j(view, "widget");
        v7.m mVar = this.f15174h;
        if (mVar != null) {
            new p0(mVar).e(this.f15175i);
        } else {
            this.f15176j.invoke();
        }
    }
}
