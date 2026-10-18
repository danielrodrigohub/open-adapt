package g6;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;

/* JADX INFO: compiled from: StaticLayoutBuilderCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f7753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextPaint f7754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7756d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f7763k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Layout.Alignment f7757e = Layout.Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7758f = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f7759g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f7760h = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7761i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f7762j = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextUtils.TruncateAt f7764l = null;

    /* JADX INFO: compiled from: StaticLayoutBuilderCompat.java */
    public static class a extends Exception {
    }

    public k(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f7753a = charSequence;
        this.f7754b = textPaint;
        this.f7755c = i10;
        this.f7756d = charSequence.length();
    }

    public final StaticLayout a() throws a {
        if (this.f7753a == null) {
            this.f7753a = "";
        }
        int iMax = Math.max(0, this.f7755c);
        CharSequence charSequenceEllipsize = this.f7753a;
        if (this.f7758f == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f7754b, iMax, this.f7764l);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f7756d);
        this.f7756d = iMin;
        if (this.f7763k && this.f7758f == 1) {
            this.f7757e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, this.f7754b, iMax);
        builderObtain.setAlignment(this.f7757e);
        builderObtain.setIncludePad(this.f7762j);
        builderObtain.setTextDirection(this.f7763k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f7764l;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f7758f);
        float f10 = this.f7759g;
        if (f10 != 0.0f || this.f7760h != 1.0f) {
            builderObtain.setLineSpacing(f10, this.f7760h);
        }
        if (this.f7758f > 1) {
            builderObtain.setHyphenationFrequency(this.f7761i);
        }
        return builderObtain.build();
    }
}
