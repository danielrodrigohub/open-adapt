package r0;

import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;

/* JADX INFO: compiled from: EmojiTextWatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements TextWatcher {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final EditText f14192h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f14194j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f14193i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f14195k = true;

    /* JADX INFO: compiled from: EmojiTextWatcher.java */
    public static class a extends androidx.emoji2.text.a.AbstractC0022a {
    }

    public g(EditText editText) {
        this.f14192h = editText;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        boolean z10;
        if (this.f14192h.isInEditMode()) {
            return;
        }
        if (!this.f14195k) {
            z10 = true;
        } else if (this.f14193i) {
            z10 = false;
        } else {
            Object obj = androidx.emoji2.text.a.f1800a;
            z10 = true;
        }
        if (!z10 && i11 <= i12 && (charSequence instanceof Spannable)) {
            androidx.emoji2.text.a.a();
            throw null;
        }
    }
}
