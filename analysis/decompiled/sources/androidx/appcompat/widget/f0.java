package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.R;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppCompatTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f1235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d1 f1236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d1 f1237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d1 f1238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d1 f1239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d1 f1240f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d1 f1241g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d1 f1242h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h0 f1243i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1244j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1245k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f1246l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1247m;

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    public class a extends z.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1248a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WeakReference f1250c;

        public a(int i10, int i11, WeakReference weakReference) {
            this.f1248a = i10;
            this.f1249b = i11;
            this.f1250c = weakReference;
        }

        @Override // z.d.e
        public final void d(int i10) {
        }

        @Override // z.d.e
        public final void e(Typeface typeface) {
            int i10;
            if (Build.VERSION.SDK_INT >= 28 && (i10 = this.f1248a) != -1) {
                typeface = e.a(typeface, i10, (this.f1249b & 2) != 0);
            }
            f0 f0Var = f0.this;
            WeakReference weakReference = this.f1250c;
            if (f0Var.f1247m) {
                f0Var.f1246l = typeface;
                TextView textView = (TextView) weakReference.get();
                if (textView != null) {
                    WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                    if (j0.a0.g.b(textView)) {
                        textView.post(new g0(textView, typeface, f0Var.f1244j));
                    } else {
                        textView.setTypeface(typeface, f0Var.f1244j);
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    public static class b {
        public static Drawable[] a(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }

        public static void b(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        public static void c(TextView textView, Locale locale) {
            textView.setTextLocale(locale);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    public static class c {
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        public static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    public static class d {
        public static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        public static void b(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        public static void c(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        public static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    public static class e {
        public static Typeface a(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    public f0(TextView textView) {
        this.f1235a = textView;
        this.f1243i = new h0(textView);
    }

    public static d1 d(Context context, k kVar, int i10) {
        ColorStateList colorStateListD = kVar.d(context, i10);
        if (colorStateListD == null) {
            return null;
        }
        d1 d1Var = new d1();
        d1Var.f1225d = true;
        d1Var.f1222a = colorStateListD;
        return d1Var;
    }

    public final void a(Drawable drawable, d1 d1Var) {
        if (drawable == null || d1Var == null) {
            return;
        }
        k.f(drawable, d1Var, this.f1235a.getDrawableState());
    }

    public final void b() {
        if (this.f1236b != null || this.f1237c != null || this.f1238d != null || this.f1239e != null) {
            Drawable[] compoundDrawables = this.f1235a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1236b);
            a(compoundDrawables[1], this.f1237c);
            a(compoundDrawables[2], this.f1238d);
            a(compoundDrawables[3], this.f1239e);
        }
        if (this.f1240f == null && this.f1241g == null) {
            return;
        }
        Drawable[] drawableArrA = b.a(this.f1235a);
        a(drawableArrA[0], this.f1240f);
        a(drawableArrA[2], this.f1241g);
    }

    public final void c() {
        this.f1243i.a();
    }

    public final ColorStateList e() {
        d1 d1Var = this.f1242h;
        if (d1Var != null) {
            return d1Var.f1222a;
        }
        return null;
    }

    public final PorterDuff.Mode f() {
        d1 d1Var = this.f1242h;
        if (d1Var != null) {
            return d1Var.f1223b;
        }
        return null;
    }

    public final boolean g() {
        h0 h0Var = this.f1243i;
        return h0Var.i() && h0Var.f1271a != 0;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e7  */
    @SuppressLint({"NewApi"})
    public final void h(AttributeSet attributeSet, int i10) {
        boolean zA;
        boolean z10;
        String strM;
        String strM2;
        int resourceId;
        Context context = this.f1235a.getContext();
        k kVarA = k.a();
        int[] iArr = R.styleable.AppCompatTextHelper;
        f1 f1VarQ = f1.q(context, attributeSet, iArr, i10);
        TextView textView = this.f1235a;
        j0.a0.o(textView, textView.getContext(), iArr, attributeSet, f1VarQ.f1253b, i10);
        int iL = f1VarQ.l(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        int i11 = R.styleable.AppCompatTextHelper_android_drawableLeft;
        if (f1VarQ.o(i11)) {
            this.f1236b = d(context, kVarA, f1VarQ.l(i11, 0));
        }
        int i12 = R.styleable.AppCompatTextHelper_android_drawableTop;
        if (f1VarQ.o(i12)) {
            this.f1237c = d(context, kVarA, f1VarQ.l(i12, 0));
        }
        int i13 = R.styleable.AppCompatTextHelper_android_drawableRight;
        if (f1VarQ.o(i13)) {
            this.f1238d = d(context, kVarA, f1VarQ.l(i13, 0));
        }
        int i14 = R.styleable.AppCompatTextHelper_android_drawableBottom;
        if (f1VarQ.o(i14)) {
            this.f1239e = d(context, kVarA, f1VarQ.l(i14, 0));
        }
        int i15 = Build.VERSION.SDK_INT;
        int i16 = R.styleable.AppCompatTextHelper_android_drawableStart;
        if (f1VarQ.o(i16)) {
            this.f1240f = d(context, kVarA, f1VarQ.l(i16, 0));
        }
        int i17 = R.styleable.AppCompatTextHelper_android_drawableEnd;
        if (f1VarQ.o(i17)) {
            this.f1241g = d(context, kVarA, f1VarQ.l(i17, 0));
        }
        f1VarQ.r();
        boolean z11 = this.f1235a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (iL != -1) {
            f1 f1Var = new f1(context, context.obtainStyledAttributes(iL, R.styleable.TextAppearance));
            if (z11) {
                zA = false;
                z10 = false;
            } else {
                int i18 = R.styleable.TextAppearance_textAllCaps;
                if (f1Var.o(i18)) {
                    zA = f1Var.a(i18, false);
                    z10 = true;
                } else {
                    zA = false;
                    z10 = false;
                }
            }
            q(context, f1Var);
            int i19 = R.styleable.TextAppearance_textLocale;
            strM2 = f1Var.o(i19) ? f1Var.m(i19) : null;
            if (i15 >= 26) {
                int i20 = R.styleable.TextAppearance_fontVariationSettings;
                if (f1Var.o(i20)) {
                    strM = f1Var.m(i20);
                } else {
                    strM = null;
                }
            } else {
                strM = null;
            }
            f1Var.r();
        } else {
            zA = false;
            z10 = false;
            strM = null;
            strM2 = null;
        }
        f1 f1Var2 = new f1(context, context.obtainStyledAttributes(attributeSet, R.styleable.TextAppearance, i10, 0));
        if (!z11) {
            int i21 = R.styleable.TextAppearance_textAllCaps;
            if (f1Var2.o(i21)) {
                zA = f1Var2.a(i21, false);
                z10 = true;
            }
        }
        int i22 = R.styleable.TextAppearance_textLocale;
        if (f1Var2.o(i22)) {
            strM2 = f1Var2.m(i22);
        }
        if (i15 >= 26) {
            int i23 = R.styleable.TextAppearance_fontVariationSettings;
            if (f1Var2.o(i23)) {
                strM = f1Var2.m(i23);
            }
        }
        if (i15 >= 28) {
            int i24 = R.styleable.TextAppearance_android_textSize;
            if (f1Var2.o(i24) && f1Var2.f(i24, -1) == 0) {
                this.f1235a.setTextSize(0, 0.0f);
            }
        }
        q(context, f1Var2);
        f1Var2.r();
        if (!z11 && z10) {
            k(zA);
        }
        Typeface typeface = this.f1246l;
        if (typeface != null) {
            if (this.f1245k == -1) {
                this.f1235a.setTypeface(typeface, this.f1244j);
            } else {
                this.f1235a.setTypeface(typeface);
            }
        }
        if (strM != null) {
            d.d(this.f1235a, strM);
        }
        if (strM2 != null) {
            c.b(this.f1235a, c.a(strM2));
        }
        h0 h0Var = this.f1243i;
        Context context2 = h0Var.f1280j;
        int[] iArr2 = R.styleable.AppCompatTextView;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr2, i10, 0);
        TextView textView2 = h0Var.f1279i;
        j0.a0.o(textView2, textView2.getContext(), iArr2, attributeSet, typedArrayObtainStyledAttributes, i10);
        int i25 = R.styleable.AppCompatTextView_autoSizeTextType;
        if (typedArrayObtainStyledAttributes.hasValue(i25)) {
            h0Var.f1271a = typedArrayObtainStyledAttributes.getInt(i25, 0);
        }
        int i26 = R.styleable.AppCompatTextView_autoSizeStepGranularity;
        float dimension = typedArrayObtainStyledAttributes.hasValue(i26) ? typedArrayObtainStyledAttributes.getDimension(i26, -1.0f) : -1.0f;
        int i27 = R.styleable.AppCompatTextView_autoSizeMinTextSize;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(i27) ? typedArrayObtainStyledAttributes.getDimension(i27, -1.0f) : -1.0f;
        int i28 = R.styleable.AppCompatTextView_autoSizeMaxTextSize;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(i28) ? typedArrayObtainStyledAttributes.getDimension(i28, -1.0f) : -1.0f;
        int i29 = R.styleable.AppCompatTextView_autoSizePresetSizes;
        if (typedArrayObtainStyledAttributes.hasValue(i29) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i29, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            int length = typedArrayObtainTypedArray.length();
            int[] iArr3 = new int[length];
            if (length > 0) {
                for (int i30 = 0; i30 < length; i30++) {
                    iArr3[i30] = typedArrayObtainTypedArray.getDimensionPixelSize(i30, -1);
                }
                h0Var.f1276f = h0Var.b(iArr3);
                h0Var.h();
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!h0Var.i()) {
            h0Var.f1271a = 0;
        } else if (h0Var.f1271a == 1) {
            if (!h0Var.f1277g) {
                DisplayMetrics displayMetrics = h0Var.f1280j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                h0Var.j(dimension2, dimension3, dimension);
            }
            h0Var.g();
        }
        if (n0.b.f11163f) {
            h0 h0Var2 = this.f1243i;
            if (h0Var2.f1271a != 0) {
                int[] iArr4 = h0Var2.f1276f;
                if (iArr4.length > 0) {
                    if (d.a(this.f1235a) != -1.0f) {
                        d.b(this.f1235a, Math.round(this.f1243i.f1274d), Math.round(this.f1243i.f1275e), Math.round(this.f1243i.f1273c), 0);
                    } else {
                        d.c(this.f1235a, iArr4, 0);
                    }
                }
            }
        }
        f1 f1Var3 = new f1(context, context.obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView));
        int iL2 = f1Var3.l(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        Drawable drawableB = iL2 != -1 ? kVarA.b(context, iL2) : null;
        int iL3 = f1Var3.l(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawableB2 = iL3 != -1 ? kVarA.b(context, iL3) : null;
        int iL4 = f1Var3.l(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawableB3 = iL4 != -1 ? kVarA.b(context, iL4) : null;
        int iL5 = f1Var3.l(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawableB4 = iL5 != -1 ? kVarA.b(context, iL5) : null;
        int iL6 = f1Var3.l(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawableB5 = iL6 != -1 ? kVarA.b(context, iL6) : null;
        int iL7 = f1Var3.l(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        Drawable drawableB6 = iL7 != -1 ? kVarA.b(context, iL7) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] drawableArrA = b.a(this.f1235a);
            TextView textView3 = this.f1235a;
            if (drawableB5 == null) {
                drawableB5 = drawableArrA[0];
            }
            if (drawableB2 == null) {
                drawableB2 = drawableArrA[1];
            }
            if (drawableB6 == null) {
                drawableB6 = drawableArrA[2];
            }
            if (drawableB4 == null) {
                drawableB4 = drawableArrA[3];
            }
            b.b(textView3, drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] drawableArrA2 = b.a(this.f1235a);
            if (drawableArrA2[0] == null && drawableArrA2[2] == null) {
                Drawable[] compoundDrawables = this.f1235a.getCompoundDrawables();
                TextView textView4 = this.f1235a;
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView4.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                TextView textView5 = this.f1235a;
                Drawable drawable = drawableArrA2[0];
                if (drawableB2 == null) {
                    drawableB2 = drawableArrA2[1];
                }
                Drawable drawable2 = drawableArrA2[2];
                if (drawableB4 == null) {
                    drawableB4 = drawableArrA2[3];
                }
                b.b(textView5, drawable, drawableB2, drawable2, drawableB4);
            }
        }
        int i31 = R.styleable.AppCompatTextView_drawableTint;
        if (f1Var3.o(i31)) {
            ColorStateList colorStateListC = f1Var3.c(i31);
            TextView textView6 = this.f1235a;
            Objects.requireNonNull(textView6);
            n0.k.c.f(textView6, colorStateListC);
        }
        int i32 = R.styleable.AppCompatTextView_drawableTintMode;
        if (f1Var3.o(i32)) {
            PorterDuff.Mode modeD = l0.d(f1Var3.j(i32, -1), null);
            TextView textView7 = this.f1235a;
            Objects.requireNonNull(textView7);
            n0.k.c.g(textView7, modeD);
        }
        int iF = f1Var3.f(R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int iF2 = f1Var3.f(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int iF3 = f1Var3.f(R.styleable.AppCompatTextView_lineHeight, -1);
        f1Var3.r();
        if (iF != -1) {
            n0.k.b(this.f1235a, iF);
        }
        if (iF2 != -1) {
            n0.k.c(this.f1235a, iF2);
        }
        if (iF3 != -1) {
            n0.k.d(this.f1235a, iF3);
        }
    }

    public final void i(Context context, int i10) {
        String strM;
        f1 f1Var = new f1(context, context.obtainStyledAttributes(i10, R.styleable.TextAppearance));
        int i11 = R.styleable.TextAppearance_textAllCaps;
        if (f1Var.o(i11)) {
            k(f1Var.a(i11, false));
        }
        int i12 = Build.VERSION.SDK_INT;
        int i13 = R.styleable.TextAppearance_android_textSize;
        if (f1Var.o(i13) && f1Var.f(i13, -1) == 0) {
            this.f1235a.setTextSize(0, 0.0f);
        }
        q(context, f1Var);
        if (i12 >= 26) {
            int i14 = R.styleable.TextAppearance_fontVariationSettings;
            if (f1Var.o(i14) && (strM = f1Var.m(i14)) != null) {
                d.d(this.f1235a, strM);
            }
        }
        f1Var.r();
        Typeface typeface = this.f1246l;
        if (typeface != null) {
            this.f1235a.setTypeface(typeface, this.f1244j);
        }
    }

    public final void j(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i10 >= 30) {
            m0.a.C0201a.a(editorInfo, text);
            return;
        }
        Objects.requireNonNull(text);
        if (i10 >= 30) {
            m0.a.C0201a.a(editorInfo, text);
            return;
        }
        int i11 = editorInfo.initialSelStart;
        int i12 = editorInfo.initialSelEnd;
        int i13 = i11 > i12 ? i12 + 0 : i11 + 0;
        int i14 = i11 > i12 ? i11 - 0 : i12 + 0;
        int length = text.length();
        if (i13 < 0 || i14 > length) {
            m0.a.d(editorInfo, null, 0, 0);
            return;
        }
        int i15 = editorInfo.inputType & 4095;
        if (i15 == 129 || i15 == 225 || i15 == 18) {
            m0.a.d(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            m0.a.d(editorInfo, text, i13, i14);
            return;
        }
        int i16 = i14 - i13;
        int i17 = i16 > 1024 ? 0 : i16;
        int i18 = 2048 - i17;
        int iMin = Math.min(text.length() - i14, i18 - Math.min(i13, (int) (((double) i18) * 0.8d)));
        int iMin2 = Math.min(i13, i18 - iMin);
        int i19 = i13 - iMin2;
        if (m0.a.b(text, i19, 0)) {
            i19++;
            iMin2--;
        }
        if (m0.a.b(text, (i14 + iMin) - 1, 1)) {
            iMin--;
        }
        CharSequence charSequenceConcat = i17 != i16 ? TextUtils.concat(text.subSequence(i19, i19 + iMin2), text.subSequence(i14, iMin + i14)) : text.subSequence(i19, iMin2 + i17 + iMin + i19);
        int i20 = iMin2 + 0;
        m0.a.d(editorInfo, charSequenceConcat, i20, i17 + i20);
    }

    public final void k(boolean z10) {
        this.f1235a.setAllCaps(z10);
    }

    public final void l(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        h0 h0Var = this.f1243i;
        if (h0Var.i()) {
            DisplayMetrics displayMetrics = h0Var.f1280j.getResources().getDisplayMetrics();
            h0Var.j(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (h0Var.g()) {
                h0Var.a();
            }
        }
    }

    public final void m(int[] iArr, int i10) throws IllegalArgumentException {
        h0 h0Var = this.f1243i;
        if (h0Var.i()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i10 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = h0Var.f1280j.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArrCopyOf[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                h0Var.f1276f = h0Var.b(iArrCopyOf);
                if (!h0Var.h()) {
                    StringBuilder sbC = a0.b.c("None of the preset sizes is valid: ");
                    sbC.append(Arrays.toString(iArr));
                    throw new IllegalArgumentException(sbC.toString());
                }
            } else {
                h0Var.f1277g = false;
            }
            if (h0Var.g()) {
                h0Var.a();
            }
        }
    }

    public final void n(int i10) {
        h0 h0Var = this.f1243i;
        if (h0Var.i()) {
            if (i10 == 0) {
                h0Var.f1271a = 0;
                h0Var.f1274d = -1.0f;
                h0Var.f1275e = -1.0f;
                h0Var.f1273c = -1.0f;
                h0Var.f1276f = new int[0];
                h0Var.f1272b = false;
                return;
            }
            if (i10 != 1) {
                throw new IllegalArgumentException(e0.d("Unknown auto-size text type: ", i10));
            }
            DisplayMetrics displayMetrics = h0Var.f1280j.getResources().getDisplayMetrics();
            h0Var.j(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (h0Var.g()) {
                h0Var.a();
            }
        }
    }

    public final void o(ColorStateList colorStateList) {
        if (this.f1242h == null) {
            this.f1242h = new d1();
        }
        d1 d1Var = this.f1242h;
        d1Var.f1222a = colorStateList;
        d1Var.f1225d = colorStateList != null;
        this.f1236b = d1Var;
        this.f1237c = d1Var;
        this.f1238d = d1Var;
        this.f1239e = d1Var;
        this.f1240f = d1Var;
        this.f1241g = d1Var;
    }

    public final void p(PorterDuff.Mode mode) {
        if (this.f1242h == null) {
            this.f1242h = new d1();
        }
        d1 d1Var = this.f1242h;
        d1Var.f1223b = mode;
        d1Var.f1224c = mode != null;
        this.f1236b = d1Var;
        this.f1237c = d1Var;
        this.f1238d = d1Var;
        this.f1239e = d1Var;
        this.f1240f = d1Var;
        this.f1241g = d1Var;
    }

    public final void q(Context context, f1 f1Var) {
        String strM;
        this.f1244j = f1Var.j(R.styleable.TextAppearance_android_textStyle, this.f1244j);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int iJ = f1Var.j(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.f1245k = iJ;
            if (iJ != -1) {
                this.f1244j = (this.f1244j & 2) | 0;
            }
        }
        int i11 = R.styleable.TextAppearance_android_fontFamily;
        if (!f1Var.o(i11) && !f1Var.o(R.styleable.TextAppearance_fontFamily)) {
            int i12 = R.styleable.TextAppearance_android_typeface;
            if (f1Var.o(i12)) {
                this.f1247m = false;
                int iJ2 = f1Var.j(i12, 1);
                if (iJ2 == 1) {
                    this.f1246l = Typeface.SANS_SERIF;
                    return;
                } else if (iJ2 == 2) {
                    this.f1246l = Typeface.SERIF;
                    return;
                } else {
                    if (iJ2 != 3) {
                        return;
                    }
                    this.f1246l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f1246l = null;
        int i13 = R.styleable.TextAppearance_fontFamily;
        if (f1Var.o(i13)) {
            i11 = i13;
        }
        int i14 = this.f1245k;
        int i15 = this.f1244j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceI = f1Var.i(i11, this.f1244j, new a(i14, i15, new WeakReference(this.f1235a)));
                if (typefaceI != null) {
                    if (i10 < 28 || this.f1245k == -1) {
                        this.f1246l = typefaceI;
                    } else {
                        this.f1246l = e.a(Typeface.create(typefaceI, 0), this.f1245k, (this.f1244j & 2) != 0);
                    }
                }
                this.f1247m = this.f1246l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1246l != null || (strM = f1Var.m(i11)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1245k == -1) {
            this.f1246l = Typeface.create(strM, this.f1244j);
        } else {
            this.f1246l = e.a(Typeface.create(strM, 0), this.f1245k, (this.f1244j & 2) != 0);
        }
    }
}
