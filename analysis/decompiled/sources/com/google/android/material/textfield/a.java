package com.google.android.material.textfield;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R;
import q6.i;

/* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0091a f5528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b f5529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final c f5530g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f5531h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AnimatorSet f5532i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ValueAnimator f5533j;

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    public class C0091a implements TextWatcher {
        public C0091a() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (a.this.f13654a.getSuffixText() != null) {
                return;
            }
            a aVar = a.this;
            aVar.e(a.d(aVar));
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    public class b implements View.OnFocusChangeListener {
        public b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z10) {
            a aVar = a.this;
            aVar.e(a.d(aVar));
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    public class c implements TextInputLayout.f {
        public c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public final void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(a.d(a.this));
            editText.setOnFocusChangeListener(a.this.f5529f);
            a aVar = a.this;
            aVar.f13656c.setOnFocusChangeListener(aVar.f5529f);
            editText.removeTextChangedListener(a.this.f5528e);
            editText.addTextChangedListener(a.this.f5528e);
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    public class d implements TextInputLayout.g {

        /* JADX INFO: renamed from: com.google.android.material.textfield.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
        public class RunnableC0092a implements Runnable {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ EditText f5538h;

            public RunnableC0092a(EditText editText) {
                this.f5538h = editText;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5538h.removeTextChangedListener(a.this.f5528e);
                a.this.e(true);
            }
        }

        public d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public final void a(TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i10 != 2) {
                return;
            }
            editText.post(new RunnableC0092a(editText));
            if (editText.getOnFocusChangeListener() == a.this.f5529f) {
                editText.setOnFocusChangeListener(null);
            }
            View.OnFocusChangeListener onFocusChangeListener = a.this.f13656c.getOnFocusChangeListener();
            a aVar = a.this;
            if (onFocusChangeListener == aVar.f5529f) {
                aVar.f13656c.setOnFocusChangeListener(null);
            }
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    public class e implements View.OnClickListener {
        public e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Editable text = a.this.f13654a.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            a.this.f13654a.p();
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    public class f implements ValueAnimator.AnimatorUpdateListener {
        public f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            a.this.f13656c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public a(TextInputLayout textInputLayout, int i10) {
        super(textInputLayout, i10);
        this.f5528e = new C0091a();
        this.f5529f = new b();
        this.f5530g = new c();
        this.f5531h = new d();
    }

    public static boolean d(a aVar) {
        EditText editText = aVar.f13654a.getEditText();
        return editText != null && (editText.hasFocus() || aVar.f13656c.hasFocus()) && editText.getText().length() > 0;
    }

    @Override // q6.i
    public final void a() {
        TextInputLayout textInputLayout = this.f13654a;
        int i10 = this.f13657d;
        if (i10 == 0) {
            i10 = R.drawable.mtrl_ic_cancel;
        }
        textInputLayout.setEndIconDrawable(i10);
        TextInputLayout textInputLayout2 = this.f13654a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(R.string.clear_text_end_icon_content_description));
        this.f13654a.setEndIconCheckable(false);
        this.f13654a.setEndIconOnClickListener(new e());
        this.f13654a.a(this.f5530g);
        this.f13654a.b(this.f5531h);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(p5.a.f13255d);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new q6.c(this));
        ValueAnimator valueAnimatorF = f(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f5532i = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorF);
        this.f5532i.addListener(new q6.a(this));
        ValueAnimator valueAnimatorF2 = f(1.0f, 0.0f);
        this.f5533j = valueAnimatorF2;
        valueAnimatorF2.addListener(new q6.b(this));
    }

    @Override // q6.i
    public final void c(boolean z10) {
        if (this.f13654a.getSuffixText() == null) {
            return;
        }
        e(z10);
    }

    public final void e(boolean z10) {
        boolean z11 = this.f13654a.k() == z10;
        if (z10 && !this.f5532i.isRunning()) {
            this.f5533j.cancel();
            this.f5532i.start();
            if (z11) {
                this.f5532i.end();
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        this.f5532i.cancel();
        this.f5533j.start();
        if (z11) {
            this.f5533j.end();
        }
    }

    public final ValueAnimator f(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(p5.a.f13252a);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.addUpdateListener(new f());
        return valueAnimatorOfFloat;
    }
}
