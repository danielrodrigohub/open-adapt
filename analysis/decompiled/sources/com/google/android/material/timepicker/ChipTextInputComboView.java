package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
import g6.m;
import g6.p;

/* JADX INFO: loaded from: classes.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Chip f5579h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final EditText f5580i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f5581j;

    public class a extends m {
        public a() {
        }

        @Override // g6.m, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView chipTextInputComboView = ChipTextInputComboView.this;
                chipTextInputComboView.f5579h.setText(ChipTextInputComboView.a(chipTextInputComboView, "00"));
            } else {
                ChipTextInputComboView chipTextInputComboView2 = ChipTextInputComboView.this;
                chipTextInputComboView2.f5579h.setText(ChipTextInputComboView.a(chipTextInputComboView2, editable));
            }
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f5579h = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        EditText editText = textInputLayout.getEditText();
        this.f5580i = editText;
        editText.setVisibility(4);
        a aVar = new a();
        this.f5581j = aVar;
        editText.addTextChangedListener(aVar);
        b();
        addView(chip);
        addView(textInputLayout);
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }

    public static String a(ChipTextInputComboView chipTextInputComboView, CharSequence charSequence) {
        return String.format(chipTextInputComboView.getResources().getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    public final void b() {
        this.f5580i.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f5579h.isChecked();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z10) {
        this.f5579h.setChecked(z10);
        this.f5580i.setVisibility(z10 ? 0 : 4);
        this.f5579h.setVisibility(z10 ? 8 : 0);
        if (isChecked()) {
            EditText editText = this.f5580i;
            editText.requestFocus();
            editText.post(new p(editText));
            if (TextUtils.isEmpty(this.f5580i.getText())) {
                return;
            }
            EditText editText2 = this.f5580i;
            editText2.setSelection(editText2.getText().length());
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5579h.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setTag(int i10, Object obj) {
        this.f5579h.setTag(i10, obj);
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        this.f5579h.toggle();
    }
}
