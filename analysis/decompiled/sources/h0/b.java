package h0;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: compiled from: PrecomputedTextCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Spannable {
    @Override // java.lang.CharSequence
    public final char charAt(int i10) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final <T> T[] getSpans(int i10, int i11, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        throw null;
    }

    @Override // java.lang.CharSequence
    public final int length() {
        throw null;
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i10, int i11, Class cls) {
        throw null;
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT < 29) {
            throw null;
        }
        throw null;
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i10, int i11, int i12) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT < 29) {
            throw null;
        }
        throw null;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i10, int i11) {
        throw null;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        throw null;
    }

    /* JADX INFO: compiled from: PrecomputedTextCompat.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextPaint f8095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextDirectionHeuristic f8096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f8097c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f8098d;

        public a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i10, int i11) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i10).setHyphenationFrequency(i11).setTextDirection(textDirectionHeuristic).build();
            }
            this.f8095a = textPaint;
            this.f8096b = textDirectionHeuristic;
            this.f8097c = i10;
            this.f8098d = i11;
        }

        public final boolean a(a aVar) {
            if (this.f8097c != aVar.f8097c || this.f8098d != aVar.f8098d || this.f8095a.getTextSize() != aVar.f8095a.getTextSize() || this.f8095a.getTextScaleX() != aVar.f8095a.getTextScaleX() || this.f8095a.getTextSkewX() != aVar.f8095a.getTextSkewX() || this.f8095a.getLetterSpacing() != aVar.f8095a.getLetterSpacing() || !TextUtils.equals(this.f8095a.getFontFeatureSettings(), aVar.f8095a.getFontFeatureSettings()) || this.f8095a.getFlags() != aVar.f8095a.getFlags() || !this.f8095a.getTextLocales().equals(aVar.f8095a.getTextLocales())) {
                return false;
            }
            if (this.f8095a.getTypeface() == null) {
                return aVar.f8095a.getTypeface() == null;
            }
            return this.f8095a.getTypeface().equals(aVar.f8095a.getTypeface());
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return a(aVar) && this.f8096b == aVar.f8096b;
        }

        public final int hashCode() {
            return i0.c.b(Float.valueOf(this.f8095a.getTextSize()), Float.valueOf(this.f8095a.getTextScaleX()), Float.valueOf(this.f8095a.getTextSkewX()), Float.valueOf(this.f8095a.getLetterSpacing()), Integer.valueOf(this.f8095a.getFlags()), this.f8095a.getTextLocales(), this.f8095a.getTypeface(), Boolean.valueOf(this.f8095a.isElegantTextHeight()), this.f8096b, Integer.valueOf(this.f8097c), Integer.valueOf(this.f8098d));
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            StringBuilder sbC = a0.b.c("textSize=");
            sbC.append(this.f8095a.getTextSize());
            sb2.append(sbC.toString());
            sb2.append(", textScaleX=" + this.f8095a.getTextScaleX());
            sb2.append(", textSkewX=" + this.f8095a.getTextSkewX());
            int i10 = Build.VERSION.SDK_INT;
            StringBuilder sbC2 = a0.b.c(", letterSpacing=");
            sbC2.append(this.f8095a.getLetterSpacing());
            sb2.append(sbC2.toString());
            sb2.append(", elegantTextHeight=" + this.f8095a.isElegantTextHeight());
            sb2.append(", textLocale=" + this.f8095a.getTextLocales());
            sb2.append(", typeface=" + this.f8095a.getTypeface());
            if (i10 >= 26) {
                StringBuilder sbC3 = a0.b.c(", variationSettings=");
                sbC3.append(this.f8095a.getFontVariationSettings());
                sb2.append(sbC3.toString());
            }
            StringBuilder sbC4 = a0.b.c(", textDir=");
            sbC4.append(this.f8096b);
            sb2.append(sbC4.toString());
            sb2.append(", breakStrategy=" + this.f8097c);
            sb2.append(", hyphenationFrequency=" + this.f8098d);
            sb2.append("}");
            return sb2.toString();
        }

        public a(PrecomputedText.Params params) {
            this.f8095a = params.getTextPaint();
            this.f8096b = params.getTextDirection();
            this.f8097c = params.getBreakStrategy();
            this.f8098d = params.getHyphenationFrequency();
        }
    }
}
