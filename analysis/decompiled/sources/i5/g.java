package i5;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import m5.p;
import m5.w;

/* JADX INFO: compiled from: WebvttCueParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f8787a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f8788b = Pattern.compile("(\\S+?):(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<String, Integer> f8789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map<String, Integer> f8790d;

    /* JADX INFO: compiled from: WebvttCueParser.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b f8791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f8792b;

        public a(b bVar, int i10) {
            this.f8791a = bVar;
            this.f8792b = i10;
        }
    }

    /* JADX INFO: compiled from: WebvttCueParser.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f8793a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f8794b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f8795c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Set<String> f8796d;

        public b(String str, int i10, String str2, Set<String> set) {
            this.f8794b = i10;
            this.f8793a = str;
            this.f8795c = str2;
            this.f8796d = set;
        }
    }

    /* JADX INFO: compiled from: WebvttCueParser.java */
    public static final class c implements Comparable<c> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f8797h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final i5.d f8798i;

        public c(int i10, i5.d dVar) {
            this.f8797h = i10;
            this.f8798i = dVar;
        }

        @Override // java.lang.Comparable
        public final int compareTo(c cVar) {
            return Integer.compare(this.f8797h, cVar.f8797h);
        }
    }

    /* JADX INFO: compiled from: WebvttCueParser.java */
    public static final class d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f8801c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f8799a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f8800b = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f8802d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f8803e = -3.4028235E38f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f8804f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f8805g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f8806h = -3.4028235E38f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f8807i = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f8808j = 1.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f8809k = Integer.MIN_VALUE;

        /* JADX WARN: Code duplicated, block: B:20:0x0032  */
        /* JADX WARN: Code duplicated, block: B:21:0x0034  */
        /* JADX WARN: Code duplicated, block: B:29:0x004f  */
        /* JADX WARN: Code duplicated, block: B:31:0x0055  */
        /* JADX WARN: Code duplicated, block: B:43:0x0072  */
        public final z4.a.C0332a a() {
            Layout.Alignment alignment;
            float f10 = this.f8806h;
            float f11 = -3.4028235E38f;
            if (f10 == -3.4028235E38f) {
                int i10 = this.f8802d;
                if (i10 != 4) {
                    f10 = i10 != 5 ? 0.5f : 1.0f;
                } else {
                    f10 = 0.0f;
                }
            }
            int i11 = this.f8807i;
            if (i11 == Integer.MIN_VALUE) {
                int i12 = this.f8802d;
                if (i12 == 1) {
                    i11 = 0;
                } else if (i12 == 3) {
                    i11 = 2;
                } else if (i12 == 4) {
                    i11 = 0;
                } else if (i12 != 5) {
                    i11 = 1;
                } else {
                    i11 = 2;
                }
            }
            z4.a.C0332a c0332a = new z4.a.C0332a();
            int i13 = this.f8802d;
            if (i13 == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i13 == 2) {
                alignment = Layout.Alignment.ALIGN_CENTER;
            } else if (i13 == 3) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i13 == 4) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i13 != 5) {
                da.c.b("Unknown textAlignment: ", i13, "WebvttCueParser");
                alignment = null;
            } else {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            }
            c0332a.f19313c = alignment;
            float f12 = this.f8803e;
            int i14 = this.f8804f;
            if (f12 != -3.4028235E38f && i14 == 0 && (f12 < 0.0f || f12 > 1.0f)) {
                f11 = 1.0f;
            } else if (f12 != -3.4028235E38f) {
                f11 = f12;
            } else if (i14 == 0) {
                f11 = 1.0f;
            }
            c0332a.f19315e = f11;
            c0332a.f19316f = i14;
            c0332a.f19317g = this.f8805g;
            c0332a.f19318h = f10;
            c0332a.f19319i = i11;
            float f13 = this.f8808j;
            if (i11 == 0) {
                f10 = 1.0f - f10;
            } else if (i11 == 1) {
                f10 = f10 <= 0.5f ? f10 * 2.0f : (1.0f - f10) * 2.0f;
            } else if (i11 != 2) {
                throw new IllegalStateException(String.valueOf(i11));
            }
            c0332a.f19322l = Math.min(f13, f10);
            c0332a.f19326p = this.f8809k;
            CharSequence charSequence = this.f8801c;
            if (charSequence != null) {
                c0332a.f19311a = charSequence;
            }
            return c0332a;
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f8789c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f8790d = Collections.unmodifiableMap(map2);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x008f  */
    public static void a(String str, b bVar, List<a> list, SpannableStringBuilder spannableStringBuilder, List<i5.d> list2) {
        byte b10;
        int i10 = bVar.f8794b;
        int length = spannableStringBuilder.length();
        String str2 = bVar.f8793a;
        Objects.requireNonNull(str2);
        int iHashCode = str2.hashCode();
        int i11 = -1;
        if (iHashCode != 0) {
            if (iHashCode != 105) {
                if (iHashCode != 3314158) {
                    if (iHashCode != 3511770) {
                        if (iHashCode != 98) {
                            if (iHashCode != 99) {
                                if (iHashCode != 117) {
                                    if (iHashCode == 118 && str2.equals(TracePayload.VERSION_KEY)) {
                                        b10 = 5;
                                    } else {
                                        b10 = -1;
                                    }
                                } else if (str2.equals("u")) {
                                    b10 = 4;
                                } else {
                                    b10 = -1;
                                }
                            } else if (str2.equals("c")) {
                                b10 = 2;
                            } else {
                                b10 = -1;
                            }
                        } else if (str2.equals("b")) {
                            b10 = 1;
                        } else {
                            b10 = -1;
                        }
                    } else if (str2.equals("ruby")) {
                        b10 = 7;
                    } else {
                        b10 = -1;
                    }
                } else if (str2.equals("lang")) {
                    b10 = 6;
                } else {
                    b10 = -1;
                }
            } else if (str2.equals("i")) {
                b10 = 3;
            } else {
                b10 = -1;
            }
        } else if (str2.equals("")) {
            b10 = 0;
        } else {
            b10 = -1;
        }
        switch (b10) {
            case 0:
            case 5:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case 2:
                for (String str3 : bVar.f8796d) {
                    Map<String, Integer> map = f8789c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str3).intValue()), i10, length, 33);
                    } else {
                        Map<String, Integer> map2 = f8790d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str3).intValue()), i10, length, 33);
                        }
                    }
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case 7:
                int iC = c(list2, str, bVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, new Comparator() { // from class: i5.f
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Integer.compare(((g.a) obj).f8791a.f8794b, ((g.a) obj2).f8791a.f8794b);
                    }
                });
                int i12 = bVar.f8794b;
                int i13 = 0;
                int length2 = 0;
                while (i13 < arrayList.size()) {
                    if ("rt".equals(((a) arrayList.get(i13)).f8791a.f8793a)) {
                        a aVar = (a) arrayList.get(i13);
                        int iC2 = c(list2, str, aVar.f8791a);
                        if (iC2 == i11) {
                            iC2 = iC != i11 ? iC : 1;
                        }
                        int i14 = aVar.f8791a.f8794b - length2;
                        int i15 = aVar.f8792b - length2;
                        CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i14, i15);
                        spannableStringBuilder.delete(i14, i15);
                        spannableStringBuilder.setSpan(new d5.c(charSequenceSubSequence.toString(), iC2), i12, i14, 33);
                        length2 = charSequenceSubSequence.length() + length2;
                        i12 = i14;
                    }
                    i13++;
                    i11 = -1;
                }
                break;
            default:
                return;
        }
        List<c> listB = b(list2, str, bVar);
        int i16 = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) listB;
            if (i16 >= arrayList2.size()) {
                return;
            }
            i5.d dVar = ((c) arrayList2.get(i16)).f8798i;
            if (dVar != null) {
                if (dVar.a() != -1) {
                    g7.c.b(spannableStringBuilder, new StyleSpan(dVar.a()), i10, length);
                }
                if (dVar.f8775j == 1) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, length, 33);
                }
                if (dVar.f8776k == 1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                }
                if (dVar.f8772g) {
                    if (!dVar.f8772g) {
                        throw new IllegalStateException("Font color not defined");
                    }
                    g7.c.b(spannableStringBuilder, new ForegroundColorSpan(dVar.f8771f), i10, length);
                }
                if (dVar.f8774i) {
                    if (!dVar.f8774i) {
                        throw new IllegalStateException("Background color not defined.");
                    }
                    g7.c.b(spannableStringBuilder, new BackgroundColorSpan(dVar.f8773h), i10, length);
                }
                if (dVar.f8770e != null) {
                    g7.c.b(spannableStringBuilder, new TypefaceSpan(dVar.f8770e), i10, length);
                }
                int i17 = dVar.f8779n;
                if (i17 == 1) {
                    g7.c.b(spannableStringBuilder, new AbsoluteSizeSpan((int) dVar.f8780o, true), i10, length);
                } else if (i17 == 2) {
                    g7.c.b(spannableStringBuilder, new RelativeSizeSpan(dVar.f8780o), i10, length);
                } else if (i17 == 3) {
                    g7.c.b(spannableStringBuilder, new RelativeSizeSpan(dVar.f8780o / 100.0f), i10, length);
                }
                if (dVar.f8782q) {
                    spannableStringBuilder.setSpan(new d5.a(), i10, length, 33);
                }
            }
            i16++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5, types: [int] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public static List<c> b(List<i5.d> list, String str, b bVar) {
        ?? r10;
        int size;
        boolean zIsEmpty;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            i5.d dVar = list.get(i10);
            String str2 = bVar.f8793a;
            Set<String> set = bVar.f8796d;
            String str3 = bVar.f8795c;
            if (dVar.f8766a.isEmpty() && dVar.f8767b.isEmpty() && dVar.f8768c.isEmpty() && dVar.f8769d.isEmpty()) {
                zIsEmpty = TextUtils.isEmpty(str2);
            } else {
                int iB = i5.d.b(i5.d.b(i5.d.b(0, dVar.f8766a, str, 1073741824), dVar.f8767b, str2, 2), dVar.f8769d, str3, 4);
                if (iB == -1 || !set.containsAll(dVar.f8768c)) {
                    r10 = 0;
                } else {
                    size = iB + (dVar.f8768c.size() * 4);
                }
            }
            if (r10 > 0) {
                r10 = size;
                r10 = zIsEmpty;
                arrayList.add(new c(r10, dVar));
            } else {
                r10 = size;
                r10 = zIsEmpty;
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int c(List<i5.d> list, String str, b bVar) {
        List<c> listB = b(list, str, bVar);
        int i10 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) listB;
            if (i10 >= arrayList.size()) {
                return -1;
            }
            int i11 = ((c) arrayList.get(i10)).f8798i.f8781p;
            if (i11 != -1) {
                return i11;
            }
            i10++;
        }
    }

    public static e d(String str, Matcher matcher, w wVar, List<i5.d> list) {
        d dVar = new d();
        try {
            String strGroup = matcher.group(1);
            Objects.requireNonNull(strGroup);
            dVar.f8799a = i.c(strGroup);
            String strGroup2 = matcher.group(2);
            Objects.requireNonNull(strGroup2);
            dVar.f8800b = i.c(strGroup2);
            String strGroup3 = matcher.group(3);
            Objects.requireNonNull(strGroup3);
            e(strGroup3, dVar);
            StringBuilder sb2 = new StringBuilder();
            String strF = wVar.f();
            while (!TextUtils.isEmpty(strF)) {
                if (sb2.length() > 0) {
                    sb2.append("\n");
                }
                sb2.append(strF.trim());
                strF = wVar.f();
            }
            dVar.f8801c = f(str, sb2.toString(), list);
            return new e(dVar.a().a(), dVar.f8799a, dVar.f8800b);
        } catch (NumberFormatException unused) {
            StringBuilder sbC = a0.b.c("Skipping cue with bad header: ");
            sbC.append(matcher.group());
            p.g("WebvttCueParser", sbC.toString());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void e(String str, d dVar) {
        Matcher matcher = f8788b.matcher(str);
        while (matcher.find()) {
            int i10 = 1;
            String strGroup = matcher.group(1);
            Objects.requireNonNull(strGroup);
            String strGroup2 = matcher.group(2);
            Objects.requireNonNull(strGroup2);
            try {
                if ("line".equals(strGroup)) {
                    g(strGroup2, dVar);
                } else if ("align".equals(strGroup)) {
                    strGroup2.hashCode();
                    switch (strGroup2) {
                        case "center":
                        case "middle":
                            i10 = 2;
                            break;
                        case "end":
                            i10 = 3;
                            break;
                        case "left":
                            i10 = 4;
                            break;
                        case "right":
                            i10 = 5;
                            break;
                        case "start":
                            break;
                        default:
                            p.g("WebvttCueParser", "Invalid alignment value: " + strGroup2);
                            i10 = 2;
                            break;
                    }
                    dVar.f8802d = i10;
                } else if ("position".equals(strGroup)) {
                    h(strGroup2, dVar);
                } else if ("size".equals(strGroup)) {
                    dVar.f8808j = i.b(strGroup2);
                } else if ("vertical".equals(strGroup)) {
                    if (strGroup2.equals("lr")) {
                        i10 = 2;
                    } else if (!strGroup2.equals("rl")) {
                        p.g("WebvttCueParser", "Invalid 'vertical' value: " + strGroup2);
                        i10 = Integer.MIN_VALUE;
                    }
                    dVar.f8809k = i10;
                } else {
                    p.g("WebvttCueParser", "Unknown cue setting " + strGroup + ":" + strGroup2);
                }
            } catch (NumberFormatException unused) {
                StringBuilder sbC = a0.b.c("Skipping bad cue setting: ");
                sbC.append(matcher.group());
                p.g("WebvttCueParser", sbC.toString());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:81:0x011c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static SpannedString f(String str, String str2, List<i5.d> list) {
        int i10;
        int i11;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        int i13 = 0;
        while (true) {
            String strTrim = "";
            if (i13 >= str2.length()) {
                while (!arrayDeque.isEmpty()) {
                    a(str, (b) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                }
                a(str, new b("", 0, "", Collections.emptySet()), Collections.emptyList(), spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            char cCharAt = str2.charAt(i13);
            if (cCharAt == '&') {
                i13++;
                int iIndexOf = str2.indexOf(59, i13);
                int iIndexOf2 = str2.indexOf(32, i13);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    String strSubstring = str2.substring(i13, iIndexOf);
                    Objects.requireNonNull(strSubstring);
                    switch (strSubstring) {
                        case "gt":
                            spannableStringBuilder.append('>');
                            break;
                        case "lt":
                            spannableStringBuilder.append('<');
                            break;
                        case "amp":
                            spannableStringBuilder.append('&');
                            break;
                        case "nbsp":
                            spannableStringBuilder.append(SafeJsonPrimitive.NULL_CHAR);
                            break;
                        default:
                            p.g("WebvttCueParser", "ignoring unsupported entity: '&" + strSubstring + ";'");
                            break;
                    }
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i13 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i13++;
            } else {
                int length = i13 + 1;
                if (length < str2.length()) {
                    int i14 = str2.charAt(length) == '/' ? 1 : i12;
                    int iIndexOf3 = str2.indexOf(62, length);
                    length = iIndexOf3 == -1 ? str2.length() : iIndexOf3 + 1;
                    int i15 = length - 2;
                    int i16 = str2.charAt(i15) == '/' ? 1 : i12;
                    int i17 = i13 + (i14 != 0 ? 2 : 1);
                    if (i16 == 0) {
                        i15 = length - 1;
                    }
                    String strSubstring2 = str2.substring(i17, i15);
                    if (!strSubstring2.trim().isEmpty()) {
                        String strTrim2 = strSubstring2.trim();
                        m5.a.a(!strTrim2.isEmpty());
                        int i18 = g0.f10384a;
                        String str3 = strTrim2.split("[ \\.]", 2)[i12];
                        Objects.requireNonNull(str3);
                        int iHashCode = str3.hashCode();
                        if (iHashCode != 98) {
                            if (iHashCode != 99) {
                                if (iHashCode != 105) {
                                    if (iHashCode != 3650) {
                                        if (iHashCode != 3314158) {
                                            if (iHashCode != 3511770) {
                                                if (iHashCode != 117) {
                                                    if (iHashCode == 118 && str3.equals(TracePayload.VERSION_KEY)) {
                                                        i10 = 4;
                                                    } else {
                                                        i10 = -1;
                                                    }
                                                } else if (str3.equals("u")) {
                                                    i10 = 3;
                                                } else {
                                                    i10 = -1;
                                                }
                                            } else if (str3.equals("ruby")) {
                                                i10 = 7;
                                            } else {
                                                i10 = -1;
                                            }
                                        } else if (str3.equals("lang")) {
                                            i10 = 6;
                                        } else {
                                            i10 = -1;
                                        }
                                    } else if (str3.equals("rt")) {
                                        i10 = 5;
                                    } else {
                                        i10 = -1;
                                    }
                                } else if (str3.equals("i")) {
                                    i10 = 2;
                                } else {
                                    i10 = -1;
                                }
                            } else if (str3.equals("c")) {
                                i10 = 1;
                            } else {
                                i10 = -1;
                            }
                        } else if (str3.equals("b")) {
                            i10 = i12;
                        } else {
                            i10 = -1;
                        }
                        switch (i10) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                i11 = 1;
                                break;
                            default:
                                i11 = i12;
                                break;
                        }
                        if (i11 != 0) {
                            if (i14 != 0) {
                                while (!arrayDeque.isEmpty()) {
                                    b bVar = (b) arrayDeque.pop();
                                    a(str, bVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new a(bVar, spannableStringBuilder.length()));
                                    }
                                    if (bVar.f8793a.equals(str3)) {
                                    }
                                }
                            } else if (i16 == 0) {
                                int length2 = spannableStringBuilder.length();
                                String strTrim3 = strSubstring2.trim();
                                m5.a.a(!strTrim3.isEmpty());
                                int iIndexOf4 = strTrim3.indexOf(" ");
                                if (iIndexOf4 != -1) {
                                    strTrim = strTrim3.substring(iIndexOf4).trim();
                                    strTrim3 = strTrim3.substring(i12, iIndexOf4);
                                }
                                String[] strArrSplit = strTrim3.split("\\.", -1);
                                String str4 = strArrSplit[i12];
                                HashSet hashSet = new HashSet();
                                for (int i19 = 1; i19 < strArrSplit.length; i19++) {
                                    hashSet.add(strArrSplit[i19]);
                                }
                                arrayDeque.push(new b(str4, length2, strTrim, hashSet));
                            }
                        }
                    }
                    i13 = length;
                }
                i13 = length;
            }
            i12 = 0;
        }
    }

    public static void g(String str, d dVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            String strSubstring = str.substring(iIndexOf + 1);
            Objects.requireNonNull(strSubstring);
            strSubstring.hashCode();
            int i10 = 2;
            switch (strSubstring) {
                case "center":
                case "middle":
                    i10 = 1;
                    break;
                case "end":
                    break;
                case "start":
                    i10 = 0;
                    break;
                default:
                    a4.g.f("Invalid anchor value: ", strSubstring, "WebvttCueParser");
                    i10 = Integer.MIN_VALUE;
                    break;
            }
            dVar.f8805g = i10;
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            dVar.f8803e = i.b(str);
            dVar.f8804f = 0;
        } else {
            dVar.f8803e = Integer.parseInt(str);
            dVar.f8804f = 1;
        }
    }

    public static void h(String str, d dVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            String strSubstring = str.substring(iIndexOf + 1);
            Objects.requireNonNull(strSubstring);
            strSubstring.hashCode();
            int i10 = 2;
            switch (strSubstring) {
                case "line-left":
                case "start":
                    i10 = 0;
                    break;
                case "center":
                case "middle":
                    i10 = 1;
                    break;
                case "line-right":
                case "end":
                    break;
                default:
                    a4.g.f("Invalid anchor value: ", strSubstring, "WebvttCueParser");
                    i10 = Integer.MIN_VALUE;
                    break;
            }
            dVar.f8807i = i10;
            str = str.substring(0, iIndexOf);
        }
        dVar.f8806h = i.b(str);
    }
}
