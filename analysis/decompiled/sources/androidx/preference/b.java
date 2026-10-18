package androidx.preference;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.TextView;
import androidx.fragment.app.l;

/* JADX INFO: compiled from: PreferenceDialogFragmentCompat.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends l implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public DialogPreference f2311q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public CharSequence f2312r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public CharSequence f2313s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public CharSequence f2314t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public CharSequence f2315u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f2316v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public BitmapDrawable f2317w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f2318x0;

    /* JADX INFO: compiled from: PreferenceDialogFragmentCompat.java */
    public static class a {
        public static void a(Window window) {
            window.getDecorView().getWindowInsetsController().show(WindowInsets.Type.ime());
        }
    }

    @Override // androidx.fragment.app.l, androidx.fragment.app.m
    public void H(Bundle bundle) {
        super.H(bundle);
        androidx.lifecycle.g gVarA = A();
        if (!(gVarA instanceof DialogPreference.a)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        DialogPreference.a aVar = (DialogPreference.a) gVarA;
        String string = e0().getString("key");
        if (bundle != null) {
            this.f2312r0 = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f2313s0 = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f2314t0 = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f2315u0 = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f2316v0 = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f2317w0 = new BitmapDrawable(w(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) aVar.b(string);
        this.f2311q0 = dialogPreference;
        this.f2312r0 = dialogPreference.T;
        this.f2313s0 = dialogPreference.W;
        this.f2314t0 = dialogPreference.X;
        this.f2315u0 = dialogPreference.U;
        this.f2316v0 = dialogPreference.Y;
        Drawable drawable = dialogPreference.V;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.f2317w0 = (BitmapDrawable) drawable;
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.f2317w0 = new BitmapDrawable(w(), bitmapCreateBitmap);
    }

    @Override // androidx.fragment.app.l, androidx.fragment.app.m
    public void R(Bundle bundle) {
        super.R(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f2312r0);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f2313s0);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f2314t0);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f2315u0);
        bundle.putInt("PreferenceDialogFragment.layout", this.f2316v0);
        BitmapDrawable bitmapDrawable = this.f2317w0;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f2318x0 = i10;
    }

    @Override // androidx.fragment.app.l, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        u0(this.f2318x0 == -1);
    }

    @Override // androidx.fragment.app.l
    public final Dialog q0() {
        this.f2318x0 = -2;
        androidx.appcompat.app.d.a aVarD = new androidx.appcompat.app.d.a(f0()).setTitle(this.f2312r0).a(this.f2317w0).e(this.f2313s0, this).d(this.f2314t0, this);
        f0();
        int i10 = this.f2316v0;
        View viewInflate = i10 != 0 ? o().inflate(i10, (ViewGroup) null) : null;
        if (viewInflate != null) {
            t0(viewInflate);
            aVarD.setView(viewInflate);
        } else {
            aVarD.b(this.f2315u0);
        }
        v0(aVarD);
        androidx.appcompat.app.d dVarCreate = aVarD.create();
        if (this instanceof x0.a) {
            Window window = dVarCreate.getWindow();
            if (Build.VERSION.SDK_INT >= 30) {
                a.a(window);
            } else {
                w0();
            }
        }
        return dVarCreate;
    }

    public final DialogPreference s0() {
        if (this.f2311q0 == null) {
            this.f2311q0 = (DialogPreference) ((DialogPreference.a) A()).b(e0().getString("key"));
        }
        return this.f2311q0;
    }

    public void t0(View view) {
        View viewFindViewById = view.findViewById(android.R.id.message);
        if (viewFindViewById != null) {
            CharSequence charSequence = this.f2315u0;
            int i10 = 8;
            if (!TextUtils.isEmpty(charSequence)) {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(charSequence);
                }
                i10 = 0;
            }
            if (viewFindViewById.getVisibility() != i10) {
                viewFindViewById.setVisibility(i10);
            }
        }
    }

    public abstract void u0(boolean z10);

    public void v0(androidx.appcompat.app.d.a aVar) {
    }

    public void w0() {
    }
}
