package r0;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;
import java.util.Objects;

/* JADX INFO: compiled from: EmojiKeyListener.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements KeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyListener f14185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f14186b;

    /* JADX INFO: compiled from: EmojiKeyListener.java */
    public static class a {
    }

    public e(KeyListener keyListener) {
        a aVar = new a();
        this.f14185a = keyListener;
        this.f14186b = aVar;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i10) {
        this.f14185a.clearMetaKeyState(view, editable, i10);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f14185a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent) {
        boolean zH;
        boolean z10;
        Objects.requireNonNull(this.f14186b);
        Object obj = androidx.emoji2.text.a.f1800a;
        if (i10 != 67) {
            zH = i10 != 112 ? false : androidx.emoji2.text.b.h(editable, keyEvent, true);
        } else {
            zH = androidx.emoji2.text.b.h(editable, keyEvent, false);
        }
        if (zH) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 || this.f14185a.onKeyDown(view, editable, i10, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f14185a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.f14185a.onKeyUp(view, editable, i10, keyEvent);
    }
}
