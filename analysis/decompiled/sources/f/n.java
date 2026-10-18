package f;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: AppCompatDialog.java */
/* JADX INFO: loaded from: classes.dex */
public class n extends androidx.activity.h implements f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public h f6874j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final m f6875k;

    /* JADX WARN: Type inference failed for: r1v2, types: [f.m] */
    public n(Context context, int i10) {
        int i11;
        if (i10 == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i11 = typedValue.resourceId;
        } else {
            i11 = i10;
        }
        super(context, i11);
        this.f6875k = new j0.g.a() { // from class: f.m
            @Override // j0.g.a
            public final boolean j(KeyEvent keyEvent) {
                return this.f6873h.g(keyEvent);
            }
        };
        g gVarD = d();
        if (i10 == 0) {
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i10 = typedValue2.resourceId;
        }
        ((h) gVarD).T = i10;
        gVarD.l();
    }

    @Override // f.f
    public final void I() {
    }

    @Override // f.f
    public final void R() {
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d().c(view, layoutParams);
    }

    public final g d() {
        if (this.f6874j == null) {
            p.c<WeakReference<g>> cVar = g.f6806h;
            this.f6874j = new h(getContext(), getWindow(), this, this);
        }
        return this.f6874j;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        d().m();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return j0.g.b(this.f6875k, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public final <T extends View> T findViewById(int i10) {
        return (T) d().e(i10);
    }

    public final boolean g(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        d().j();
    }

    @Override // androidx.activity.h, android.app.Dialog
    public void onCreate(Bundle bundle) {
        d().i();
        super.onCreate(bundle);
        d().l();
    }

    @Override // androidx.activity.h, android.app.Dialog
    public final void onStop() {
        super.onStop();
        d().p();
    }

    @Override // f.f
    public final void p() {
    }

    @Override // android.app.Dialog
    public final void setContentView(int i10) {
        d().s(i10);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        d().x(charSequence);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        d().t(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d().u(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i10) {
        super.setTitle(i10);
        d().x(getContext().getString(i10));
    }
}
