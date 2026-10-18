package a3;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.util.Objects;
import r2.s;
import r2.w;

/* JADX INFO: compiled from: DrawableResource.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T extends Drawable> implements w<T>, s {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final T f209h;

    public c(T t10) {
        Objects.requireNonNull(t10, "Argument must not be null");
        this.f209h = t10;
    }

    @Override // r2.w
    public final Object get() {
        Drawable.ConstantState constantState = this.f209h.getConstantState();
        return constantState == null ? this.f209h : constantState.newDrawable();
    }

    @Override // r2.s
    public void initialize() {
        T t10 = this.f209h;
        if (t10 instanceof BitmapDrawable) {
            ((BitmapDrawable) t10).getBitmap().prepareToDraw();
        } else if (t10 instanceof c3.c) {
            ((c3.c) t10).b().prepareToDraw();
        }
    }
}
