package e5;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.activity.k;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import m5.p;
import m5.w;
import z4.f;
import z4.g;

/* JADX INFO: compiled from: SsaDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final Pattern f6473r = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f6474m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b f6475n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Map<String, c> f6476o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f6477p = -3.4028235E38f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f6478q = -3.4028235E38f;

    public a(List<byte[]> list) {
        if (list == null || list.isEmpty()) {
            this.f6474m = false;
            this.f6475n = null;
            return;
        }
        this.f6474m = true;
        String strN = g0.n(list.get(0));
        m5.a.a(strN.startsWith("Format:"));
        b bVarA = b.a(strN);
        Objects.requireNonNull(bVarA);
        this.f6475n = bVarA;
        n(new w(list.get(1)));
    }

    public static int l(long j10, List<Long> list, List<List<z4.a>> list2) {
        int i10;
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                i10 = 0;
                break;
            }
            if (list.get(size).longValue() == j10) {
                return size;
            }
            if (list.get(size).longValue() < j10) {
                i10 = size + 1;
                break;
            }
        }
        list.add(i10, Long.valueOf(j10));
        list2.add(i10, i10 == 0 ? new ArrayList() : new ArrayList(list2.get(i10 - 1)));
        return i10;
    }

    public static float m(int i10) {
        if (i10 == 0) {
            return 0.05f;
        }
        if (i10 != 1) {
            return i10 != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    public static long o(String str) {
        Matcher matcher = f6473r.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String strGroup = matcher.group(1);
        int i10 = g0.f10384a;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60 * 1000000) + (Long.parseLong(strGroup) * 60 * 60 * 1000000);
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, e5.c>] */
    @Override // z4.f
    public final g k(byte[] bArr, int i10, boolean z10) {
        w wVar;
        int i11;
        float f10;
        int i12;
        Layout.Alignment alignment;
        int i13;
        int i14;
        int i15;
        int i16;
        float fM;
        float fM2;
        float f11;
        int i17;
        float f12;
        int i18;
        int iA;
        int i19;
        a aVar = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        w wVar2 = new w(bArr, i10);
        if (!aVar.f6474m) {
            aVar.n(wVar2);
        }
        b bVarA = aVar.f6474m ? aVar.f6475n : null;
        while (true) {
            String strF = wVar2.f();
            if (strF == null) {
                return new d(arrayList, arrayList2);
            }
            if (strF.startsWith("Format:")) {
                bVarA = b.a(strF);
            } else {
                if (strF.startsWith("Dialogue:")) {
                    if (bVarA == null) {
                        a4.g.f("Skipping dialogue line before complete format: ", strF, "SsaDecoder");
                    } else {
                        m5.a.a(strF.startsWith("Dialogue:"));
                        String[] strArrSplit = strF.substring(9).split(",", bVarA.f6483e);
                        if (strArrSplit.length != bVarA.f6483e) {
                            a4.g.f("Skipping dialogue line with fewer columns than format: ", strF, "SsaDecoder");
                        } else {
                            long jO = o(strArrSplit[bVarA.f6479a]);
                            if (jO == -9223372036854775807L) {
                                a4.g.f("Skipping invalid timing: ", strF, "SsaDecoder");
                            } else {
                                long jO2 = o(strArrSplit[bVarA.f6480b]);
                                if (jO2 == -9223372036854775807L) {
                                    a4.g.f("Skipping invalid timing: ", strF, "SsaDecoder");
                                } else {
                                    ?? r10 = aVar.f6476o;
                                    int i20 = -1;
                                    c cVar = (r10 == 0 || (i19 = bVarA.f6481c) == -1) ? null : (c) r10.get(strArrSplit[i19].trim());
                                    String str = strArrSplit[bVarA.f6482d];
                                    Matcher matcher = c.b.f6505a.matcher(str);
                                    PointF pointF = null;
                                    while (true) {
                                        wVar = wVar2;
                                        if (matcher.find()) {
                                            String strGroup = matcher.group(1);
                                            Objects.requireNonNull(strGroup);
                                            try {
                                                PointF pointFA = c.b.a(strGroup);
                                                if (pointFA != null) {
                                                    pointF = pointFA;
                                                }
                                            } catch (RuntimeException unused) {
                                            }
                                            try {
                                                Matcher matcher2 = c.b.f6508d.matcher(strGroup);
                                                if (matcher2.find()) {
                                                    String strGroup2 = matcher2.group(1);
                                                    Objects.requireNonNull(strGroup2);
                                                    iA = c.a(strGroup2);
                                                } else {
                                                    iA = -1;
                                                }
                                                if (iA != -1) {
                                                    i20 = iA;
                                                }
                                            } catch (RuntimeException unused2) {
                                            }
                                            wVar2 = wVar;
                                        } else {
                                            String strReplace = c.b.f6505a.matcher(str).replaceAll("").replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                            float f13 = aVar.f6477p;
                                            float f14 = aVar.f6478q;
                                            SpannableString spannableString = new SpannableString(strReplace);
                                            if (cVar != null) {
                                                if (cVar.f6486c != null) {
                                                    spannableString.setSpan(new ForegroundColorSpan(cVar.f6486c.intValue()), 0, spannableString.length(), 33);
                                                }
                                                if (cVar.f6493j == 3 && cVar.f6487d != null) {
                                                    spannableString.setSpan(new BackgroundColorSpan(cVar.f6487d.intValue()), 0, spannableString.length(), 33);
                                                }
                                                float f15 = cVar.f6488e;
                                                if (f15 == -3.4028235E38f || f14 == -3.4028235E38f) {
                                                    f11 = -3.4028235E38f;
                                                    i17 = Integer.MIN_VALUE;
                                                } else {
                                                    f11 = f15 / f14;
                                                    i17 = 1;
                                                }
                                                boolean z11 = cVar.f6489f;
                                                if (z11 && cVar.f6490g) {
                                                    i11 = 0;
                                                    f12 = f11;
                                                    i18 = 33;
                                                    spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                                } else {
                                                    f12 = f11;
                                                    i11 = 0;
                                                    i18 = 33;
                                                    if (z11) {
                                                        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                                    } else if (cVar.f6490g) {
                                                        spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                                    }
                                                }
                                                if (cVar.f6491h) {
                                                    spannableString.setSpan(new UnderlineSpan(), i11, spannableString.length(), i18);
                                                }
                                                if (cVar.f6492i) {
                                                    spannableString.setSpan(new StrikethroughSpan(), i11, spannableString.length(), i18);
                                                }
                                                f10 = f12;
                                                i12 = i17;
                                            } else {
                                                bVarA = bVarA;
                                                jO2 = jO2;
                                                i11 = 0;
                                                f10 = -3.4028235E38f;
                                                i12 = Integer.MIN_VALUE;
                                            }
                                            if (i20 == -1) {
                                                i20 = cVar != null ? cVar.f6485b : -1;
                                            }
                                            switch (i20) {
                                                case 0:
                                                default:
                                                    da.c.b("Unknown alignment: ", i20, "SsaDecoder");
                                                case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                                                    alignment = null;
                                                    break;
                                                case 1:
                                                case 4:
                                                case 7:
                                                    alignment = Layout.Alignment.ALIGN_NORMAL;
                                                    break;
                                                case 2:
                                                case 5:
                                                case 8:
                                                    alignment = Layout.Alignment.ALIGN_CENTER;
                                                    break;
                                                case 3:
                                                case 6:
                                                case 9:
                                                    alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                                    break;
                                            }
                                            Layout.Alignment alignment2 = alignment;
                                            switch (i20) {
                                                case 0:
                                                default:
                                                    da.c.b("Unknown alignment: ", i20, "SsaDecoder");
                                                case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                                                    i13 = Integer.MIN_VALUE;
                                                    break;
                                                case 1:
                                                case 4:
                                                case 7:
                                                    i13 = i11;
                                                    break;
                                                case 2:
                                                case 5:
                                                case 8:
                                                    i14 = 1;
                                                    i13 = i14;
                                                    break;
                                                case 3:
                                                case 6:
                                                case 9:
                                                    i14 = 2;
                                                    i13 = i14;
                                                    break;
                                            }
                                            switch (i20) {
                                                case 0:
                                                default:
                                                    da.c.b("Unknown alignment: ", i20, "SsaDecoder");
                                                case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                                                    i15 = Integer.MIN_VALUE;
                                                    break;
                                                case 1:
                                                case 2:
                                                case 3:
                                                    i16 = 2;
                                                    i15 = i16;
                                                    break;
                                                case 4:
                                                case 5:
                                                case 6:
                                                    i16 = 1;
                                                    i15 = i16;
                                                    break;
                                                case 7:
                                                case 8:
                                                case 9:
                                                    i15 = i11;
                                                    break;
                                            }
                                            if (pointF == null || f14 == -3.4028235E38f || f13 == -3.4028235E38f) {
                                                fM = m(i13);
                                                fM2 = m(i15);
                                            } else {
                                                fM = pointF.x / f13;
                                                fM2 = pointF.y / f14;
                                            }
                                            z4.a aVar2 = new z4.a(spannableString, alignment2, null, null, fM2, 0, i15, fM, i13, i12, f10, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                            int iL = l(jO2, arrayList2, arrayList);
                                            for (int iL2 = l(jO, arrayList2, arrayList); iL2 < iL; iL2++) {
                                                ((List) arrayList.get(iL2)).add(aVar2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    wVar = wVar2;
                    bVarA = bVarA;
                } else {
                    wVar = wVar2;
                    bVarA = bVarA;
                }
                aVar = this;
                bVarA = bVarA;
                wVar2 = wVar;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:170:0x02ec  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void n(w wVar) {
        int i10;
        c cVar;
        float f10;
        int i11;
        while (true) {
            String strF = wVar.f();
            if (strF == null) {
                return;
            }
            int i12 = 2;
            int i13 = 91;
            int i14 = 0;
            if ("[Script Info]".equalsIgnoreCase(strF)) {
                while (true) {
                    String strF2 = wVar.f();
                    if (strF2 == null || (wVar.f10477c - wVar.f10476b != 0 && wVar.b() == 91)) {
                        break;
                    }
                    String[] strArrSplit = strF2.split(":");
                    if (strArrSplit.length == 2) {
                        String strS = k.s(strArrSplit[0].trim());
                        Objects.requireNonNull(strS);
                        if (strS.equals("playresx")) {
                            this.f6477p = Float.parseFloat(strArrSplit[1].trim());
                        } else if (strS.equals("playresy")) {
                            try {
                                this.f6478q = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(strF)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (true) {
                    int i15 = i12;
                    c.a aVar = null;
                    int i16 = i15;
                    while (true) {
                        String strF3 = wVar.f();
                        if (strF3 != null && (wVar.f10477c - wVar.f10476b == 0 || wVar.b() != i13)) {
                            if (strF3.startsWith("Format:")) {
                                String[] strArrSplit2 = TextUtils.split(strF3.substring(7), ",");
                                int i17 = -1;
                                int i18 = -1;
                                int i19 = -1;
                                int i20 = -1;
                                int i21 = -1;
                                int i22 = -1;
                                int i23 = -1;
                                int i24 = -1;
                                int i25 = -1;
                                int i26 = -1;
                                for (int i27 = i14; i27 < strArrSplit2.length; i27++) {
                                    String strS2 = k.s(strArrSplit2[i27].trim());
                                    Objects.requireNonNull(strS2);
                                    switch (strS2.hashCode()) {
                                        case -1178781136:
                                            i10 = strS2.equals("italic") ? i14 : -1;
                                            break;
                                        case -1026963764:
                                            i10 = strS2.equals("underline") ? 1 : -1;
                                            break;
                                        case -192095652:
                                            i10 = strS2.equals("strikeout") ? i16 : -1;
                                            break;
                                        case -70925746:
                                            i10 = strS2.equals("primarycolour") ? 3 : -1;
                                            break;
                                        case 3029637:
                                            i10 = strS2.equals("bold") ? 4 : -1;
                                            break;
                                        case 3373707:
                                            i10 = strS2.equals("name") ? 5 : -1;
                                            break;
                                        case 366554320:
                                            i10 = strS2.equals("fontsize") ? 6 : -1;
                                            break;
                                        case 767321349:
                                            i10 = strS2.equals("borderstyle") ? 7 : -1;
                                            break;
                                        case 1767875043:
                                            i10 = strS2.equals("alignment") ? 8 : -1;
                                            break;
                                        case 1988365454:
                                            i10 = strS2.equals("outlinecolour") ? 9 : -1;
                                            break;
                                        default:
                                            i10 = -1;
                                            break;
                                    }
                                    switch (i10) {
                                        case 0:
                                            i23 = i27;
                                            break;
                                        case 1:
                                            i24 = i27;
                                            break;
                                        case 2:
                                            i25 = i27;
                                            break;
                                        case 3:
                                            i19 = i27;
                                            break;
                                        case 4:
                                            i22 = i27;
                                            break;
                                        case 5:
                                            i17 = i27;
                                            break;
                                        case 6:
                                            i21 = i27;
                                            break;
                                        case 7:
                                            i26 = i27;
                                            break;
                                        case 8:
                                            i18 = i27;
                                            break;
                                        case 9:
                                            i20 = i27;
                                            break;
                                    }
                                }
                                if (i17 != -1) {
                                    i13 = 91;
                                    aVar = new c.a(i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, strArrSplit2.length);
                                } else {
                                    i13 = 91;
                                    i12 = i16;
                                }
                            } else {
                                if (strF3.startsWith("Style:")) {
                                    if (aVar == null) {
                                        a4.g.f("Skipping 'Style:' line before 'Format:' line: ", strF3, "SsaDecoder");
                                    } else {
                                        m5.a.a(strF3.startsWith("Style:"));
                                        String[] strArrSplit3 = TextUtils.split(strF3.substring(6), ",");
                                        int length = strArrSplit3.length;
                                        int i28 = aVar.f6504k;
                                        if (length != i28) {
                                            Object[] objArr = new Object[3];
                                            objArr[i14] = Integer.valueOf(i28);
                                            objArr[1] = Integer.valueOf(strArrSplit3.length);
                                            objArr[i16] = strF3;
                                            p.g("SsaStyle", g0.m("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", objArr));
                                        } else {
                                            try {
                                                String strTrim = strArrSplit3[aVar.f6494a].trim();
                                                int i29 = aVar.f6495b;
                                                int iA = i29 != -1 ? c.a(strArrSplit3[i29].trim()) : -1;
                                                int i30 = aVar.f6496c;
                                                Integer numC = i30 != -1 ? c.c(strArrSplit3[i30].trim()) : null;
                                                int i31 = aVar.f6497d;
                                                Integer numC2 = i31 != -1 ? c.c(strArrSplit3[i31].trim()) : null;
                                                int i32 = aVar.f6498e;
                                                if (i32 != -1) {
                                                    String strTrim2 = strArrSplit3[i32].trim();
                                                    try {
                                                        f10 = Float.parseFloat(strTrim2);
                                                    } catch (NumberFormatException e10) {
                                                        p.h("SsaStyle", "Failed to parse font size: '" + strTrim2 + "'", e10);
                                                        f10 = -3.4028235E38f;
                                                    }
                                                } else {
                                                    f10 = -3.4028235E38f;
                                                }
                                                float f11 = f10;
                                                int i33 = aVar.f6499f;
                                                boolean z10 = i33 != -1 && c.b(strArrSplit3[i33].trim());
                                                int i34 = aVar.f6500g;
                                                boolean z11 = i34 != -1 && c.b(strArrSplit3[i34].trim());
                                                int i35 = aVar.f6501h;
                                                boolean z12 = i35 != -1 && c.b(strArrSplit3[i35].trim());
                                                int i36 = aVar.f6502i;
                                                boolean z13 = i36 != -1 && c.b(strArrSplit3[i36].trim());
                                                int i37 = aVar.f6503j;
                                                if (i37 != -1) {
                                                    String strTrim3 = strArrSplit3[i37].trim();
                                                    try {
                                                        int i38 = Integer.parseInt(strTrim3.trim());
                                                        if (i38 == 1 || i38 == 3) {
                                                            i11 = i38;
                                                        } else {
                                                            p.g("SsaStyle", "Ignoring unknown BorderStyle: " + strTrim3);
                                                            i11 = -1;
                                                        }
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                } else {
                                                    i11 = -1;
                                                }
                                                cVar = new c(strTrim, iA, numC, numC2, f11, z10, z11, z12, z13, i11);
                                            } catch (RuntimeException e11) {
                                                p.h("SsaStyle", "Skipping malformed 'Style:' line: '" + strF3 + "'", e11);
                                                cVar = null;
                                            }
                                            if (cVar != null) {
                                                linkedHashMap.put(cVar.f6484a, cVar);
                                            }
                                        }
                                        cVar = null;
                                        if (cVar != null) {
                                            linkedHashMap.put(cVar.f6484a, cVar);
                                        }
                                    }
                                }
                                i16 = 2;
                                i13 = 91;
                                i14 = 0;
                            }
                        }
                    }
                }
                this.f6476o = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(strF)) {
                p.e("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strF)) {
                return;
            }
        }
    }
}
