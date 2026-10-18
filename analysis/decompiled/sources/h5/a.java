package h5;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.appcompat.widget.y0;
import java.util.List;
import m5.g0;
import m5.p;
import m5.w;
import t6.c;
import z4.f;
import z4.g;
import z4.i;

/* JADX INFO: compiled from: Tx3gDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final w f8183m = new w();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f8184n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f8185o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f8186p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8187q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final float f8188r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f8189s;

    public a(List<byte[]> list) {
        if (list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f8185o = 0;
            this.f8186p = -1;
            this.f8187q = "sans-serif";
            this.f8184n = false;
            this.f8188r = 0.85f;
            this.f8189s = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.f8185o = bArr[24];
        this.f8186p = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f8187q = "Serif".equals(g0.o(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i10 = bArr[25] * 20;
        this.f8189s = i10;
        boolean z10 = (bArr[0] & 32) != 0;
        this.f8184n = z10;
        if (z10) {
            this.f8188r = g0.h(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i10, 0.0f, 0.95f);
        } else {
            this.f8188r = 0.85f;
        }
    }

    public static void l(boolean z10) throws i {
        if (!z10) {
            throw new i("Unexpected subtitle format.");
        }
    }

    public static void m(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            int i15 = i14 | 33;
            boolean z10 = (i10 & 1) != 0;
            boolean z11 = (i10 & 2) != 0;
            if (z10) {
                if (z11) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i12, i13, i15);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i12, i13, i15);
                }
            } else if (z11) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i12, i13, i15);
            }
            boolean z12 = (i10 & 4) != 0;
            if (z12) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i12, i13, i15);
            }
            if (z12 || z10 || z11) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i12, i13, i15);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004e  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // z4.f
    public final g k(byte[] bArr, int i10, boolean z10) throws i {
        String strR;
        boolean z11;
        this.f8183m.B(bArr, i10);
        w wVar = this.f8183m;
        boolean z12 = false;
        int i11 = 2;
        int i12 = 1;
        l(wVar.f10477c - wVar.f10476b >= 2);
        int iY = wVar.y();
        int i13 = 8;
        if (iY == 0) {
            strR = "";
        } else {
            int i14 = wVar.f10477c;
            int i15 = wVar.f10476b;
            if (i14 - i15 >= 2) {
                byte[] bArr2 = wVar.f10475a;
                char c10 = (char) ((bArr2[i15 + 1] & 255) | ((bArr2[i15] & 255) << 8));
                if (c10 == 65279 || c10 == 65534) {
                    strR = wVar.r(iY, c.f15540e);
                } else {
                    strR = wVar.r(iY, c.f15538c);
                }
            } else {
                strR = wVar.r(iY, c.f15538c);
            }
        }
        if (strR.isEmpty()) {
            return b.f8190i;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strR);
        m(spannableStringBuilder, this.f8185o, 0, 0, spannableStringBuilder.length(), 16711680);
        int i16 = this.f8186p;
        int length = spannableStringBuilder.length();
        if (i16 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i16 >>> 8) | ((i16 & 255) << 24)), 0, length, 16711713);
        }
        String str = this.f8187q;
        int length2 = spannableStringBuilder.length();
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length2, 16711713);
        }
        float fH = this.f8188r;
        while (true) {
            w wVar2 = this.f8183m;
            int i17 = wVar2.f10477c;
            int i18 = wVar2.f10476b;
            if (i17 - i18 < i13) {
                return new b(new z4.a(spannableStringBuilder, null, null, null, fH, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f));
            }
            int iE = wVar2.e();
            int iE2 = this.f8183m.e();
            if (iE2 == 1937013100) {
                w wVar3 = this.f8183m;
                l(wVar3.f10477c - wVar3.f10476b >= i11 ? i12 : z12 ? 1 : 0);
                int iY2 = this.f8183m.y();
                int i19 = z12 ? 1 : 0;
                boolean z13 = z12;
                while (i19 < iY2) {
                    w wVar4 = this.f8183m;
                    if (wVar4.f10477c - wVar4.f10476b >= 12) {
                        z11 = z13;
                        z11 = i12;
                    }
                    z11 = z13;
                    l(z11);
                    int iY3 = wVar4.y();
                    int iY4 = wVar4.y();
                    wVar4.E(i11);
                    int iT = wVar4.t();
                    wVar4.E(i12);
                    int iE3 = wVar4.e();
                    if (iY4 > spannableStringBuilder.length()) {
                        StringBuilder sbC = y0.c("Truncating styl end (", iY4, ") to cueText.length() (");
                        sbC.append(spannableStringBuilder.length());
                        sbC.append(").");
                        p.g("Tx3gDecoder", sbC.toString());
                        iY4 = spannableStringBuilder.length();
                    }
                    int i20 = iY4;
                    if (iY3 >= i20) {
                        p.g("Tx3gDecoder", "Ignoring styl with start (" + iY3 + ") >= end (" + i20 + ").");
                    } else {
                        m(spannableStringBuilder, iT, this.f8185o, iY3, i20, 0);
                        if (iE3 != this.f8186p) {
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(((iE3 & 255) << 24) | (iE3 >>> 8)), iY3, i20, 33);
                        }
                    }
                    i19++;
                    z13 = false;
                    i11 = 2;
                    i12 = 1;
                }
            } else if (iE2 == 1952608120 && this.f8184n) {
                w wVar5 = this.f8183m;
                l(wVar5.f10477c - wVar5.f10476b >= 2);
                i11 = 2;
                fH = g0.h(this.f8183m.y() / this.f8189s, 0.0f, 0.95f);
            } else {
                i11 = 2;
            }
            this.f8183m.D(i18 + iE);
            z12 = false;
            i12 = 1;
            i13 = 8;
        }
    }
}
