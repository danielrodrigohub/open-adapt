package f5;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.p;
import m5.w;
import z4.f;
import z4.g;

/* JADX INFO: compiled from: SubripDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Pattern f7062o = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Pattern f7063p = Pattern.compile("\\{\\\\.*?\\}");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final StringBuilder f7064m = new StringBuilder();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList<String> f7065n = new ArrayList<>();

    public static float l(int i10) {
        if (i10 == 0) {
            return 0.08f;
        }
        if (i10 == 1) {
            return 0.5f;
        }
        if (i10 == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    public static long m(Matcher matcher, int i10) {
        String strGroup = matcher.group(i10 + 1);
        long j10 = strGroup != null ? Long.parseLong(strGroup) * 60 * 60 * 1000 : 0L;
        String strGroup2 = matcher.group(i10 + 2);
        Objects.requireNonNull(strGroup2);
        long j11 = (Long.parseLong(strGroup2) * 60 * 1000) + j10;
        String strGroup3 = matcher.group(i10 + 3);
        Objects.requireNonNull(strGroup3);
        long j12 = (Long.parseLong(strGroup3) * 1000) + j11;
        String strGroup4 = matcher.group(i10 + 4);
        if (strGroup4 != null) {
            j12 += Long.parseLong(strGroup4);
        }
        return j12 * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:102:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:104:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:105:0x01da  */
    /* JADX WARN: Code duplicated, block: B:107:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:108:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:110:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:113:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:114:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:116:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:117:0x01fd A[PHI: r16
      0x01fd: PHI (r16v1 byte) = 
      (r16v0 byte)
      (r16v0 byte)
      (r16v2 byte)
      (r16v0 byte)
      (r16v3 byte)
      (r16v0 byte)
      (r16v4 byte)
      (r16v0 byte)
      (r16v5 byte)
      (r16v0 byte)
      (r16v0 byte)
      (r16v0 byte)
      (r16v7 byte)
      (r16v0 byte)
      (r16v8 byte)
      (r16v0 byte)
      (r16v9 byte)
     binds: [B:88:0x01a9, B:115:0x01f9, B:116:0x01fb, B:112:0x01f0, B:113:0x01f2, B:109:0x01e7, B:110:0x01e9, B:106:0x01de, B:107:0x01e0, B:103:0x01d5, B:100:0x01cc, B:97:0x01c3, B:98:0x01c5, B:94:0x01ba, B:95:0x01bc, B:91:0x01b1, B:92:0x01b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:131:0x0215  */
    /* JADX WARN: Code duplicated, block: B:151:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:41:0x011f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0141  */
    /* JADX WARN: Code duplicated, block: B:46:0x0147  */
    /* JADX WARN: Code duplicated, block: B:47:0x0149  */
    /* JADX WARN: Code duplicated, block: B:49:0x014f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0152  */
    /* JADX WARN: Code duplicated, block: B:52:0x0158  */
    /* JADX WARN: Code duplicated, block: B:53:0x015a  */
    /* JADX WARN: Code duplicated, block: B:55:0x0160  */
    /* JADX WARN: Code duplicated, block: B:56:0x0162  */
    /* JADX WARN: Code duplicated, block: B:58:0x0168  */
    /* JADX WARN: Code duplicated, block: B:59:0x016b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0171  */
    /* JADX WARN: Code duplicated, block: B:62:0x0173  */
    /* JADX WARN: Code duplicated, block: B:64:0x0179  */
    /* JADX WARN: Code duplicated, block: B:65:0x017b  */
    /* JADX WARN: Code duplicated, block: B:67:0x0181  */
    /* JADX WARN: Code duplicated, block: B:68:0x0183  */
    /* JADX WARN: Code duplicated, block: B:70:0x0189  */
    /* JADX WARN: Code duplicated, block: B:71:0x018b  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:92:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:95:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:96:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:98:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:99:0x01c8  */
    @Override // z4.f
    public final g k(byte[] bArr, int i10, boolean z10) {
        byte b10;
        byte b11;
        int i11;
        byte b12;
        int i12;
        int i13;
        z4.a aVar;
        a aVar2 = this;
        ArrayList arrayList = new ArrayList();
        long[] jArrCopyOf = new long[32];
        w wVar = new w(bArr, i10);
        int i14 = 0;
        int i15 = 0;
        while (true) {
            String strF = wVar.f();
            if (strF != null) {
                if (strF.length() != 0) {
                    try {
                        Integer.parseInt(strF);
                        String strF2 = wVar.f();
                        if (strF2 == null) {
                            p.g("SubripDecoder", "Unexpected end");
                        } else {
                            Matcher matcher = f7062o.matcher(strF2);
                            if (matcher.matches()) {
                                long jM = m(matcher, 1);
                                if (i15 == jArrCopyOf.length) {
                                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i15 * 2);
                                }
                                int i16 = i15 + 1;
                                jArrCopyOf[i15] = jM;
                                long jM2 = m(matcher, 6);
                                if (i16 == jArrCopyOf.length) {
                                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i16 * 2);
                                }
                                i15 = i16 + 1;
                                jArrCopyOf[i16] = jM2;
                                aVar2.f7064m.setLength(i14);
                                aVar2.f7065n.clear();
                                String strF3 = wVar.f();
                                while (!TextUtils.isEmpty(strF3)) {
                                    if (aVar2.f7064m.length() > 0) {
                                        aVar2.f7064m.append("<br>");
                                    }
                                    StringBuilder sb2 = aVar2.f7064m;
                                    ArrayList<String> arrayList2 = aVar2.f7065n;
                                    String strTrim = strF3.trim();
                                    StringBuilder sb3 = new StringBuilder(strTrim);
                                    Matcher matcher2 = f7063p.matcher(strTrim);
                                    while (matcher2.find()) {
                                        String strGroup = matcher2.group();
                                        arrayList2.add(strGroup);
                                        int iStart = matcher2.start() - i14;
                                        int length = strGroup.length();
                                        sb3.replace(iStart, iStart + length, "");
                                        i14 += length;
                                    }
                                    sb2.append(sb3.toString());
                                    strF3 = wVar.f();
                                    i14 = 0;
                                }
                                Spanned spannedFromHtml = Html.fromHtml(aVar2.f7064m.toString());
                                String str = null;
                                for (int i17 = 0; i17 < aVar2.f7065n.size(); i17++) {
                                    String str2 = aVar2.f7065n.get(i17);
                                    if (str2.matches("\\{\\\\an[1-9]\\}")) {
                                        str = str2;
                                        if (str == null) {
                                            aVar = new z4.a(spannedFromHtml, null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                        } else {
                                            b10 = -1;
                                            switch (str) {
                                                case "{\an1}":
                                                    b11 = 0;
                                                    break;
                                                case "{\an2}":
                                                    b11 = 6;
                                                    break;
                                                case "{\an3}":
                                                    b11 = 3;
                                                    break;
                                                case "{\an4}":
                                                    b11 = 1;
                                                    break;
                                                case "{\an5}":
                                                    b11 = 7;
                                                    break;
                                                case "{\an6}":
                                                    b11 = 4;
                                                    break;
                                                case "{\an7}":
                                                    b11 = 2;
                                                    break;
                                                case "{\an8}":
                                                    b11 = 8;
                                                    break;
                                                case "{\an9}":
                                                    b11 = 5;
                                                    break;
                                                default:
                                                    b11 = -1;
                                                    break;
                                            }
                                            if (b11 != 0 || b11 == 1 || b11 == 2) {
                                                i11 = 0;
                                            } else {
                                                i11 = (b11 == 3 || b11 == 4 || b11 == 5) ? 2 : 1;
                                            }
                                            switch (str) {
                                                case "{\an1}":
                                                    b10 = 0;
                                                case "{\an2}":
                                                    b10 = 1;
                                                case "{\an3}":
                                                    b10 = 2;
                                                case "{\an4}":
                                                    b10 = 6;
                                                case "{\an5}":
                                                    b12 = 7;
                                                    break;
                                                case "{\an6}":
                                                    b12 = 8;
                                                    break;
                                                case "{\an7}":
                                                    b10 = 3;
                                                case "{\an8}":
                                                    b10 = 4;
                                                case "{\an9}":
                                                    b10 = 5;
                                                default:
                                                    if (str.equals("{\\an1}")) {
                                                        b10 = 0;
                                                    }
                                                    b12 = b10;
                                                    break;
                                            }
                                            if (b12 != 0 || b12 == 1) {
                                                i12 = 2;
                                            } else {
                                                i12 = 2;
                                                if (b12 != 2) {
                                                    i13 = (b12 == 3 || b12 == 4 || b12 == 5) ? 0 : 1;
                                                }
                                                aVar = new z4.a(spannedFromHtml, null, null, null, l(i13), 0, i13, l(i11), i11, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                            }
                                            i13 = i12;
                                            aVar = new z4.a(spannedFromHtml, null, null, null, l(i13), 0, i13, l(i11), i11, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                        }
                                        arrayList.add(aVar);
                                        arrayList.add(z4.a.f19292y);
                                        jArrCopyOf = jArrCopyOf;
                                    }
                                }
                                if (str == null) {
                                    aVar = new z4.a(spannedFromHtml, null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                } else {
                                    b10 = -1;
                                    switch (str) {
                                        case -685620710:
                                            if (!str.equals("{\\an1}")) {
                                                b11 = 0;
                                            }
                                            break;
                                        case -685620679:
                                            if (!str.equals("{\\an2}")) {
                                                b11 = 6;
                                            }
                                            break;
                                        case -685620648:
                                            if (!str.equals("{\\an3}")) {
                                                b11 = 3;
                                            }
                                            break;
                                        case -685620617:
                                            if (!str.equals("{\\an4}")) {
                                                b11 = 1;
                                            }
                                            break;
                                        case -685620586:
                                            if (!str.equals("{\\an5}")) {
                                                b11 = 7;
                                            }
                                            break;
                                        case -685620555:
                                            if (!str.equals("{\\an6}")) {
                                                b11 = 4;
                                            }
                                            break;
                                        case -685620524:
                                            if (!str.equals("{\\an7}")) {
                                                b11 = 2;
                                            }
                                            break;
                                        case -685620493:
                                            if (!str.equals("{\\an8}")) {
                                                b11 = 8;
                                            }
                                            break;
                                        case -685620462:
                                            if (!str.equals("{\\an9}")) {
                                                b11 = 5;
                                            }
                                            break;
                                        default:
                                            b11 = -1;
                                            break;
                                    }
                                    if (b11 != 0) {
                                        i11 = 0;
                                    } else {
                                        i11 = 0;
                                    }
                                    switch (str) {
                                        case -685620710:
                                            if (str.equals("{\\an1}")) {
                                                b10 = 0;
                                            }
                                            b12 = b10;
                                            break;
                                        case -685620679:
                                            if (str.equals("{\\an2}")) {
                                                b10 = 1;
                                            }
                                            b12 = b10;
                                            break;
                                        case -685620648:
                                            if (str.equals("{\\an3}")) {
                                                b10 = 2;
                                            }
                                            b12 = b10;
                                            break;
                                        case -685620617:
                                            if (str.equals("{\\an4}")) {
                                                b10 = 6;
                                            }
                                            b12 = b10;
                                            break;
                                        case -685620586:
                                            if (!str.equals("{\\an5}")) {
                                                b12 = 7;
                                            } else {
                                                b12 = b10;
                                            }
                                            break;
                                        case -685620555:
                                            if (!str.equals("{\\an6}")) {
                                                b12 = 8;
                                            } else {
                                                b12 = b10;
                                            }
                                            break;
                                        case -685620524:
                                            if (str.equals("{\\an7}")) {
                                                b10 = 3;
                                            }
                                            b12 = b10;
                                            break;
                                        case -685620493:
                                            if (str.equals("{\\an8}")) {
                                                b10 = 4;
                                            }
                                            b12 = b10;
                                            break;
                                        case -685620462:
                                            if (str.equals("{\\an9}")) {
                                                b10 = 5;
                                            }
                                            b12 = b10;
                                            break;
                                        default:
                                            b12 = b10;
                                            break;
                                    }
                                    if (b12 != 0) {
                                        i12 = 2;
                                        i13 = i12;
                                    } else {
                                        i12 = 2;
                                        i13 = i12;
                                    }
                                    aVar = new z4.a(spannedFromHtml, null, null, null, l(i13), 0, i13, l(i11), i11, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                }
                                arrayList.add(aVar);
                                arrayList.add(z4.a.f19292y);
                                jArrCopyOf = jArrCopyOf;
                            } else {
                                wVar = wVar;
                                a4.g.f("Skipping invalid timing: ", strF2, "SubripDecoder");
                            }
                            i14 = 0;
                            aVar2 = this;
                            wVar = wVar;
                        }
                    } catch (NumberFormatException unused) {
                        wVar = wVar;
                        a4.g.f("Skipping invalid index: ", strF, "SubripDecoder");
                    }
                }
            }
        }
        return new b((z4.a[]) arrayList.toArray(new z4.a[i14]), Arrays.copyOf(jArrCopyOf, i15));
    }
}
