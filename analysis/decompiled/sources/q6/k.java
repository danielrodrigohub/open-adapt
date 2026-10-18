package q6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: IndicatorViewController.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f13658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextInputLayout f13659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinearLayout f13660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FrameLayout f13662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Animator f13663f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f13664g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13665h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13666i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f13667j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13668k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AppCompatTextView f13669l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f13670m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13671n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ColorStateList f13672o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f13673p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f13674q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public AppCompatTextView f13675r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f13676s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ColorStateList f13677t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Typeface f13678u;

    /* JADX INFO: compiled from: IndicatorViewController.java */
    public class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f13679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ TextView f13680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f13681c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ TextView f13682d;

        public a(int i10, TextView textView, int i11, TextView textView2) {
            this.f13679a = i10;
            this.f13680b = textView;
            this.f13681c = i11;
            this.f13682d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AppCompatTextView appCompatTextView;
            k kVar = k.this;
            kVar.f13665h = this.f13679a;
            kVar.f13663f = null;
            TextView textView = this.f13680b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f13681c == 1 && (appCompatTextView = k.this.f13669l) != null) {
                    appCompatTextView.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f13682d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f13682d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            TextView textView = this.f13682d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public k(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f13658a = context;
        this.f13659b = textInputLayout;
        this.f13664g = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    public final void a(TextView textView, int i10) {
        if (this.f13660c == null && this.f13662e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f13658a);
            this.f13660c = linearLayout;
            linearLayout.setOrientation(0);
            this.f13659b.addView(this.f13660c, -1, -2);
            this.f13662e = new FrameLayout(this.f13658a);
            this.f13660c.addView(this.f13662e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f13659b.getEditText() != null) {
                b();
            }
        }
        if (i10 == 0 || i10 == 1) {
            this.f13662e.setVisibility(0);
            this.f13662e.addView(textView);
        } else {
            this.f13660c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f13660c.setVisibility(0);
        this.f13661d++;
    }

    public final void b() {
        if ((this.f13660c == null || this.f13659b.getEditText() == null) ? false : true) {
            EditText editText = this.f13659b.getEditText();
            boolean zD = j6.c.d(this.f13658a);
            LinearLayout linearLayout = this.f13660c;
            int i10 = R.dimen.material_helper_text_font_1_3_padding_horizontal;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.e.k(linearLayout, h(zD, i10, a0.e.f(editText)), h(zD, R.dimen.material_helper_text_font_1_3_padding_top, this.f13658a.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top)), h(zD, i10, a0.e.e(editText)), 0);
        }
    }

    public final void c() {
        Animator animator = this.f13663f;
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void d(List<Animator> list, boolean z10, TextView textView, int i10, int i11, int i12) {
        if (textView == null || !z10) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, i12 == i10 ? 1.0f : 0.0f);
            objectAnimatorOfFloat.setDuration(167L);
            objectAnimatorOfFloat.setInterpolator(p5.a.f13252a);
            list.add(objectAnimatorOfFloat);
            if (i12 == i10) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f13664g, 0.0f);
                objectAnimatorOfFloat2.setDuration(217L);
                objectAnimatorOfFloat2.setInterpolator(p5.a.f13255d);
                list.add(objectAnimatorOfFloat2);
            }
        }
    }

    public final boolean e() {
        return (this.f13666i != 1 || this.f13669l == null || TextUtils.isEmpty(this.f13667j)) ? false : true;
    }

    public final TextView f(int i10) {
        if (i10 == 1) {
            return this.f13669l;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f13675r;
    }

    public final int g() {
        AppCompatTextView appCompatTextView = this.f13669l;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public final int h(boolean z10, int i10, int i11) {
        return z10 ? this.f13658a.getResources().getDimensionPixelSize(i10) : i11;
    }

    public final void i() {
        this.f13667j = null;
        c();
        if (this.f13665h == 1) {
            if (!this.f13674q || TextUtils.isEmpty(this.f13673p)) {
                this.f13666i = 0;
            } else {
                this.f13666i = 2;
            }
        }
        l(this.f13665h, this.f13666i, k(this.f13669l, ""));
    }

    public final void j(TextView textView, int i10) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f13660c;
        if (linearLayout == null) {
            return;
        }
        if (!(i10 == 0 || i10 == 1) || (frameLayout = this.f13662e) == null) {
            linearLayout.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i11 = this.f13661d - 1;
        this.f13661d = i11;
        LinearLayout linearLayout2 = this.f13660c;
        if (i11 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean k(TextView textView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f13659b;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        return a0.g.c(textInputLayout) && this.f13659b.isEnabled() && !(this.f13666i == this.f13665h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    public final void l(int i10, int i11, boolean z10) {
        TextView textViewF;
        TextView textViewF2;
        if (i10 == i11) {
            return;
        }
        if (z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f13663f = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f13674q, this.f13675r, 2, i10, i11);
            d(arrayList, this.f13668k, this.f13669l, 1, i10, i11);
            g7.c.f(animatorSet, arrayList);
            animatorSet.addListener(new a(i11, f(i10), i10, f(i11)));
            animatorSet.start();
        } else if (i10 != i11) {
            if (i11 != 0 && (textViewF2 = f(i11)) != null) {
                textViewF2.setVisibility(0);
                textViewF2.setAlpha(1.0f);
            }
            if (i10 != 0 && (textViewF = f(i10)) != null) {
                textViewF.setVisibility(4);
                if (i10 == 1) {
                    textViewF.setText((CharSequence) null);
                }
            }
            this.f13665h = i11;
        }
        this.f13659b.w();
        this.f13659b.A(z10, false);
        this.f13659b.F();
    }
}
