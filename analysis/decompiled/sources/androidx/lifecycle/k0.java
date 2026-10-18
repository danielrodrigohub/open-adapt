package androidx.lifecycle;

import android.app.Activity;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.Log;
import android.widget.TextView;
import androidx.fragment.app.r0;
import java.util.TreeMap;
import java.util.logging.Level;

/* JADX INFO: compiled from: ViewModelProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public class k0 implements e3.h, g7.q, fe.g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final k0 f2215h = new k0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f2216i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long[] f2217j = new long[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object[] f2218k = new Object[0];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final k0 f2219l = new k0();

    public static int e(int[] iArr, int i10, int i11) {
        int i12 = i10 - 1;
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = (i13 + i12) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i11) {
                i13 = i14 + 1;
            } else {
                if (i15 <= i11) {
                    return i14;
                }
                i12 = i14 - 1;
            }
        }
        return ~i13;
    }

    public static int f(long[] jArr, int i10, long j10) {
        int i11 = i10 - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) >>> 1;
            long j11 = jArr[i13];
            if (j11 < j10) {
                i12 = i13 + 1;
            } else {
                if (j11 <= j10) {
                    return i13;
                }
                i11 = i13 - 1;
            }
        }
        return ~i12;
    }

    public static boolean g(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int i(int i10) {
        int i11 = i10 * 4;
        for (int i12 = 4; i12 < 32; i12++) {
            int i13 = (1 << i12) - 12;
            if (i11 <= i13) {
                i11 = i13;
                break;
            }
        }
        return i11 / 4;
    }

    public static int j(int i10) {
        int i11 = i10 * 8;
        for (int i12 = 4; i12 < 32; i12++) {
            int i13 = (1 << i12) - 12;
            if (i11 <= i13) {
                i11 = i13;
                break;
            }
        }
        return i11 / 8;
    }

    public static void l(Activity activity, TextView textView, String str, String str2, String str3, v7.m mVar, qd.a aVar, int i10) {
        if ((i10 & 16) != 0) {
            str3 = "";
        }
        if ((i10 & 32) != 0) {
            mVar = null;
        }
        if ((i10 & 64) != 0) {
            aVar = s9.b0.f15179h;
        }
        p4.h.j(activity, "activity");
        p4.h.j(str3, "url");
        p4.h.j(aVar, "onClick");
        if (textView == null) {
            return;
        }
        Spanned spannedFromHtml = Html.fromHtml(yd.o.d0(str, str2, a0.b.a("<a href='", str3, "'>", str2, "</a>"), true));
        p4.h.i(spannedFromHtml, "fromHtml(privacyBody)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannedFromHtml);
        URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(0, spannedFromHtml.length(), URLSpan.class);
        p4.h.i(uRLSpanArr, "urls");
        for (URLSpan uRLSpan : uRLSpanArr) {
            p4.h.i(uRLSpan, "span");
            spannableStringBuilder.setSpan(new s9.a0(mVar, activity, aVar), spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), spannableStringBuilder.getSpanFlags(uRLSpan));
            spannableStringBuilder.removeSpan(uRLSpan);
        }
        textView.setText(spannableStringBuilder);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    @Override // fe.g
    public void a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(k(level), "EventBus", str);
        }
    }

    @Override // e3.h
    public void b(e3.i iVar) {
        iVar.g();
    }

    @Override // e3.h
    public void c(e3.i iVar) {
    }

    @Override // g7.q
    public Object construct() {
        return new TreeMap();
    }

    @Override // fe.g
    public void d(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            int iK = k(level);
            StringBuilder sbH = r0.h(str, "\n");
            sbH.append(Log.getStackTraceString(th));
            Log.println(iK, "EventBus", sbH.toString());
        }
    }

    public void h(m6.k kVar, float f10, float f11) {
        throw null;
    }

    public int k(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }
}
