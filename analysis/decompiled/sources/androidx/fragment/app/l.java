package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.x.m;
import androidx.lifecycle.viewmodel.R;

/* JADX INFO: compiled from: DialogFragment.java */
/* JADX INFO: loaded from: classes.dex */
public class l extends m implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Handler f1941a0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f1949j0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Dialog f1951l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f1952m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f1953n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f1954o0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public a f1942b0 = new a();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public b f1943c0 = new b();
    public c d0 = new c();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f1944e0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f1945f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f1946g0 = true;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f1947h0 = true;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f1948i0 = -1;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public androidx.lifecycle.w<androidx.lifecycle.q> f1950k0 = new d();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f1955p0 = false;

    /* JADX INFO: compiled from: DialogFragment.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public final void run() {
            l lVar = l.this;
            lVar.d0.onDismiss(lVar.f1951l0);
        }
    }

    /* JADX INFO: compiled from: DialogFragment.java */
    public class b implements DialogInterface.OnCancelListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        @SuppressLint({"SyntheticAccessor"})
        public final void onCancel(DialogInterface dialogInterface) {
            l lVar = l.this;
            Dialog dialog = lVar.f1951l0;
            if (dialog != null) {
                lVar.onCancel(dialog);
            }
        }
    }

    /* JADX INFO: compiled from: DialogFragment.java */
    public class c implements DialogInterface.OnDismissListener {
        public c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        @SuppressLint({"SyntheticAccessor"})
        public final void onDismiss(DialogInterface dialogInterface) {
            l lVar = l.this;
            Dialog dialog = lVar.f1951l0;
            if (dialog != null) {
                lVar.onDismiss(dialog);
            }
        }
    }

    /* JADX INFO: compiled from: DialogFragment.java */
    public class d implements androidx.lifecycle.w<androidx.lifecycle.q> {
        public d() {
        }

        @Override // androidx.lifecycle.w
        @SuppressLint({"SyntheticAccessor"})
        public final void a(androidx.lifecycle.q qVar) {
            if (qVar != null) {
                l lVar = l.this;
                if (lVar.f1947h0) {
                    View viewG0 = lVar.g0();
                    if (viewG0.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (l.this.f1951l0 != null) {
                        if (x.L(3)) {
                            Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + l.this.f1951l0);
                        }
                        l.this.f1951l0.setContentView(viewG0);
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: DialogFragment.java */
    public class e extends r {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ r f1960h;

        public e(r rVar) {
            this.f1960h = rVar;
        }

        @Override // androidx.fragment.app.r
        public final View h(int i10) {
            if (this.f1960h.i()) {
                return this.f1960h.h(i10);
            }
            Dialog dialog = l.this.f1951l0;
            if (dialog != null) {
                return dialog.findViewById(i10);
            }
            return null;
        }

        @Override // androidx.fragment.app.r
        public final boolean i() {
            return this.f1960h.i() || l.this.f1955p0;
        }
    }

    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        super.G(context);
        this.W.d(this.f1950k0);
        if (this.f1954o0) {
            return;
        }
        this.f1953n0 = false;
    }

    @Override // androidx.fragment.app.m
    public void H(Bundle bundle) {
        super.H(bundle);
        this.f1941a0 = new Handler();
        this.f1947h0 = this.E == 0;
        if (bundle != null) {
            this.f1944e0 = bundle.getInt("android:style", 0);
            this.f1945f0 = bundle.getInt("android:theme", 0);
            this.f1946g0 = bundle.getBoolean("android:cancelable", true);
            this.f1947h0 = bundle.getBoolean("android:showsDialog", this.f1947h0);
            this.f1948i0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.m
    public final void K() {
        this.K = true;
        Dialog dialog = this.f1951l0;
        if (dialog != null) {
            this.f1952m0 = true;
            dialog.setOnDismissListener(null);
            this.f1951l0.dismiss();
            if (!this.f1953n0) {
                onDismiss(this.f1951l0);
            }
            this.f1951l0 = null;
            this.f1955p0 = false;
        }
    }

    @Override // androidx.fragment.app.m
    public final void L() {
        this.K = true;
        if (!this.f1954o0 && !this.f1953n0) {
            this.f1953n0 = true;
        }
        this.W.g(this.f1950k0);
    }

    @Override // androidx.fragment.app.m
    public final LayoutInflater M(Bundle bundle) {
        LayoutInflater layoutInflaterM = super.M(bundle);
        boolean z10 = this.f1947h0;
        if (!z10 || this.f1949j0) {
            if (x.L(2)) {
                String str = "getting layout inflater for DialogFragment " + this;
                if (this.f1947h0) {
                    Log.d("FragmentManager", "mCreatingDialog = true: " + str);
                } else {
                    Log.d("FragmentManager", "mShowsDialog = false: " + str);
                }
            }
            return layoutInflaterM;
        }
        if (z10 && !this.f1955p0) {
            try {
                this.f1949j0 = true;
                Dialog dialogQ0 = q0();
                this.f1951l0 = dialogQ0;
                if (this.f1947h0) {
                    int i10 = this.f1944e0;
                    if (i10 == 1 || i10 == 2) {
                        dialogQ0.requestWindowFeature(1);
                    } else if (i10 == 3) {
                        Window window = dialogQ0.getWindow();
                        if (window != null) {
                            window.addFlags(24);
                        }
                        dialogQ0.requestWindowFeature(1);
                    }
                    Context contextL = l();
                    if (contextL instanceof Activity) {
                        this.f1951l0.setOwnerActivity((Activity) contextL);
                    }
                    this.f1951l0.setCancelable(this.f1946g0);
                    this.f1951l0.setOnCancelListener(this.f1943c0);
                    this.f1951l0.setOnDismissListener(this.d0);
                    this.f1955p0 = true;
                } else {
                    this.f1951l0 = null;
                }
                this.f1949j0 = false;
            } catch (Throwable th) {
                this.f1949j0 = false;
                throw th;
            }
        }
        if (x.L(2)) {
            Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
        }
        Dialog dialog = this.f1951l0;
        return dialog != null ? layoutInflaterM.cloneInContext(dialog.getContext()) : layoutInflaterM;
    }

    @Override // androidx.fragment.app.m
    public void R(Bundle bundle) {
        Dialog dialog = this.f1951l0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i10 = this.f1944e0;
        if (i10 != 0) {
            bundle.putInt("android:style", i10);
        }
        int i11 = this.f1945f0;
        if (i11 != 0) {
            bundle.putInt("android:theme", i11);
        }
        boolean z10 = this.f1946g0;
        if (!z10) {
            bundle.putBoolean("android:cancelable", z10);
        }
        boolean z11 = this.f1947h0;
        if (!z11) {
            bundle.putBoolean("android:showsDialog", z11);
        }
        int i12 = this.f1948i0;
        if (i12 != -1) {
            bundle.putInt("android:backStackId", i12);
        }
    }

    @Override // androidx.fragment.app.m
    public void S() {
        this.K = true;
        Dialog dialog = this.f1951l0;
        if (dialog != null) {
            this.f1952m0 = false;
            dialog.show();
            View decorView = this.f1951l0.getWindow().getDecorView();
            androidx.lifecycle.p0.a(decorView, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            androidx.lifecycle.o.H(decorView, this);
        }
    }

    @Override // androidx.fragment.app.m
    public void T() {
        this.K = true;
        Dialog dialog = this.f1951l0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.m
    public final void V(Bundle bundle) {
        Bundle bundle2;
        this.K = true;
        if (this.f1951l0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1951l0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.m
    public final void W(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.W(layoutInflater, viewGroup, bundle);
        if (this.M != null || this.f1951l0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1951l0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.m
    public final r d() {
        return new e(new m.a());
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f1952m0) {
            return;
        }
        if (x.L(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        p0(true, true);
    }

    public final void p0(boolean z10, boolean z11) {
        if (this.f1953n0) {
            return;
        }
        this.f1953n0 = true;
        this.f1954o0 = false;
        Dialog dialog = this.f1951l0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f1951l0.dismiss();
            if (!z11) {
                if (Looper.myLooper() == this.f1941a0.getLooper()) {
                    onDismiss(this.f1951l0);
                } else {
                    this.f1941a0.post(this.f1942b0);
                }
            }
        }
        this.f1952m0 = true;
        if (this.f1948i0 >= 0) {
            x xVarR = r();
            int i10 = this.f1948i0;
            if (i10 < 0) {
                throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("Bad id: ", i10));
            }
            xVarR.x(xVarR.new m(i10), false);
            this.f1948i0 = -1;
            return;
        }
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(r());
        aVar.n(this);
        if (z10) {
            aVar.j(true);
        } else {
            aVar.i();
        }
    }

    public Dialog q0() {
        if (x.L(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(f0(), this.f1945f0);
    }

    public final Dialog r0() {
        Dialog dialog = this.f1951l0;
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }
}
