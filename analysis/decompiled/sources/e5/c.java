package e5;

import a4.g;
import android.graphics.Color;
import android.graphics.PointF;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import m5.p;

/* JADX INFO: compiled from: SsaStyle.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f6486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f6487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f6488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6489f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f6490g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f6491h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f6492i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6493j;

    /* JADX INFO: compiled from: SsaStyle.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f6495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f6496c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f6497d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f6498e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f6499f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f6500g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f6501h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f6502i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f6503j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f6504k;

        public a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
            this.f6494a = i10;
            this.f6495b = i11;
            this.f6496c = i12;
            this.f6497d = i13;
            this.f6498e = i14;
            this.f6499f = i15;
            this.f6500g = i16;
            this.f6501h = i17;
            this.f6502i = i18;
            this.f6503j = i19;
            this.f6504k = i20;
        }
    }

    /* JADX INFO: compiled from: SsaStyle.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Pattern f6505a = Pattern.compile("\\{([^}]*)\\}");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Pattern f6506b = Pattern.compile(g0.m("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Pattern f6507c = Pattern.compile(g0.m("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Pattern f6508d = Pattern.compile("\\\\an(\\d+)");

        public static PointF a(String str) {
            String strGroup;
            String strGroup2;
            Matcher matcher = f6506b.matcher(str);
            Matcher matcher2 = f6507c.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    p.e("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                strGroup = matcher.group(1);
                strGroup2 = matcher.group(2);
            } else {
                if (!zFind2) {
                    return null;
                }
                strGroup = matcher2.group(1);
                strGroup2 = matcher2.group(2);
            }
            Objects.requireNonNull(strGroup);
            float f10 = Float.parseFloat(strGroup.trim());
            Objects.requireNonNull(strGroup2);
            return new PointF(f10, Float.parseFloat(strGroup2.trim()));
        }
    }

    public c(String str, int i10, Integer num, Integer num2, float f10, boolean z10, boolean z11, boolean z12, boolean z13, int i11) {
        this.f6484a = str;
        this.f6485b = i10;
        this.f6486c = num;
        this.f6487d = num2;
        this.f6488e = f10;
        this.f6489f = z10;
        this.f6490g = z11;
        this.f6491h = z12;
        this.f6492i = z13;
        this.f6493j = i11;
    }

    public static int a(String str) {
        boolean z10;
        try {
            int i10 = Integer.parseInt(str.trim());
            switch (i10) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    z10 = true;
                    break;
                default:
                    z10 = false;
                    break;
            }
            if (z10) {
                return i10;
            }
        } catch (NumberFormatException unused) {
        }
        g.f("Ignoring unknown alignment: ", str, "SsaStyle");
        return -1;
    }

    public static boolean b(String str) {
        try {
            int i10 = Integer.parseInt(str);
            return i10 == 1 || i10 == -1;
        } catch (NumberFormatException e10) {
            p.h("SsaStyle", "Failed to parse boolean value: '" + str + "'", e10);
            return false;
        }
    }

    public static Integer c(String str) {
        try {
            long j10 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            m5.a.a(j10 <= 4294967295L);
            return Integer.valueOf(Color.argb(w6.a.a(((j10 >> 24) & 255) ^ 255), w6.a.a(j10 & 255), w6.a.a((j10 >> 8) & 255), w6.a.a((j10 >> 16) & 255)));
        } catch (IllegalArgumentException e10) {
            p.h("SsaStyle", "Failed to parse color expression: '" + str + "'", e10);
            return null;
        }
    }
}
