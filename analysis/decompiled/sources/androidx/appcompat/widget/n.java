package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatEmojiTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f1383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r0.f f1384b;

    public n(TextView textView) {
        this.f1383a = textView;
        this.f1384b = new r0.f(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f1384b.f14187a.a(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f1383a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i10, 0);
        try {
            int i11 = R.styleable.AppCompatTextView_emojiCompatEnabled;
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(i11) ? typedArrayObtainStyledAttributes.getBoolean(i11, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            d(z10);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z10) {
        this.f1384b.f14187a.c(z10);
    }

    public final void d(boolean z10) {
        this.f1384b.f14187a.d(z10);
    }
}
