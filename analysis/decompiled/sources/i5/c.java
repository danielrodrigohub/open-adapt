package i5;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import m5.p;
import m5.w;

/* JADX INFO: compiled from: WebvttCssParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f8762c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f8763d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f8764a = new w();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f8765b = new StringBuilder();

    public static String b(w wVar, StringBuilder sb2) {
        boolean z10 = false;
        sb2.setLength(0);
        int i10 = wVar.f10476b;
        int i11 = wVar.f10477c;
        while (i10 < i11 && !z10) {
            char c10 = (char) wVar.f10475a[i10];
            if ((c10 < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !((c10 >= '0' && c10 <= '9') || c10 == '#' || c10 == '-' || c10 == '.' || c10 == '_'))) {
                z10 = true;
            } else {
                i10++;
                sb2.append(c10);
            }
        }
        wVar.E(i10 - wVar.f10476b);
        return sb2.toString();
    }

    public static String c(w wVar, StringBuilder sb2) {
        d(wVar);
        if (wVar.f10477c - wVar.f10476b == 0) {
            return null;
        }
        String strB = b(wVar, sb2);
        if (!"".equals(strB)) {
            return strB;
        }
        StringBuilder sbC = a0.b.c("");
        sbC.append((char) wVar.t());
        return sbC.toString();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0063  */
    public static void d(w wVar) {
        boolean z10;
        boolean z11;
        while (true) {
            boolean z12 = true;
            while (true) {
                int i10 = wVar.f10477c;
                int i11 = wVar.f10476b;
                if (i10 - i11 > 0 && z12) {
                    char c10 = (char) wVar.f10475a[i11];
                    if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
                        wVar.E(1);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        break;
                    }
                    int i12 = wVar.f10476b;
                    int i13 = wVar.f10477c;
                    byte[] bArr = wVar.f10475a;
                    if (i12 + 2 <= i13) {
                        int i14 = i12 + 1;
                        if (bArr[i12] == 47) {
                            int i15 = i14 + 1;
                            if (bArr[i14] == 42) {
                                while (true) {
                                    int i16 = i15 + 1;
                                    if (i16 >= i13) {
                                        break;
                                    }
                                    if (((char) bArr[i15]) == '*' && ((char) bArr[i16]) == '/') {
                                        i13 = i16 + 1;
                                        i15 = i13;
                                    } else {
                                        i15 = i16;
                                    }
                                }
                                wVar.E(i13 - wVar.f10476b);
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                        } else {
                            z11 = false;
                        }
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        break;
                    } else {
                        z12 = false;
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:102:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:104:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:105:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:107:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:110:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:112:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:113:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:115:0x0205  */
    /* JADX WARN: Code duplicated, block: B:121:0x0218  */
    /* JADX WARN: Code duplicated, block: B:123:0x021d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0225  */
    /* JADX WARN: Code duplicated, block: B:127:0x022d  */
    /* JADX WARN: Code duplicated, block: B:128:0x0231  */
    /* JADX WARN: Code duplicated, block: B:130:0x0239  */
    /* JADX WARN: Code duplicated, block: B:131:0x0241  */
    /* JADX WARN: Code duplicated, block: B:133:0x0249  */
    /* JADX WARN: Code duplicated, block: B:135:0x0251  */
    /* JADX WARN: Code duplicated, block: B:136:0x0255  */
    /* JADX WARN: Code duplicated, block: B:138:0x025d  */
    /* JADX WARN: Code duplicated, block: B:140:0x0265  */
    /* JADX WARN: Code duplicated, block: B:141:0x0269  */
    /* JADX WARN: Code duplicated, block: B:143:0x0271  */
    /* JADX WARN: Code duplicated, block: B:145:0x0281  */
    /* JADX WARN: Code duplicated, block: B:146:0x029d  */
    /* JADX WARN: Code duplicated, block: B:148:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:149:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:152:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:153:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:156:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:157:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:160:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:164:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:165:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:166:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:178:0x02d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x003d  */
    /* JADX WARN: Instruction removed from duplicated block: B:145:0x0281, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<d> a(w wVar) {
        String strTrim;
        String string;
        Matcher matcher;
        String strGroup;
        boolean z10;
        int i10 = 0;
        this.f8765b.setLength(0);
        int i11 = wVar.f10476b;
        while (!TextUtils.isEmpty(wVar.f())) {
        }
        this.f8764a.B(wVar.f10475a, wVar.f10476b);
        this.f8764a.D(i11);
        ArrayList arrayList = new ArrayList();
        while (true) {
            w wVar2 = this.f8764a;
            StringBuilder sb2 = this.f8765b;
            d(wVar2);
            if (wVar2.f10477c - wVar2.f10476b >= 5 && "::cue".equals(wVar2.q(5))) {
                int i12 = wVar2.f10476b;
                String strC = c(wVar2, sb2);
                if (strC == null) {
                    strTrim = null;
                } else if ("{".equals(strC)) {
                    wVar2.D(i12);
                    strTrim = "";
                } else {
                    if ("(".equals(strC)) {
                        int i13 = wVar2.f10476b;
                        int i14 = wVar2.f10477c;
                        int i15 = i10;
                        while (i13 < i14 && i15 == 0) {
                            int i16 = i13 + 1;
                            i15 = ((char) wVar2.f10475a[i13]) == ')' ? 1 : i10;
                            i13 = i16;
                        }
                        strTrim = wVar2.q((i13 - 1) - wVar2.f10476b).trim();
                    } else {
                        strTrim = null;
                    }
                    if (!")".equals(c(wVar2, sb2))) {
                        strTrim = null;
                    }
                }
            } else {
                strTrim = null;
            }
            if (strTrim == null || !"{".equals(c(this.f8764a, this.f8765b))) {
                return arrayList;
            }
            d dVar = new d();
            if (!"".equals(strTrim)) {
                int iIndexOf = strTrim.indexOf(91);
                if (iIndexOf != -1) {
                    Matcher matcher2 = f8762c.matcher(strTrim.substring(iIndexOf));
                    if (matcher2.matches()) {
                        String strGroup2 = matcher2.group(1);
                        Objects.requireNonNull(strGroup2);
                        dVar.f8769d = strGroup2;
                    }
                    strTrim = strTrim.substring(i10, iIndexOf);
                }
                int i17 = g0.f10384a;
                String[] strArrSplit = strTrim.split("\\.", -1);
                String str = strArrSplit[i10];
                int iIndexOf2 = str.indexOf(35);
                if (iIndexOf2 != -1) {
                    dVar.f8767b = str.substring(i10, iIndexOf2);
                    dVar.f8766a = str.substring(iIndexOf2 + 1);
                } else {
                    dVar.f8767b = str;
                }
                if (strArrSplit.length > 1) {
                    int length = strArrSplit.length;
                    m5.a.a(length <= strArrSplit.length ? 1 : i10);
                    dVar.f8768c = new HashSet(Arrays.asList((String[]) Arrays.copyOfRange(strArrSplit, 1, length)));
                }
            }
            int i18 = i10;
            String str2 = null;
            while (i18 == 0) {
                w wVar3 = this.f8764a;
                int i19 = wVar3.f10476b;
                String strC2 = c(wVar3, this.f8765b);
                int i20 = (strC2 == null || "}".equals(strC2)) ? 1 : i10;
                if (i20 == 0) {
                    this.f8764a.D(i19);
                    w wVar4 = this.f8764a;
                    StringBuilder sb3 = this.f8765b;
                    d(wVar4);
                    String strB = b(wVar4, sb3);
                    if (!"".equals(strB) && ":".equals(c(wVar4, sb3))) {
                        d(wVar4);
                        StringBuilder sb4 = new StringBuilder();
                        int i21 = i10;
                        while (true) {
                            if (i21 == 0) {
                                int i22 = wVar4.f10476b;
                                String strC3 = c(wVar4, sb3);
                                if (strC3 == null) {
                                    string = null;
                                } else if ("}".equals(strC3) || ";".equals(strC3)) {
                                    wVar4.D(i22);
                                    i21 = 1;
                                } else {
                                    sb4.append(strC3);
                                }
                            } else {
                                string = sb4.toString();
                            }
                        }
                        if (string != null && !"".equals(string)) {
                            int i23 = wVar4.f10476b;
                            String strC4 = c(wVar4, sb3);
                            if (";".equals(strC4)) {
                                if ("color".equals(strB)) {
                                    dVar.f8771f = m5.d.a(string, true);
                                    dVar.f8772g = true;
                                } else if ("background-color".equals(strB)) {
                                    dVar.f8773h = m5.d.a(string, true);
                                    dVar.f8774i = true;
                                } else if ("ruby-position".equals(strB)) {
                                    if ("over".equals(string)) {
                                        dVar.f8781p = 1;
                                    } else if ("under".equals(string)) {
                                        dVar.f8781p = 2;
                                    }
                                } else if ("text-combine-upright".equals(strB)) {
                                    if ("all".equals(string)) {
                                        z10 = true;
                                    } else {
                                        z10 = true;
                                    }
                                    dVar.f8782q = z10;
                                } else if ("text-decoration".equals(strB)) {
                                    if ("underline".equals(string)) {
                                        dVar.f8776k = 1;
                                    }
                                } else if ("font-family".equals(strB)) {
                                    dVar.f8770e = androidx.activity.k.s(string);
                                } else if ("font-weight".equals(strB)) {
                                    if ("bold".equals(string)) {
                                        dVar.f8777l = 1;
                                    }
                                } else if ("font-style".equals(strB)) {
                                    if ("italic".equals(string)) {
                                        dVar.f8778m = 1;
                                    }
                                } else if ("font-size".equals(strB)) {
                                    matcher = f8763d.matcher(androidx.activity.k.s(string));
                                    if (matcher.matches()) {
                                        strGroup = matcher.group(2);
                                        Objects.requireNonNull(strGroup);
                                        switch (strGroup) {
                                            case "%":
                                                dVar.f8779n = 3;
                                                break;
                                            case "em":
                                                dVar.f8779n = 2;
                                                break;
                                            case "px":
                                                dVar.f8779n = 1;
                                                break;
                                            default:
                                                throw new IllegalStateException();
                                        }
                                        String strGroup3 = matcher.group(1);
                                        Objects.requireNonNull(strGroup3);
                                        dVar.f8780o = Float.parseFloat(strGroup3);
                                    } else {
                                        p.g("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                    }
                                } else {
                                    continue;
                                }
                            } else if ("}".equals(strC4)) {
                                wVar4.D(i23);
                                if ("color".equals(strB)) {
                                    dVar.f8771f = m5.d.a(string, true);
                                    dVar.f8772g = true;
                                } else if ("background-color".equals(strB)) {
                                    dVar.f8773h = m5.d.a(string, true);
                                    dVar.f8774i = true;
                                } else if ("ruby-position".equals(strB)) {
                                    if ("over".equals(string)) {
                                        dVar.f8781p = 1;
                                    } else if ("under".equals(string)) {
                                        dVar.f8781p = 2;
                                    }
                                } else if ("text-combine-upright".equals(strB)) {
                                    if ("all".equals(string) || string.startsWith("digits")) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    dVar.f8782q = z10;
                                } else if ("text-decoration".equals(strB)) {
                                    if ("underline".equals(string)) {
                                        dVar.f8776k = 1;
                                    }
                                } else if ("font-family".equals(strB)) {
                                    dVar.f8770e = androidx.activity.k.s(string);
                                } else if ("font-weight".equals(strB)) {
                                    if ("bold".equals(string)) {
                                        dVar.f8777l = 1;
                                    }
                                } else if ("font-style".equals(strB)) {
                                    if ("italic".equals(string)) {
                                        dVar.f8778m = 1;
                                    }
                                } else if ("font-size".equals(strB)) {
                                    matcher = f8763d.matcher(androidx.activity.k.s(string));
                                    if (matcher.matches()) {
                                        p.g("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                    } else {
                                        strGroup = matcher.group(2);
                                        Objects.requireNonNull(strGroup);
                                        switch (strGroup) {
                                            case 37:
                                                if (strGroup.equals("%")) {
                                                }
                                                break;
                                            case 3240:
                                                if (strGroup.equals("em")) {
                                                }
                                                break;
                                            case 3592:
                                                if (strGroup.equals("px")) {
                                                }
                                                break;
                                            default:
                                                break;
                                        }
                                        /*  JADX ERROR: Method code generation error
                                            java.lang.NullPointerException: Switch insn not found in header
                                            	at java.base/java.util.Objects.requireNonNull(Objects.java:259)
                                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                            */
                                        /*
                                            Method dump skipped, instruction units count: 792
                                            To view this dump add '--comments-level debug' option
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: i5.c.a(m5.w):java.util.List");
                                    }
                                }
