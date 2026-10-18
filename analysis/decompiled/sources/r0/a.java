package r0;

import android.widget.EditText;

/* JADX INFO: compiled from: EmojiEditTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0244a f14176a;

    /* JADX INFO: renamed from: r0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EmojiEditTextHelper.java */
    public static class C0244a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EditText f14177a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g f14178b;

        public C0244a(EditText editText) {
            this.f14177a = editText;
            g gVar = new g(editText);
            this.f14178b = gVar;
            editText.addTextChangedListener(gVar);
            if (r0.b.f14180b == null) {
                synchronized (r0.b.f14179a) {
                    if (r0.b.f14180b == null) {
                        r0.b.f14180b = new r0.b();
                    }
                }
            }
            editText.setEditableFactory(r0.b.f14180b);
        }
    }

    /* JADX INFO: compiled from: EmojiEditTextHelper.java */
    public static class b {
    }

    public a(EditText editText) {
        c3.d.h(editText, "editText cannot be null");
        this.f14176a = new C0244a(editText);
    }
}
