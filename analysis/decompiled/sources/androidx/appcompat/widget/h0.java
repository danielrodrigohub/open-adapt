package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final RectF f1268l = new RectF();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    public static ConcurrentHashMap<String, Method> f1269m = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    public static ConcurrentHashMap<String, Field> f1270n = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1271a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1272b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f1273c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1274d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1275e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f1276f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1277g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextPaint f1278h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f1279i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f1280j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final d f1281k;

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    public static final class a {
        public static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i10, TextView textView, TextPaint textPaint) {
            return new StaticLayout(charSequence, textPaint, i10, alignment, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
        }

        public static int b(TextView textView) {
            return textView.getMaxLines();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    public static final class b {
        public static boolean a(View view) {
            return view.isInLayout();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    public static final class c {
        public static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11, TextView textView, TextPaint textPaint, f fVar) {
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i10);
            StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i11 == -1) {
                i11 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i11);
            try {
                fVar.a(builderObtain, textView);
            } catch (ClassCastException unused) {
                Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return builderObtain.build();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    public static class d extends f {
        @Override // androidx.appcompat.widget.h0.f
        public void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) h0.e(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    public static class e extends d {
        @Override // androidx.appcompat.widget.h0.d, androidx.appcompat.widget.h0.f
        public void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.h0.f
        public boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    public static class f {
        public void a(StaticLayout.Builder builder, TextView textView) {
            throw null;
        }

        public boolean b(TextView textView) {
            return ((Boolean) h0.e(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public h0(TextView textView) {
        this.f1279i = textView;
        this.f1280j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1281k = new e();
        } else {
            this.f1281k = new d();
        }
    }

    public static Method d(String str) {
        try {
            Method declaredMethod = f1269m.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                declaredMethod.setAccessible(true);
                f1269m.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e10);
            return null;
        }
    }

    public static <T> T e(Object obj, String str, T t10) {
        try {
            return (T) d(str).invoke(obj, new Object[0]);
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e10);
            return t10;
        }
    }

    public final void a() {
        if (i() && this.f1271a != 0) {
            if (this.f1272b) {
                if (this.f1279i.getMeasuredHeight() <= 0 || this.f1279i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f1281k.b(this.f1279i) ? 1048576 : (this.f1279i.getMeasuredWidth() - this.f1279i.getTotalPaddingLeft()) - this.f1279i.getTotalPaddingRight();
                int height = (this.f1279i.getHeight() - this.f1279i.getCompoundPaddingBottom()) - this.f1279i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f1268l;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float fC = c(rectF);
                    if (fC != this.f1279i.getTextSize()) {
                        f(0, fC);
                    }
                }
            }
            this.f1272b = true;
        }
    }

    public final int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    public final int c(RectF rectF) {
        CharSequence transformation;
        int length = this.f1276f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i10 = length - 1;
        int i11 = 1;
        int i12 = 0;
        while (i11 <= i10) {
            int i13 = (i11 + i10) / 2;
            int i14 = this.f1276f[i13];
            CharSequence text = this.f1279i.getText();
            TransformationMethod transformationMethod = this.f1279i.getTransformationMethod();
            if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1279i)) != null) {
                text = transformation;
            }
            int iB = a.b(this.f1279i);
            TextPaint textPaint = this.f1278h;
            if (textPaint == null) {
                this.f1278h = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f1278h.set(this.f1279i.getPaint());
            this.f1278h.setTextSize(i14);
            StaticLayout staticLayoutA = c.a(text, (Layout.Alignment) e(this.f1279i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), iB, this.f1279i, this.f1278h, this.f1281k);
            if ((iB == -1 || (staticLayoutA.getLineCount() <= iB && staticLayoutA.getLineEnd(staticLayoutA.getLineCount() - 1) == text.length())) && ((float) staticLayoutA.getHeight()) <= rectF.bottom) {
                int i15 = i13 + 1;
                i12 = i11;
                i11 = i15;
            } else {
                i12 = i13 - 1;
                i10 = i12;
            }
        }
        return this.f1276f[i12];
    }

    public final void f(int i10, float f10) {
        Context context = this.f1280j;
        float fApplyDimension = TypedValue.applyDimension(i10, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        if (fApplyDimension != this.f1279i.getPaint().getTextSize()) {
            this.f1279i.getPaint().setTextSize(fApplyDimension);
            boolean zA = b.a(this.f1279i);
            if (this.f1279i.getLayout() != null) {
                this.f1272b = false;
                try {
                    Method methodD = d("nullLayouts");
                    if (methodD != null) {
                        methodD.invoke(this.f1279i, new Object[0]);
                    }
                } catch (Exception e10) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e10);
                }
                if (zA) {
                    this.f1279i.forceLayout();
                } else {
                    this.f1279i.requestLayout();
                }
                this.f1279i.invalidate();
            }
        }
    }

    public final boolean g() {
        if (i() && this.f1271a == 1) {
            if (!this.f1277g || this.f1276f.length == 0) {
                int iFloor = ((int) Math.floor((this.f1275e - this.f1274d) / this.f1273c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i10 = 0; i10 < iFloor; i10++) {
                    iArr[i10] = Math.round((i10 * this.f1273c) + this.f1274d);
                }
                this.f1276f = b(iArr);
            }
            this.f1272b = true;
        } else {
            this.f1272b = false;
        }
        return this.f1272b;
    }

    public final boolean h() {
        int[] iArr = this.f1276f;
        int length = iArr.length;
        boolean z10 = length > 0;
        this.f1277g = z10;
        if (z10) {
            this.f1271a = 1;
            this.f1274d = iArr[0];
            this.f1275e = iArr[length - 1];
            this.f1273c = -1.0f;
        }
        return z10;
    }

    public final boolean i() {
        return !(this.f1279i instanceof l);
    }

    public final void j(float f10, float f11, float f12) throws IllegalArgumentException {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
        }
        if (f11 <= f10) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        if (f12 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
        }
        this.f1271a = 1;
        this.f1274d = f10;
        this.f1275e = f11;
        this.f1273c = f12;
        this.f1277g = false;
    }
}
