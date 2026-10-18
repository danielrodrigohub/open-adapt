package a5;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import m5.g0;
import m5.p;
import m5.w;
import okhttp3.internal.http.HttpStatusCodesKt;
import z4.g;
import z4.i;
import z4.l;
import z4.m;

/* JADX INFO: compiled from: Cea608Decoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f377i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f378j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<z4.a> f382n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public List<z4.a> f383o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f384p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f385q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f386r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f387s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f388t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f389u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f391w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f392x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f373y = {11, 1, 3, 12, 14, 5, 7, 9};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f374z = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] A = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    public static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, AnalyticsEvent.EVENT_TYPE_LIMIT, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    public static final int[] C = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, HttpStatusCodesKt.HTTP_IM_USED, 234, 238, 244, 251};
    public static final int[] D = {193, HttpStatusCodesKt.HTTP_CREATED, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, HttpStatusCodesKt.HTTP_OK, HttpStatusCodesKt.HTTP_ACCEPTED, HttpStatusCodesKt.HTTP_NOT_AUTHORITATIVE, 235, HttpStatusCodesKt.HTTP_PARTIAL_CONTENT, HttpStatusCodesKt.HTTP_MULTI_STATUS, 239, 212, 217, 249, 219, 171, 187};
    public static final int[] E = {195, 227, HttpStatusCodesKt.HTTP_RESET_CONTENT, HttpStatusCodesKt.HTTP_NO_CONTENT, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f375g = new w();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList<C0006a> f380l = new ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0006a f381m = new C0006a(0, 4);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f390v = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f379k = 16000000;

    /* JADX INFO: renamed from: a5.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Cea608Decoder.java */
    public static final class C0006a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<C0007a> f393a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<SpannableString> f394b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StringBuilder f395c = new StringBuilder();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f396d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f397e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f398f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f399g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f400h;

        /* JADX INFO: renamed from: a5.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Cea608Decoder.java */
        public static class C0007a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f401a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f402b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f403c;

            public C0007a(int i10, boolean z10, int i11) {
                this.f401a = i10;
                this.f402b = z10;
                this.f403c = i11;
            }
        }

        public C0006a(int i10, int i11) {
            f(i10);
            this.f400h = i11;
        }

        public final void a(char c10) {
            if (this.f395c.length() < 32) {
                this.f395c.append(c10);
            }
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        public final void b() {
            C0007a c0007a;
            int i10;
            int length = this.f395c.length();
            if (length <= 0) {
                return;
            }
            this.f395c.delete(length - 1, length);
            int size = this.f393a.size();
            while (true) {
                size--;
                if (size < 0 || (i10 = (c0007a = (C0007a) this.f393a.get(size)).f403c) != length) {
                    return;
                } else {
                    c0007a.f403c = i10 - 1;
                }
            }
        }

        /* JADX WARN: Type inference failed for: r6v0, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        /* JADX WARN: Type inference failed for: r6v10, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        public final z4.a c(int i10) {
            int i11;
            float f10;
            int i12 = this.f397e + this.f398f;
            int i13 = 32 - i12;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i14 = 0; i14 < this.f394b.size(); i14++) {
                CharSequence charSequenceSubSequence = (CharSequence) this.f394b.get(i14);
                int i15 = g0.f10384a;
                if (charSequenceSubSequence.length() > i13) {
                    charSequenceSubSequence = charSequenceSubSequence.subSequence(0, i13);
                }
                spannableStringBuilder.append(charSequenceSubSequence);
                spannableStringBuilder.append('\n');
            }
            SpannableString spannableStringD = d();
            int i16 = g0.f10384a;
            int length = spannableStringD.length();
            SpannableString spannableStringSubSequence = spannableStringD;
            if (length > i13) {
                spannableStringSubSequence = spannableStringD.subSequence(0, i13);
            }
            spannableStringBuilder.append((CharSequence) spannableStringSubSequence);
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length2 = i13 - spannableStringBuilder.length();
            int i17 = i12 - length2;
            if (i10 != Integer.MIN_VALUE) {
                i11 = i10;
            } else if (this.f399g != 2 || (Math.abs(i17) >= 3 && length2 >= 0)) {
                i11 = (this.f399g != 2 || i17 <= 0) ? 0 : 2;
            } else {
                i11 = 1;
            }
            if (i11 != 1) {
                if (i11 == 2) {
                    i12 = 32 - length2;
                }
                f10 = ((i12 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            float f11 = f10;
            int i18 = this.f396d;
            if (i18 > 7) {
                i18 = (i18 - 15) - 2;
            } else if (this.f399g == 1) {
                i18 -= this.f400h - 1;
            }
            return new z4.a(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, null, null, i18, 1, Integer.MIN_VALUE, f11, i11, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
        }

        /* JADX WARN: Type inference failed for: r12v0, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        /* JADX WARN: Type inference failed for: r12v12, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        /* JADX WARN: Type inference failed for: r12v2, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        /* JADX WARN: Type inference failed for: r12v5, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        public final SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f395c);
            int length = spannableStringBuilder.length();
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = 0;
            int i15 = 0;
            boolean z10 = false;
            while (i14 < this.f393a.size()) {
                C0007a c0007a = (C0007a) this.f393a.get(i14);
                boolean z11 = c0007a.f402b;
                int i16 = c0007a.f401a;
                if (i16 != 8) {
                    boolean z12 = i16 == 7;
                    if (i16 != 7) {
                        i13 = a.A[i16];
                    }
                    z10 = z12;
                }
                int i17 = c0007a.f403c;
                i14++;
                if (i17 != (i14 < this.f393a.size() ? ((C0007a) this.f393a.get(i14)).f403c : length)) {
                    if (i10 != -1 && !z11) {
                        spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i17, 33);
                        i10 = -1;
                    } else if (i10 == -1 && z11) {
                        i10 = i17;
                    }
                    if (i11 != -1 && !z10) {
                        spannableStringBuilder.setSpan(new StyleSpan(2), i11, i17, 33);
                        i11 = -1;
                    } else if (i11 == -1 && z10) {
                        i11 = i17;
                    }
                    if (i13 != i12) {
                        if (i12 != -1) {
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i15, i17, 33);
                        }
                        i15 = i17;
                        i12 = i13;
                    }
                }
            }
            if (i10 != -1 && i10 != length) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
            }
            if (i11 != -1 && i11 != length) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i11, length, 33);
            }
            if (i15 != length && i12 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i15, length, 33);
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        public final boolean e() {
            return this.f393a.isEmpty() && this.f394b.isEmpty() && this.f395c.length() == 0;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        public final void f(int i10) {
            this.f399g = i10;
            this.f393a.clear();
            this.f394b.clear();
            this.f395c.setLength(0);
            this.f396d = 15;
            this.f397e = 0;
            this.f398f = 0;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        public final void g() {
            this.f394b.add(d());
            this.f395c.setLength(0);
            this.f393a.clear();
            int iMin = Math.min(this.f400h, this.f396d);
            while (this.f394b.size() >= iMin) {
                this.f394b.remove(0);
            }
        }
    }

    public a(String str, int i10) {
        this.f376h = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i10 == 1) {
            this.f378j = 0;
            this.f377i = 0;
        } else if (i10 == 2) {
            this.f378j = 1;
            this.f377i = 0;
        } else if (i10 == 3) {
            this.f378j = 0;
            this.f377i = 1;
        } else if (i10 != 4) {
            p.g("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f378j = 0;
            this.f377i = 0;
        } else {
            this.f378j = 1;
            this.f377i = 1;
        }
        m(0);
        l();
        this.f391w = true;
        this.f392x = -9223372036854775807L;
    }

    @Override // a5.d, q3.d
    public final void a() {
    }

    @Override // a5.d
    public final g f() {
        List<z4.a> list = this.f382n;
        this.f383o = list;
        Objects.requireNonNull(list);
        return new e(list);
    }

    @Override // a5.d, q3.d
    public final void flush() {
        super.flush();
        this.f382n = null;
        this.f383o = null;
        m(0);
        n(4);
        l();
        this.f386r = false;
        this.f387s = false;
        this.f388t = (byte) 0;
        this.f389u = (byte) 0;
        this.f390v = 0;
        this.f391w = true;
        this.f392x = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0061  */
    /* JADX WARN: Code duplicated, block: B:42:0x0088  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2 A[FALL_THROUGH] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.ArrayList, java.util.List<a5.a$a$a>] */
    @Override // a5.d
    public final void g(l lVar) {
        boolean z10;
        boolean z11;
        ByteBuffer byteBuffer = lVar.f13581j;
        Objects.requireNonNull(byteBuffer);
        this.f375g.B(byteBuffer.array(), byteBuffer.limit());
        boolean z12 = false;
        while (true) {
            w wVar = this.f375g;
            int i10 = wVar.f10477c - wVar.f10476b;
            int i11 = this.f376h;
            if (i10 < i11) {
                if (z12) {
                    int i12 = this.f384p;
                    if (i12 == 1 || i12 == 3) {
                        this.f382n = k();
                        this.f392x = this.f451e;
                        return;
                    }
                    return;
                }
                return;
            }
            byte bT = i11 == 2 ? (byte) -4 : (byte) wVar.t();
            int iT = this.f375g.t();
            int iT2 = this.f375g.t();
            if ((bT & 2) == 0 && (bT & 1) == this.f377i) {
                byte b10 = (byte) (iT & 127);
                byte b11 = (byte) (iT2 & 127);
                if (b10 != 0 || b11 != 0) {
                    boolean z13 = this.f386r;
                    if ((bT & 4) == 4) {
                        boolean[] zArr = F;
                        if (zArr[iT] && zArr[iT2]) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z10 = false;
                    }
                    this.f386r = z10;
                    if (z10) {
                        if (!((b10 & 240) == 16)) {
                            this.f387s = false;
                        } else if (this.f387s && this.f388t == b10 && this.f389u == b11) {
                            this.f387s = false;
                            z11 = true;
                        } else {
                            this.f387s = true;
                            this.f388t = b10;
                            this.f389u = b11;
                        }
                        z11 = false;
                    } else {
                        this.f387s = false;
                        z11 = false;
                    }
                    if (!z11) {
                        if (z10) {
                            if (1 <= b10 && b10 <= 15) {
                                this.f391w = false;
                            } else if ((b10 & 247) == 20) {
                                if (b11 != 32 && b11 != 47) {
                                    switch (b11) {
                                        default:
                                            switch (b11) {
                                                case 42:
                                                case 43:
                                                    this.f391w = false;
                                                    break;
                                            }
                                        case 37:
                                        case 38:
                                        case 39:
                                            this.f391w = true;
                                            break;
                                    }
                                } else {
                                    this.f391w = true;
                                }
                            }
                            if (this.f391w) {
                                int i13 = b10 & 224;
                                if (i13 == 0) {
                                    this.f390v = (b10 >> 3) & 1;
                                }
                                if (this.f390v == this.f378j) {
                                    if (i13 == 0) {
                                        int i14 = b10 & 247;
                                        if (i14 == 17 && (b11 & 240) == 48) {
                                            this.f381m.a((char) C[b11 & 15]);
                                        } else {
                                            int i15 = b10 & 246;
                                            if (i15 == 18 && (b11 & 224) == 32) {
                                                this.f381m.b();
                                                this.f381m.a((char) ((b10 & 1) == 0 ? D[b11 & 31] : E[b11 & 31]));
                                            } else if (i14 == 17 && (b11 & 240) == 32) {
                                                this.f381m.a(SafeJsonPrimitive.NULL_CHAR);
                                                boolean z14 = (b11 & 1) == 1;
                                                C0006a c0006a = this.f381m;
                                                c0006a.f393a.add(new C0006a.C0007a((b11 >> 1) & 7, z14, c0006a.f395c.length()));
                                            } else if ((b10 & 240) == 16 && (b11 & 192) == 64) {
                                                int i16 = f373y[b10 & 7];
                                                if ((b11 & 32) != 0) {
                                                    i16++;
                                                }
                                                C0006a c0006a2 = this.f381m;
                                                if (i16 != c0006a2.f396d) {
                                                    if (this.f384p != 1 && !c0006a2.e()) {
                                                        C0006a c0006a3 = new C0006a(this.f384p, this.f385q);
                                                        this.f381m = c0006a3;
                                                        this.f380l.add(c0006a3);
                                                    }
                                                    this.f381m.f396d = i16;
                                                }
                                                boolean z15 = (b11 & 16) == 16;
                                                boolean z16 = (b11 & 1) == 1;
                                                int i17 = (b11 >> 1) & 7;
                                                C0006a c0006a4 = this.f381m;
                                                c0006a4.f393a.add(new C0006a.C0007a(z15 ? 8 : i17, z16, c0006a4.f395c.length()));
                                                if (z15) {
                                                    this.f381m.f397e = f374z[i17];
                                                }
                                            } else if (i14 == 23 && b11 >= 33 && b11 <= 35) {
                                                this.f381m.f398f = b11 - 32;
                                            } else if (i15 == 20 && (b11 & 240) == 32) {
                                                if (b11 == 32) {
                                                    m(2);
                                                } else if (b11 != 41) {
                                                    switch (b11) {
                                                        case 37:
                                                            m(1);
                                                            n(2);
                                                            break;
                                                        case 38:
                                                            m(1);
                                                            n(3);
                                                            break;
                                                        case 39:
                                                            m(1);
                                                            n(4);
                                                            break;
                                                        default:
                                                            int i18 = this.f384p;
                                                            if (i18 != 0) {
                                                                if (b11 != 33) {
                                                                    switch (b11) {
                                                                        case 44:
                                                                            this.f382n = Collections.emptyList();
                                                                            int i19 = this.f384p;
                                                                            if (i19 == 1 || i19 == 3) {
                                                                                l();
                                                                            }
                                                                            break;
                                                                        case 45:
                                                                            if (i18 == 1 && !this.f381m.e()) {
                                                                                this.f381m.g();
                                                                            }
                                                                            break;
                                                                        case 46:
                                                                            l();
                                                                            break;
                                                                        case 47:
                                                                            this.f382n = k();
                                                                            l();
                                                                            break;
                                                                    }
                                                                } else {
                                                                    this.f381m.b();
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    m(3);
                                                }
                                            }
                                        }
                                    } else {
                                        C0006a c0006a5 = this.f381m;
                                        int[] iArr = B;
                                        c0006a5.a((char) iArr[(b10 & 127) - 32]);
                                        if ((b11 & 224) != 0) {
                                            this.f381m.a((char) iArr[(b11 & 127) - 32]);
                                        }
                                    }
                                    z12 = true;
                                }
                            }
                        } else if (z13) {
                            l();
                            z12 = true;
                        }
                    }
                }
            }
        }
    }

    @Override // a5.d, q3.d
    /* JADX INFO: renamed from: h */
    public final m d() throws i {
        m mVarPollFirst;
        m mVarD = super.d();
        if (mVarD != null) {
            return mVarD;
        }
        long j10 = this.f379k;
        boolean z10 = false;
        if (j10 != -9223372036854775807L) {
            long j11 = this.f392x;
            if (j11 != -9223372036854775807L && this.f451e - j11 >= j10) {
                z10 = true;
            }
        }
        if (!z10 || (mVarPollFirst = this.f448b.pollFirst()) == null) {
            return null;
        }
        List<z4.a> listEmptyList = Collections.emptyList();
        this.f382n = listEmptyList;
        this.f392x = -9223372036854775807L;
        this.f383o = listEmptyList;
        Objects.requireNonNull(listEmptyList);
        mVarPollFirst.q(this.f451e, new e(listEmptyList), Long.MAX_VALUE);
        return mVarPollFirst;
    }

    @Override // a5.d
    public final boolean i() {
        return this.f382n != this.f383o;
    }

    public final List<z4.a> k() {
        int size = this.f380l.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i10 = 0; i10 < size; i10++) {
            z4.a aVarC = this.f380l.get(i10).c(Integer.MIN_VALUE);
            arrayList.add(aVarC);
            if (aVarC != null) {
                iMin = Math.min(iMin, aVarC.f19302p);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            z4.a aVarC2 = (z4.a) arrayList.get(i11);
            if (aVarC2 != null) {
                if (aVarC2.f19302p != iMin) {
                    aVarC2 = this.f380l.get(i11).c(iMin);
                    Objects.requireNonNull(aVarC2);
                }
                arrayList2.add(aVarC2);
            }
        }
        return arrayList2;
    }

    public final void l() {
        this.f381m.f(this.f384p);
        this.f380l.clear();
        this.f380l.add(this.f381m);
    }

    public final void m(int i10) {
        int i11 = this.f384p;
        if (i11 == i10) {
            return;
        }
        this.f384p = i10;
        if (i10 == 3) {
            for (int i12 = 0; i12 < this.f380l.size(); i12++) {
                this.f380l.get(i12).f399g = i10;
            }
            return;
        }
        l();
        if (i11 == 3 || i10 == 1 || i10 == 0) {
            this.f382n = Collections.emptyList();
        }
    }

    public final void n(int i10) {
        this.f385q = i10;
        this.f381m.f400h = i10;
    }
}
