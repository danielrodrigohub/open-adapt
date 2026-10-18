package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.q;
import androidx.lifecycle.r;

/* JADX INFO: compiled from: ComponentDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public class h extends Dialog implements q, j {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public r f703h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OnBackPressedDispatcher f704i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context, int i10) {
        super(context, i10);
        p4.h.j(context, "context");
        this.f704i = new OnBackPressedDispatcher(new g(this, 0));
    }

    public static void b(h hVar) {
        p4.h.j(hVar, "this$0");
        super.onBackPressed();
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.i a() {
        return c();
    }

    public final r c() {
        r rVar = this.f703h;
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r(this);
        this.f703h = rVar2;
        return rVar2;
    }

    @Override // androidx.activity.j
    public final OnBackPressedDispatcher e() {
        return this.f704i;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f704i.b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c().f(androidx.lifecycle.i.b.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        c().f(androidx.lifecycle.i.b.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        c().f(androidx.lifecycle.i.b.ON_DESTROY);
        this.f703h = null;
        super.onStop();
    }
}
