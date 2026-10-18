package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: MenuDialogHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, i.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e f902h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.appcompat.app.d f903i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public c f904j;

    public f(e eVar) {
        this.f902h = eVar;
    }

    @Override // androidx.appcompat.view.menu.i.a
    public final void b(e eVar, boolean z10) {
        androidx.appcompat.app.d dVar;
        if ((z10 || eVar == this.f902h) && (dVar = this.f903i) != null) {
            dVar.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.i.a
    public final boolean c(e eVar) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f902h.s(((c.a) this.f904j.a()).getItem(i10), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        c cVar = this.f904j;
        e eVar = this.f902h;
        i.a aVar = cVar.f867m;
        if (aVar != null) {
            aVar.b(eVar, true);
        }
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i10 == 82 || i10 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f903i.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f903i.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f902h.d(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f902h.performShortcut(i10, keyEvent, 0);
    }
}
