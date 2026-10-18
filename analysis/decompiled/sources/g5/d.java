package g5;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import com.newrelic.agent.android.instrumentation.Instrumented;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import m5.g0;
import m5.p;

/* JADX INFO: compiled from: TtmlNode.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f7656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f7657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f7658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f f7660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String[] f7661g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f7662h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f7663i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d f7664j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap<String, Integer> f7665k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HashMap<String, Integer> f7666l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<d> f7667m;

    public d(String str, String str2, long j10, long j11, f fVar, String[] strArr, String str3, String str4, d dVar) {
        this.f7655a = str;
        this.f7656b = str2;
        this.f7663i = str4;
        this.f7660f = fVar;
        this.f7661g = strArr;
        this.f7657c = str2 != null;
        this.f7658d = j10;
        this.f7659e = j11;
        Objects.requireNonNull(str3);
        this.f7662h = str3;
        this.f7664j = dVar;
        this.f7665k = new HashMap<>();
        this.f7666l = new HashMap<>();
    }

    public static d b(String str) {
        return new d(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    public static SpannableStringBuilder f(String str, Map<String, z4.a.C0332a> map) {
        if (!map.containsKey(str)) {
            z4.a.C0332a c0332a = new z4.a.C0332a();
            c0332a.f19311a = new SpannableStringBuilder();
            map.put(str, c0332a);
        }
        CharSequence charSequence = map.get(str).f19311a;
        Objects.requireNonNull(charSequence);
        return (SpannableStringBuilder) charSequence;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<g5.d>] */
    public final void a(d dVar) {
        if (this.f7667m == null) {
            this.f7667m = new ArrayList();
        }
        this.f7667m.add(dVar);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<g5.d>] */
    public final d c(int i10) {
        ?? r10 = this.f7667m;
        if (r10 != 0) {
            return (d) r10.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<g5.d>] */
    public final int d() {
        ?? r10 = this.f7667m;
        if (r10 == 0) {
            return 0;
        }
        return r10.size();
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<g5.d>] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList, java.util.List<g5.d>] */
    public final void e(TreeSet<Long> treeSet, boolean z10) {
        boolean zEquals = "p".equals(this.f7655a);
        boolean zEquals2 = "div".equals(this.f7655a);
        if (z10 || zEquals || (zEquals2 && this.f7663i != null)) {
            long j10 = this.f7658d;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f7659e;
            if (j11 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f7667m == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f7667m.size(); i10++) {
            ((d) this.f7667m.get(i10)).e(treeSet, z10 || zEquals);
        }
    }

    public final boolean g(long j10) {
        long j11 = this.f7658d;
        return (j11 == -9223372036854775807L && this.f7659e == -9223372036854775807L) || (j11 <= j10 && this.f7659e == -9223372036854775807L) || ((j11 == -9223372036854775807L && j10 < this.f7659e) || (j11 <= j10 && j10 < this.f7659e));
    }

    public final void h(long j10, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f7662h)) {
            str = this.f7662h;
        }
        if (g(j10) && "div".equals(this.f7655a) && this.f7663i != null) {
            list.add(new Pair<>(str, this.f7663i));
            return;
        }
        for (int i10 = 0; i10 < d(); i10++) {
            c(i10).h(j10, str, list);
        }
    }

    /* JADX WARN: Code duplicated, block: B:121:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:123:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:126:0x01fa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:130:0x0200  */
    /* JADX WARN: Code duplicated, block: B:131:0x020c  */
    /* JADX WARN: Code duplicated, block: B:132:0x0217  */
    /* JADX WARN: Code duplicated, block: B:135:0x022d  */
    /* JADX WARN: Code duplicated, block: B:137:0x0236  */
    /* JADX WARN: Code duplicated, block: B:140:0x0240  */
    /* JADX WARN: Code duplicated, block: B:143:0x0246  */
    /* JADX WARN: Code duplicated, block: B:156:0x024f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x024f A[SYNTHETIC] */
    public final void i(long j10, Map<String, f> map, Map<String, e> map2, String str, Map<String, z4.a.C0332a> map3) {
        d dVar;
        boolean z10;
        f fVarH;
        int i10;
        float f10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        int i11;
        if (g(j10)) {
            String str2 = "".equals(this.f7662h) ? str : this.f7662h;
            Iterator<Map.Entry<String, Integer>> it = this.f7666l.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int iIntValue = this.f7665k.containsKey(key) ? this.f7665k.get(key).intValue() : 0;
                int iIntValue2 = next.getValue().intValue();
                if (iIntValue != iIntValue2) {
                    z4.a.C0332a c0332a = map3.get(key);
                    Objects.requireNonNull(c0332a);
                    e eVar = map2.get(str2);
                    Objects.requireNonNull(eVar);
                    int i12 = eVar.f7677j;
                    f fVarH2 = i0.b.h(this.f7660f, this.f7661g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0332a.f19311a;
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        c0332a.f19311a = spannableStringBuilder;
                    }
                    if (fVarH2 != null) {
                        d dVar2 = this.f7664j;
                        if (fVarH2.b() != -1) {
                            spannableStringBuilder.setSpan(new StyleSpan(fVarH2.b()), iIntValue, iIntValue2, 33);
                        }
                        if (fVarH2.f7683f == 1) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), iIntValue, iIntValue2, 33);
                        }
                        if (fVarH2.f7684g == 1) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), iIntValue, iIntValue2, 33);
                        }
                        if (fVarH2.f7680c) {
                            if (!fVarH2.f7680c) {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                            g7.c.b(spannableStringBuilder, new ForegroundColorSpan(fVarH2.f7679b), iIntValue, iIntValue2);
                        }
                        if (fVarH2.f7682e) {
                            if (!fVarH2.f7682e) {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                            g7.c.b(spannableStringBuilder, new BackgroundColorSpan(fVarH2.f7681d), iIntValue, iIntValue2);
                        }
                        if (fVarH2.f7678a != null) {
                            g7.c.b(spannableStringBuilder, new TypefaceSpan(fVarH2.f7678a), iIntValue, iIntValue2);
                        }
                        b bVar = fVarH2.f7695r;
                        if (bVar != null) {
                            int i13 = bVar.f7636a;
                            if (i13 == -1) {
                                i13 = (i12 == 2 || i12 == 1) ? 3 : 1;
                                i11 = 1;
                            } else {
                                i11 = bVar.f7637b;
                            }
                            int i14 = bVar.f7638c;
                            if (i14 == -2) {
                                i14 = 1;
                            }
                            g7.c.b(spannableStringBuilder, new d5.d(i13, i11, i14), iIntValue, iIntValue2);
                        }
                        int i15 = fVarH2.f7690m;
                        if (i15 == 2) {
                            while (true) {
                                if (dVar2 == null) {
                                    dVar2 = null;
                                    break;
                                }
                                f fVarH3 = i0.b.h(dVar2.f7660f, dVar2.f7661g, map);
                                if (fVarH3 != null && fVarH3.f7690m == 1) {
                                    break;
                                } else {
                                    dVar2 = dVar2.f7664j;
                                }
                            }
                            if (dVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(dVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        dVar = null;
                                        break;
                                    }
                                    d dVar3 = (d) arrayDeque.pop();
                                    f fVarH4 = i0.b.h(dVar3.f7660f, dVar3.f7661g, map);
                                    if (fVarH4 != null && fVarH4.f7690m == 3) {
                                        dVar = dVar3;
                                        break;
                                    }
                                    for (int iD = dVar3.d() - 1; iD >= 0; iD--) {
                                        arrayDeque.push(dVar3.c(iD));
                                    }
                                }
                                if (dVar != null) {
                                    if (dVar.d() == 1) {
                                        z10 = false;
                                        if (dVar.c(0).f7656b != null) {
                                            String str3 = dVar.c(0).f7656b;
                                            int i16 = g0.f10384a;
                                            f fVarH5 = i0.b.h(dVar.f7660f, dVar.f7661g, map);
                                            int i17 = fVarH5 != null ? fVarH5.f7691n : -1;
                                            if (i17 == -1 && (fVarH = i0.b.h(dVar2.f7660f, dVar2.f7661g, map)) != null) {
                                                i17 = fVarH.f7691n;
                                            }
                                            spannableStringBuilder.setSpan(new d5.c(str3, i17), iIntValue, iIntValue2, 33);
                                        }
                                    } else {
                                        z10 = false;
                                    }
                                    p.e("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                }
                            }
                            if (fVarH2.f7694q == 1) {
                                z10 = true;
                            }
                            if (z10) {
                                g7.c.b(spannableStringBuilder, new d5.a(), iIntValue, iIntValue2);
                            }
                            i10 = fVarH2.f7687j;
                            if (i10 != 1) {
                                g7.c.b(spannableStringBuilder, new AbsoluteSizeSpan((int) fVarH2.f7688k, true), iIntValue, iIntValue2);
                            } else if (i10 != 2) {
                                g7.c.b(spannableStringBuilder, new RelativeSizeSpan(fVarH2.f7688k), iIntValue, iIntValue2);
                            } else if (i10 == 3) {
                                g7.c.b(spannableStringBuilder, new RelativeSizeSpan(fVarH2.f7688k / 100.0f), iIntValue, iIntValue2);
                            }
                            if ("p".equals(this.f7655a)) {
                                f10 = fVarH2.f7696s;
                                if (f10 != Float.MAX_VALUE) {
                                    c0332a.f19327q = (f10 * (-90.0f)) / 100.0f;
                                }
                                alignment = fVarH2.f7692o;
                                if (alignment != null) {
                                    c0332a.f19313c = alignment;
                                }
                                alignment2 = fVarH2.f7693p;
                                if (alignment2 != null) {
                                    c0332a.f19314d = alignment2;
                                }
                            }
                        } else if (i15 == 3 || i15 == 4) {
                            spannableStringBuilder.setSpan(new a(), iIntValue, iIntValue2, 33);
                        }
                        z10 = false;
                        if (fVarH2.f7694q == 1) {
                            z10 = true;
                        }
                        if (z10) {
                            g7.c.b(spannableStringBuilder, new d5.a(), iIntValue, iIntValue2);
                        }
                        i10 = fVarH2.f7687j;
                        if (i10 != 1) {
                            g7.c.b(spannableStringBuilder, new AbsoluteSizeSpan((int) fVarH2.f7688k, true), iIntValue, iIntValue2);
                        } else if (i10 != 2) {
                            g7.c.b(spannableStringBuilder, new RelativeSizeSpan(fVarH2.f7688k), iIntValue, iIntValue2);
                        } else if (i10 == 3) {
                            g7.c.b(spannableStringBuilder, new RelativeSizeSpan(fVarH2.f7688k / 100.0f), iIntValue, iIntValue2);
                        }
                        if ("p".equals(this.f7655a)) {
                            f10 = fVarH2.f7696s;
                            if (f10 != Float.MAX_VALUE) {
                                c0332a.f19327q = (f10 * (-90.0f)) / 100.0f;
                            }
                            alignment = fVarH2.f7692o;
                            if (alignment != null) {
                                c0332a.f19313c = alignment;
                            }
                            alignment2 = fVarH2.f7693p;
                            if (alignment2 != null) {
                                c0332a.f19314d = alignment2;
                            }
                        }
                    }
                    it = it;
                }
                it = it;
                it = it;
            }
            for (int i18 = 0; i18 < d(); i18++) {
                c(i18).i(j10, map, map2, str2, map3);
            }
        }
    }

    public final void j(long j10, boolean z10, String str, Map<String, z4.a.C0332a> map) {
        this.f7665k.clear();
        this.f7666l.clear();
        if ("metadata".equals(this.f7655a)) {
            return;
        }
        if (!"".equals(this.f7662h)) {
            str = this.f7662h;
        }
        if (this.f7657c && z10) {
            SpannableStringBuilder spannableStringBuilderF = f(str, map);
            String str2 = this.f7656b;
            Objects.requireNonNull(str2);
            spannableStringBuilderF.append((CharSequence) str2);
            return;
        }
        if ("br".equals(this.f7655a) && z10) {
            f(str, map).append('\n');
            return;
        }
        if (g(j10)) {
            for (Map.Entry<String, z4.a.C0332a> entry : map.entrySet()) {
                HashMap<String, Integer> map2 = this.f7665k;
                String key = entry.getKey();
                CharSequence charSequence = entry.getValue().f19311a;
                Objects.requireNonNull(charSequence);
                map2.put(key, Integer.valueOf(charSequence.length()));
            }
            boolean zEquals = "p".equals(this.f7655a);
            for (int i10 = 0; i10 < d(); i10++) {
                c(i10).j(j10, z10 || zEquals, str, map);
            }
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderF2 = f(str, map);
                int length = spannableStringBuilderF2.length();
                do {
                    length--;
                    if (length < 0) {
                        break;
                    }
                } while (spannableStringBuilderF2.charAt(length) == ' ');
                if (length >= 0 && spannableStringBuilderF2.charAt(length) != '\n') {
                    spannableStringBuilderF2.append('\n');
                }
            }
            for (Map.Entry<String, z4.a.C0332a> entry2 : map.entrySet()) {
                HashMap<String, Integer> map3 = this.f7666l;
                String key2 = entry2.getKey();
                CharSequence charSequence2 = entry2.getValue().f19311a;
                Objects.requireNonNull(charSequence2);
                map3.put(key2, Integer.valueOf(charSequence2.length()));
            }
        }
    }
}
