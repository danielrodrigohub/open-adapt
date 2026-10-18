package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R;
import g6.m;
import q6.i;

/* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f5570e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b f5571f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0095c f5572g;

    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    public class a extends m {
        public a() {
        }

        @Override // g6.m, android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            c cVar = c.this;
            cVar.f13656c.setChecked(!c.d(cVar));
        }
    }

    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    public class b implements TextInputLayout.f {
        public b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public final void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            c cVar = c.this;
            cVar.f13656c.setChecked(!c.d(cVar));
            editText.removeTextChangedListener(c.this.f5570e);
            editText.addTextChangedListener(c.this.f5570e);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    public class C0095c implements TextInputLayout.g {

        /* JADX INFO: renamed from: com.google.android.material.textfield.c$c$a */
        /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
        public class a implements Runnable {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ EditText f5576h;

            public a(EditText editText) {
                this.f5576h = editText;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5576h.removeTextChangedListener(c.this.f5570e);
            }
        }

        public C0095c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public final void a(TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i10 != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }
    }

    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EditText editText = c.this.f13654a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (c.d(c.this)) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            c.this.f13654a.p();
        }
    }

    public c(TextInputLayout textInputLayout, int i10) {
        super(textInputLayout, i10);
        this.f5570e = new a();
        this.f5571f = new b();
        this.f5572g = new C0095c();
    }

    public static boolean d(c cVar) {
        EditText editText = cVar.f13654a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // q6.i
    public final void a() {
        TextInputLayout textInputLayout = this.f13654a;
        int i10 = this.f13657d;
        if (i10 == 0) {
            i10 = R.drawable.design_password_eye;
        }
        textInputLayout.setEndIconDrawable(i10);
        TextInputLayout textInputLayout2 = this.f13654a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(R.string.password_toggle_content_description));
        boolean z10 = true;
        this.f13654a.setEndIconVisible(true);
        this.f13654a.setEndIconCheckable(true);
        this.f13654a.setEndIconOnClickListener(new d());
        this.f13654a.a(this.f5571f);
        this.f13654a.b(this.f5572g);
        EditText editText = this.f13654a.getEditText();
        if (editText == null || (editText.getInputType() != 16 && editText.getInputType() != 128 && editText.getInputType() != 144 && editText.getInputType() != 224)) {
            z10 = false;
        }
        if (z10) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
