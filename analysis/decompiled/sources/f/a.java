package f;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.R;

/* JADX INFO: compiled from: ActionBar.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: compiled from: ActionBar.java */
    public interface b {
        void a();
    }

    /* JADX INFO: compiled from: ActionBar.java */
    @Deprecated
    public static abstract class c {
        public abstract void a();
    }

    public boolean a() {
        return false;
    }

    public abstract boolean b();

    public abstract void c(boolean z10);

    public abstract int d();

    public abstract Context e();

    public boolean f() {
        return false;
    }

    public abstract void g();

    public void h() {
    }

    public abstract boolean i(int i10, KeyEvent keyEvent);

    public boolean j(KeyEvent keyEvent) {
        return false;
    }

    public boolean k() {
        return false;
    }

    public abstract void l(boolean z10);

    public abstract void m(boolean z10);

    public abstract void n(boolean z10);

    public abstract void o(CharSequence charSequence);

    public abstract void p(CharSequence charSequence);

    public j.a q(j.a.InterfaceC0177a interfaceC0177a) {
        return null;
    }

    /* JADX INFO: renamed from: f.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActionBar.java */
    public static class C0123a extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f6800a;

        public C0123a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6800a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarLayout);
            this.f6800a = typedArrayObtainStyledAttributes.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0123a() {
            super(-2, -2);
            this.f6800a = 8388627;
        }

        public C0123a(C0123a c0123a) {
            super((ViewGroup.MarginLayoutParams) c0123a);
            this.f6800a = 0;
            this.f6800a = c0123a.f6800a;
        }

        public C0123a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6800a = 0;
        }
    }
}
