package k5;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import java.util.Objects;

/* JADX INFO: compiled from: SubtitleViewUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static void a(z4.a.C0332a c0332a) {
        c0332a.f19321k = -3.4028235E38f;
        c0332a.f19320j = Integer.MIN_VALUE;
        CharSequence charSequence = c0332a.f19311a;
        if (charSequence instanceof Spanned) {
            if (!(charSequence instanceof Spannable)) {
                c0332a.f19311a = SpannableString.valueOf(charSequence);
            }
            CharSequence charSequence2 = c0332a.f19311a;
            Objects.requireNonNull(charSequence2);
            Spannable spannable = (Spannable) charSequence2;
            for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                if ((obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan)) {
                    spannable.removeSpan(obj);
                }
            }
        }
    }

    public static float b(int i10, float f10, int i11, int i12) {
        float f11;
        if (f10 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i10 == 0) {
            f11 = i12;
        } else {
            if (i10 != 1) {
                if (i10 != 2) {
                    return -3.4028235E38f;
                }
                return f10;
            }
            f11 = i11;
        }
        return f10 * f11;
    }
}
