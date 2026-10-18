package q6;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: EndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextInputLayout f13654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f13655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CheckableImageButton f13656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f13657d;

    public i(TextInputLayout textInputLayout, int i10) {
        this.f13654a = textInputLayout;
        this.f13655b = textInputLayout.getContext();
        this.f13656c = textInputLayout.getEndIconView();
        this.f13657d = i10;
    }

    public abstract void a();

    public boolean b(int i10) {
        return true;
    }

    public void c(boolean z10) {
    }
}
