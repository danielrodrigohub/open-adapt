package androidx.appcompat.widget;

import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class h1 implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final k.a f1282h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ i1 f1283i;

    public h1(i1 i1Var) {
        this.f1283i = i1Var;
        this.f1282h = new k.a(i1Var.f1293a.getContext(), i1Var.f1301i);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i1 i1Var = this.f1283i;
        Window.Callback callback = i1Var.f1304l;
        if (callback == null || !i1Var.f1305m) {
            return;
        }
        callback.onMenuItemSelected(0, this.f1282h);
    }
}
