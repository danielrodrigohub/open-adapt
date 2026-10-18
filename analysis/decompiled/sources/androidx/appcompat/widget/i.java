package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CheckedTextView;

/* JADX INFO: compiled from: AppCompatCheckedTextViewHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CheckedTextView f1284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ColorStateList f1285b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f1286c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1287d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1288e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1289f;

    public i(CheckedTextView checkedTextView) {
        this.f1284a = checkedTextView;
    }

    public final void a() {
        Drawable checkMarkDrawable = this.f1284a.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f1287d || this.f1288e) {
                Drawable drawableMutate = checkMarkDrawable.mutate();
                if (this.f1287d) {
                    b0.a.b.h(drawableMutate, this.f1285b);
                }
                if (this.f1288e) {
                    b0.a.b.i(drawableMutate, this.f1286c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1284a.getDrawableState());
                }
                this.f1284a.setCheckMarkDrawable(drawableMutate);
            }
        }
    }
}
