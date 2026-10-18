package i3;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: compiled from: ImageViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f<Z> extends j<ImageView, Z> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Animatable f8739k;

    public f(ImageView imageView) {
        super(imageView);
    }

    @Override // i3.i
    public final void a(Drawable drawable) {
        n(null);
        l(drawable);
    }

    @Override // i3.i
    public final void d(Drawable drawable) {
        n(null);
        l(drawable);
    }

    @Override // i3.i
    public final void f(Drawable drawable) {
        this.f8744i.a();
        Animatable animatable = this.f8739k;
        if (animatable != null) {
            animatable.stop();
        }
        n(null);
        l(drawable);
    }

    @Override // e3.i
    public final void g() {
        Animatable animatable = this.f8739k;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // e3.i
    public final void h() {
        Animatable animatable = this.f8739k;
        if (animatable != null) {
            animatable.stop();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // i3.i
    public final void j(Object obj) {
        n(obj);
    }

    public final void l(Drawable drawable) {
        ((ImageView) this.f8743h).setImageDrawable(drawable);
    }

    public abstract void m(Z z10);

    public final void n(Z z10) {
        m(z10);
        if (!(z10 instanceof Animatable)) {
            this.f8739k = null;
            return;
        }
        Animatable animatable = (Animatable) z10;
        this.f8739k = animatable;
        animatable.start();
    }
}
