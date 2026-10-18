package r0;

import android.annotation.SuppressLint;
import android.text.Editable;

/* JADX INFO: compiled from: EmojiEditableFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f14179a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile b f14180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f14181c;

    @SuppressLint({"PrivateApi"})
    public b() {
        try {
            f14181c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class<?> cls = f14181c;
        return cls != null ? new androidx.emoji2.text.d(cls, charSequence) : super.newEditable(charSequence);
    }
}
