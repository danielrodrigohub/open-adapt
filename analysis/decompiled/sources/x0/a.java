package x0;

import android.R;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.preference.EditTextPreference;
import java.util.Objects;

/* JADX INFO: compiled from: EditTextPreferenceDialogFragmentCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends androidx.preference.b {
    public final RunnableC0312a A0 = new RunnableC0312a();
    public long B0 = -1;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public EditText f17704y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public CharSequence f17705z0;

    /* JADX INFO: renamed from: x0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EditTextPreferenceDialogFragmentCompat.java */
    public class RunnableC0312a implements Runnable {
        public RunnableC0312a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            a.this.y0();
        }
    }

    @Override // androidx.preference.b, androidx.fragment.app.l, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        if (bundle == null) {
            this.f17705z0 = x0().Z;
        } else {
            this.f17705z0 = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.b, androidx.fragment.app.l, androidx.fragment.app.m
    public final void R(Bundle bundle) {
        super.R(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f17705z0);
    }

    @Override // androidx.preference.b
    public final void t0(View view) {
        super.t0(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.f17704y0 = editText;
        if (editText == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText.requestFocus();
        this.f17704y0.setText(this.f17705z0);
        EditText editText2 = this.f17704y0;
        editText2.setSelection(editText2.getText().length());
        Objects.requireNonNull(x0());
    }

    @Override // androidx.preference.b
    public final void u0(boolean z10) {
        if (z10) {
            String string = this.f17704y0.getText().toString();
            EditTextPreference editTextPreferenceX0 = x0();
            Objects.requireNonNull(editTextPreferenceX0);
            editTextPreferenceX0.L(string);
        }
    }

    @Override // androidx.preference.b
    public final void w0() {
        z0(true);
        y0();
    }

    public final EditTextPreference x0() {
        return (EditTextPreference) s0();
    }

    public final void y0() {
        long j10 = this.B0;
        if (j10 != -1 && j10 + 1000 > SystemClock.currentThreadTimeMillis()) {
            EditText editText = this.f17704y0;
            if (editText == null || !editText.isFocused()) {
                z0(false);
            } else if (((InputMethodManager) this.f17704y0.getContext().getSystemService("input_method")).showSoftInput(this.f17704y0, 0)) {
                z0(false);
            } else {
                this.f17704y0.removeCallbacks(this.A0);
                this.f17704y0.postDelayed(this.A0, 50L);
            }
        }
    }

    public final void z0(boolean z10) {
        this.B0 = z10 ? SystemClock.currentThreadTimeMillis() : -1L;
    }
}
