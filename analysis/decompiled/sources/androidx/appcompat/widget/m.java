package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.appcompat.R;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatEmojiEditTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f1355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r0.a f1356b;

    public m(EditText editText) {
        this.f1355a = editText;
        this.f1356b = new r0.a(editText);
    }

    public final KeyListener a(KeyListener keyListener) {
        if (!(!(keyListener instanceof NumberKeyListener))) {
            return keyListener;
        }
        Objects.requireNonNull(this.f1356b.f14176a);
        if (keyListener instanceof r0.e) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new r0.e(keyListener);
    }

    public final void b(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f1355a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i10, 0);
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

    public final InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
        r0.a aVar = this.f1356b;
        Objects.requireNonNull(aVar);
        if (inputConnection == null) {
            return null;
        }
        r0.a.C0244a c0244a = aVar.f14176a;
        Objects.requireNonNull(c0244a);
        return inputConnection instanceof r0.c ? inputConnection : new r0.c(c0244a.f14177a, inputConnection);
    }

    public final void d(boolean z10) {
        r0.g gVar = this.f1356b.f14176a.f14178b;
        if (gVar.f14195k != z10) {
            if (gVar.f14194j != null) {
                androidx.emoji2.text.a.a();
                throw null;
            }
            gVar.f14195k = z10;
            if (z10) {
                androidx.emoji2.text.a.a();
                throw null;
            }
        }
    }
}
